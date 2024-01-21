#!/bin/bash

# Loop through all .webp files in the current directory
for file in *.webp; do
    # Check if the file is a regular file
    if [ -f "$file" ]; then
        # Extract the filename without the extension
        filename="${file%.webp}"
        # Convert the .webp file to .jpeg using dwebp (from WebP package)
        dwebp "$file" -o "${filename}.jpeg"
    fi
done