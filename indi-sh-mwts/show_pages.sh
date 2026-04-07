#!/bin/bash

read -p "Enter page number: " n

# Create a temporary file to store the output
temp_file=$(mktemp)

{
    echo "page_${n}_title.sh"
    echo ""
    echo ""
    cat "page_${n}_title.sh"
    echo ""
    echo ""
    echo "page_${n}_textonly.sh"
    echo ""
    echo ""
    cat "page_${n}_textonly.sh"
} | tee "$temp_file"

# Copy to clipboard
if command -v xclip &> /dev/null; then
    cat "$temp_file" | xclip -selection clipboard
    echo ""
    echo "Output copied to clipboard"
else
    echo ""
    echo "xclip not installed. Run: sudo apt-get install xclip"
fi

# Clean up
rm "$temp_file"
