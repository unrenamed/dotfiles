#!/bin/bash

# Ask Y/n
function ask() {
    read -p "$1 (Y/n): " resp
    if [ -z "$resp" ]; then
        response_lc="y" # empty is Yes
    else
        response_lc=$(echo "$resp" | tr '[:upper:]' '[:lower:]') # case insensitive
    fi

    [ "$response_lc" = "y" ]
}

# Check what shell is being used
SH="${HOME}/.bashrc"
ZSHRC="${HOME}/.zshrc"
if [ -f "$ZSHRC" ]; then
	SH="$ZSHRC"
fi

echo >> $SH
echo '# -------------- unrenamed:dotfiles install ---------------' >> $SH

# Initialize an empty array for selected files to source
sourced_files=()

# Ask which files should be sourced
echo "Do you want $SH to source: "
for file in shell/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        if ask "${filename}?"; then
            # Source file
            echo "source $(realpath "$file")" >> "$SH"
            # Add filename to the list of sourced files
            sourced_files+=("$filename")
        fi
    fi
done

# Install dependencies for the sourced files if they exist
for filename in ${sourced_files[@]}; do
    path="install/$filename"
    command="./$path"
    if [ -f "$path" ]; then
        eval "$command"
    fi
done

echo
echo "⚡ To apply changes, please restart your terminal."