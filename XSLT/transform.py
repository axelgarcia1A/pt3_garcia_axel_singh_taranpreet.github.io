import os
from lxml import etree

# Paths for input files
xml_path = "/media/axel.garcia.7e7/AXEL GARCIA/ASiXc/2n/M4/UF2/Practica Evaluativa 2 AGH-TSK/XSLT/recetas.xml"
xsl_path = "/media/axel.garcia.7e7/AXEL GARCIA/ASiXc/2n/M4/UF2/Practica Evaluativa 2 AGH-TSK/XSLT/recetas.xsl"
output_dir = "/media/axel.garcia.7e7/AXEL GARCIA/ASiXc/2n/M4/UF2/Practica Evaluativa 2 AGH-TSK/recetas2"

# Create output directory if it doesn't exist
os.makedirs(output_dir, exist_ok=True)

# Load XML and XSL
xml_tree = etree.parse(xml_path)
xsl_tree = etree.parse(xsl_path)

# Create the transformer
transformer = etree.XSLT(xsl_tree)

# Apply transformation to each <recepta> and save individual files
receptes = xml_tree.xpath("//recepta")
file_paths = []

for i, recepta in enumerate(receptes, start=1):
    # Wrap the single <recepta> in a <receptes> root for transformation
    receptes_root = etree.Element("receptes")
    receptes_root.append(recepta)
    single_recepta_tree = etree.ElementTree(receptes_root)
    
    # Transform
    result_tree = transformer(single_recepta_tree)
    
    # Create file name and save the output
    file_name = f"receta_{i:1d}.html"
    file_path = os.path.join(output_dir, file_name)
    with open(file_path, "wb") as f:
        f.write(etree.tostring(result_tree, pretty_print=True, encoding="UTF-8"))
    file_paths.append(file_path)

file_paths
