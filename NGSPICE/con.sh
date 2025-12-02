#!/bin/bash

# Convert all .ps files in the current directory to .png
# Requires Ghostscript installed (gs command)

for file in *.ps; do
    # Skip if no .ps files exist
    [ -e "$file" ] || continue

    # Output filename: same base name with .png extension
    output="${file%.ps}.png"

    echo "Converting $file → $output"
    gs -sDEVICE=pngalpha -r300 -o "$output" "$file"
done
