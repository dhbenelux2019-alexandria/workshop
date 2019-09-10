#!/usr/bin/env python
# script to transform XML file to a HTML file using an XSLT file
# created by Ronald

import argparse
import io

from lxml import etree

# TODO: "process some integers" should be changed into something meaningful

parser = argparse.ArgumentParser(description='Process some integers.')
parser.add_argument("xml_file", help="The XML file to parse and transform") # required=True
parser.add_argument("xslt_file", help="The XSLT to transform the XML with")
parser.add_argument("html_file", help="The file were the result of the transformation is stored")
args = parser.parse_args()

# print(args.xml_file)

# read and parse the xslt file
xslt_root = etree.parse(args.xslt_file)

# treat it as an XSLT file
transform = etree.XSLT(xslt_root)

# read and parse the xml file
doc = etree.parse(args.xml_file)

# do the transformation
result = transform(doc)

# and write HTML file
result.write_output(args.html_file)
