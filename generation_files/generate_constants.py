import json
import os
from pathlib import Path


def format_value(value, typ=None):
    """
    Format the value from the JSON for Python code using Godot-style constructors:
    - Vector2.new2(x, y)
    - Vector3.new3(x, y, z)
    - Transform2D.new6(a, b, c, d, e, f)
    Falls back to string or list representation if unknown.
    """
    if isinstance(value, list):
        if typ == "Vector2" and len(value) == 2:
            return f"Vector2.new2({value[0]}, {value[1]})"
        elif typ == "Vector3" and len(value) == 3:
            return f"Vector3.new3({value[0]}, {value[1]}, {value[2]})"
        elif typ == "Transform2D" and len(value) == 6:
            return f"Transform2D.new6({', '.join(str(v) for v in value)})"
        else:
            return str(value)
    elif isinstance(value, str):
        # Try to parse string that looks like a list
        try:
            val = json.loads(value)
            return format_value(val, typ)
        except (json.JSONDecodeError, ValueError):
            return f'"{value}"'
    else:
        return str(value)


def generate_constants_classes(json_path):
    """Generate Python constants classes from Godot extension API JSON."""
    try:
        with open(json_path, 'r', encoding='utf-8') as f:
            data = json.load(f)
    except FileNotFoundError:
        raise FileNotFoundError(f"JSON file not found: {json_path}")
    except json.JSONDecodeError as e:
        raise ValueError(f"Invalid JSON in file {json_path}: {e}")

    # Extract constants from classes in the API
    grouped = {}

    # Look for classes in the API data
    classes = data.get('classes', []) + data.get("builtin_classes", [])
    print([cls['name'] for cls in classes])
    for class_info in classes:
        class_name = class_info.get('name', 'Unknown')
        constants = class_info.get('constants', [])

        if not constants:
            continue

        # Create a constants class for this Godot class
        const_class_name = f"{class_name}"
        if const_class_name not in grouped:
            grouped[const_class_name] = []

        for const in constants:
            name = const.get('name')
            value = const.get('value')

            if not name or value is None:
                continue

            grouped[const_class_name].append((name, value))

    global_constants = data.get('global_constants', [])
    if global_constants:
        grouped['GlobalConstants'] = []
        for const in global_constants:
            name = const.get('name')
            value = const.get('value')

            if not name or value is None:
                continue

            grouped['GlobalConstants'].append((name, value))

    # Generate Python classes
    output_lines = [
        "# Auto-generated from godot extension_api.json",
        "import py4godot.constant_helpers as helpers",
        "from py4godot.classes.core import Vector2, Vector3,Vector3i, Transform2D, Vector2i, Vector4i, Vector4, Plane, "
        "Quaternion, Transform3D, Color, Basis, Projection",""
    ]
    for class_name, consts in grouped.items():
        if class_name not in ("Vector2, Vector3,Vector3i, Transform2D, Vector2i, Vector4i, Vector4, Plane, "
            "Quaternion, Transform3D, Color, Basis, Projection"):
            output_lines.append(f"from py4godot.classes.{class_name} import {class_name}")

    for class_name, consts in grouped.items():
        if not consts:
            output_lines.append("    pass")
        else:
            for name, value in consts:
                # For constants, we usually don't need special Vector formatting
                # since they're typically integers, strings, or simple values
                if isinstance(value, str):
                    formatted_value = construct_value(value)
                else:
                    formatted_value = str(value)
                output_lines.append(f"{class_name}.{name} = {formatted_value}")

        output_lines.append("")  # Empty line after each class

    return "\n".join(output_lines)

def construct_value(value):
    split_array = value.split("(")
    type_ = split_array[0]
    values = pythonize_values(split_array[1][:-1].split(","))
    if type_ == "Vector4":
        return f"helpers.ConstantVector4.new3({', '.join(values)})"
    if type_ == "Vector4i":
        return f"helpers.ConstantVector4i.new3({', '.join(values)})"


    if type_ == "Vector3":
        return f"helpers.ConstantVector3.new3({', '.join(values)})"
    if type_ == "Vector3i":
        return f"helpers.ConstantVector3i.new3({', '.join(values)})"
    if type_ == "Color":
        return f"helpers.ConstantColor.new4({', '.join(values)})"
    if type_ == "Vector2":
        return f"helpers.ConstantVector2.new3({', '.join(values)})"
    if type_ == "Vector2i":
        return f"helpers.ConstantVector2i.new3({', '.join(values)})"
    if type_ == "Transform2D":
        return (f"helpers.ConstantTransform2D.new4(Vector2.new3({values[0]}, {values[1]}), "
                f"Vector2.new3({values[2]}, {values[3]}), "
                f"Vector2.new3({values[4]}, {values[5]}))")
    if type_ == "Plane":
        return f"helpers.ConstantPlane.new6({', '.join(values)})"
    if type_ == "Quaternion":
        return f"helpers.ConstantQuaternion.new5({', '.join(values)})"
    if type_ == "Basis":
        return (f"helpers.ConstantBasis.new4(Vector3.new3({values[0]}, {values[1]}, {values[2]}), "
                f"Vector3.new3({values[3]}, {values[4]}, {values[5]}), "
                f"Vector3.new3({values[6]}, {values[7]}, {values[8]}),)")
    if type_ == "Transform3D":
        return (f"helpers.ConstantTransform3D.new3(Vector3.new3({values[0]}, {values[1]}, {values[2]}), "
                f"Vector3.new3({values[3]}, {values[4]}, {values[5]}), "
                f"Vector3.new3({values[6]}, {values[7]}, {values[8]}),"
                f"Vector3.new3({values[9]}, {values[10]}, {values[11]}),)")
    if type_ == "Projection":
        return (f"helpers.ConstantProjection.new3(Vector4.new3({values[0]}, {values[1]}, {values[2]},{values[3]}), "
                f"Vector4.new3({values[4]}, {values[5]}, {values[6]},{values[7]}),"
                f"Vector4.new3({values[8]}, {values[9]}, {values[10]},{values[11]}),"
                f"Vector4.new3({values[12]}, {values[13]}, {values[14]},{values[15]}),)")


    return value

def pythonize_values(values):
    for i in range(len(values)):
        if values[i].strip() == "inf":
            values[i] = "float('inf')"
    return values

def replace_infinite(value:str):
    return value.replace("inf", "float('inf')")

def main():
    """Main function to generate constants.py file."""
    # Use Path for better path handling
    os.chdir("..")
    json_file_path = "py4godot/gdextension-api/extension_api.json"
    output_file_path =  "py4godot/constants.py"

    # Generate the constants
    result = generate_constants_classes(json_file_path)

    # Write the result
    with open(output_file_path, "w", encoding='utf-8') as f:
        f.write(result)

    print(f"constants.py generated successfully at: {output_file_path}")

    return 0


if __name__ == "__main__":
    exit(main())