#!/bin/bash

if [[ $# -lt 1 ]]; then
    echo "Usage: $0 <version-number>"
    echo "Example: $0 1.0"
    exit 1
fi

ZIP_NAME="freshview-$1.zip"
OUTPUT_DIR="dist"

mkdir -p "$OUTPUT_DIR"
zip -r "$OUTPUT_DIR/$ZIP_NAME" assets/* css/* html/* img/* js/* manifest.json
