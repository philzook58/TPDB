#!/bin/bash

# Navigate to the root directory where the XML files are located.


# Find all XML files in the current directory and its subdirectories,
# and apply the XSLT transformation to each file.
find . -type f -name "*.xml" -exec sh -c '
  for file do
    # Use the xsltproc tool to apply the XSL transformation.
    # The output file will have the same name but with a .trs extension.
    timeout 1s xsltproc xml/xtc2tpdb.xsl "$file" > "${file%.xml}.trs"
  done
' sh {} +
