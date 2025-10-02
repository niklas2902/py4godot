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

def construct_value(value):
    split_array = value.split("(")
    type_ = split_array[0]
    values = pythonize_values(split_array[1][:-1].split(","))
    if type_ == "Vector4":
        return f"Vector4.new3({', '.join(values)})"
    if type_ == "Vector4i":
        return f"Vector4i.new3({', '.join(values)})"


    if type_ == "Vector3":
        return f"Vector3.new3({', '.join(values)})"
    if type_ == "Vector3i":
        return f"Vector3i.new3({', '.join(values)})"
    if type_ == "Color":
        return f"Color.new4({', '.join(values)})"
    if type_ == "Vector2":
        return f"Vector2.new3({', '.join(values)})"
    if type_ == "Vector2i":
        return f"Vector2i.new3({', '.join(values)})"
    if type_ == "Transform2D":
        return (f"Transform2D.new4(Vector2.new3({values[0]}, {values[1]}), "
                f"Vector2.new3({values[2]}, {values[3]}), "
                f"Vector2.new3({values[4]}, {values[5]}))")
    if type_ == "Plane":
        return f"Plane.new6({', '.join(values)})"
    if type_ == "Quaternion":
        return f"Quaternion.new5({', '.join(values)})"
    if type_ == "Basis":
        return (f"Basis.new4(Vector3.new3({values[0]}, {values[1]}, {values[2]}), "
                f"Vector3.new3({values[3]}, {values[4]}, {values[5]}), "
                f"Vector3.new3({values[6]}, {values[7]}, {values[8]}),)")
    if type_ == "Basis":
        return (f"Basis.new4(Vector3.new3({values[0]}, {values[1]}, {values[2]}), "
                f"Vector3.new3({values[3]}, {values[4]}, {values[5]}), "
                f"Vector3.new3({values[6]}, {values[7]}, {values[8]}),)")
    if type_ == "Transform3D":
        return (f"Transform3D.new3(Vector3.new3({values[0]}, {values[1]}, {values[2]}), "
                f"Vector3.new3({values[3]}, {values[4]}, {values[5]}), "
                f"Vector3.new3({values[6]}, {values[7]}, {values[8]}),"
                f"Vector3.new3({values[9]}, {values[10]}, {values[11]}),)")
    if type_ == "Projection":
        return (f"Projection.new3(Vector4.new3({values[0]}, {values[1]}, {values[2]},{values[3]}), "
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


def generate_constants_for_class(class_info):
    grouped = {}

    # Look for classes in the API data
    constants = class_info.get('constants', [])

    if not constants:
        return ""

    output_lines = []

    for const in constants:
        if isinstance(const["value"], str):
            formatted_value = construct_value(const["value"])
        else:
            formatted_value = str(const["value"])
        output_lines.append(f"{class_info['name']}.{const['name']} = {formatted_value}")

        output_lines.append("")  # Empty line after each class

    return "\n".join(output_lines)

def generate_type_hints_constants_for_class(class_info):
    # Look for classes in the API data
    constants = class_info.get('constants', [])

    if not constants:
        return ""

    output_lines = []

    for const in constants:
        if not "type" in const:
            output_lines.append(f"  {const['name']}:typing.ClassVar[int]")
        else:
            output_lines.append(f"  {const['name']}:typing.ClassVar['{const['type']}']")

        output_lines.append("")  # Empty line after each class

    return "\n".join(output_lines)
