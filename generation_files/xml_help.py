import dataclasses
import os.path
import re
from urllib.error import HTTPError

import wget
from bs4 import BeautifulSoup


@dataclasses.dataclass
class XMLDescription:
    class_description: str
    methods_descriptions:dict
    property_descriptions:dict

xml_class: XMLDescription = XMLDescription("", {}, {})

def format_to_markdown(richtext:str)->str:
    replaced_bold = richtext.replace("[b]", "**").replace("[/b]", "**")
    replaced_italic = replaced_bold.replace("[i]", "_").replace("[/i]", "_")
    replaced_code = replaced_italic.replace("[code]", "`").replace("[/code]", "`")
    replaced_gdscript = re.sub(r'\[gdscript\]|\[/gdscript\]',
                               lambda m: '```gdscript' if m.group() == '[gdscript]' else '```',
                               replaced_code)
    replaced_csharp = re.sub(r'\[csharp\].*?\[/csharp\]', '', replaced_gdscript, flags=re.DOTALL)
    replaced_codeblocs = replaced_csharp.replace("[codeblocks]", "").replace("[/codeblocks]", "")
    replaced_codeblock = replaced_codeblocs.replace("[codeblock]", "```gdscript").replace("[/codeblock]", "```")
    replaced_params = re.sub(r'\[param ([^\]]+)\]', r'`\1`', replaced_codeblock)
    replaced_member = re.sub(r'\[member ([^\]]+)\]', r'`\1`', replaced_params)
    replaced_constant = re.sub(r'\[constnat ([^\]]+)\]', r'`\1`', replaced_member)
    replaced_methods = re.sub(r'\[method ([^\]]+)\]', r'`\1`', replaced_constant)
    replaced_rest = replaced_methods.replace("[", "`").replace("]", "`")
    return replaced_rest
def parse_xml(soup:BeautifulSoup) -> XMLDescription:
    # Load the XML content
    class_description:str = ""
    methods_descriptions:dict={}
    property_descriptions:dict={}

    # Find all class elements
    for class_tag in soup.find_all("class"):
        class_name = class_tag.get("name")
        description = class_tag.find("description")
        print(f"\nClass: {class_name}")
        class_description = format_to_markdown(description.get_text())

        # Get all properties
        for prop in class_tag.find_all("property"):
            prop_name = prop.get("name")
            prop_type = prop.get("type")
            prop_description = prop.find("description").get_text()
            property_descriptions[prop_name] = format_to_markdown(prop_description)

        # Get all methods
        for method in class_tag.find_all("method"):
            method_name = method.get("name")
            return_type = method.get("return")
            method_description = method.find("description").get_text()
            methods_descriptions[method_name] = format_to_markdown(method_description)

    return XMLDescription(class_description, methods_descriptions, property_descriptions)

def init_class(classname):
    global xml_class
    if not os.path.isdir("doc"):
        os.mkdir(f"doc")
    if not os.path.isfile(f"doc/{classname}.xml"):
        try:
            url = f"https://raw.githubusercontent.com/godotengine/godot/master/doc/classes/{classname}.xml"
            filename = wget.download(url, out = f"doc/{classname}.xml")
            print(f"Downloaded {filename}")
        except HTTPError as e:
            print(f"Not able to download {classname}.xml. Skipping...")
            xml_class = XMLDescription("", {}, {})
            return
    with open(f"doc/{classname}.xml", "r", encoding="utf-8") as file:
        content = file.read()

    # Parse with BeautifulSoup
    soup = BeautifulSoup(content, "xml")
    xml_class = parse_xml(soup)

def get_class_description():
    return xml_class.class_description

def get_method_description(methodname:str)->str:
    return xml_class.methods_descriptions.get(methodname, "")

def get_property_description(propertyname:str)->str:
    return xml_class.property_descriptions.get(propertyname, "")

def example():
    """
				Returns a copy of this bounding box extended on all sides by the given amount `by`. A negative amount shrinks the box instead.

				```gdscript
				var a = AABB(Vector3(4, 4, 4), Vector3(8, 8, 8)).grow(4)
				print(a.position) # Prints (0.0, 0.0, 0.0)
				print(a.size)     # Prints (16.0, 16.0, 16.0)

				var b = AABB(Vector3(0, 0, 0), Vector3(8, 4, 2)).grow(2)
				print(b.position) # Prints (-2.0, -2.0, -2.0)
				print(b.size)     # Prints (12.0, 8.0, 6.0)
				```
    """

if __name__ == "__main__":
    init_class("AABB")
    print("XML:", xml_class)