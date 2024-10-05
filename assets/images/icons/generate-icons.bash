#!/usr/bin/env bash

# Needed tools
INKSCAPE_TOOL="inkscape"
MAGICK_TOOL="magick"

# Tools
hash "$INKSCAPE_TOOL" "$MAGICK_TOOL" &> /dev/null ||
    echo "Not all tools present"

# Get the file directory
DIRECTORY_NOW="$(dirname -- "$(readlink -f -- "${BASH_SOURCE[0]}")")"

# Names
INPUT_FILE="favicon.svg"
FAVICON_FILE="favicon.ico"
NAME_PREFIX="icon"

# Sizes
SIZES=( 16 32 180 192 512 )

# Iterate the sizes
for size in "${SIZES[@]}"; do
    # Convert
    "$INKSCAPE_TOOL" -w "$size" -h "$size" --background none "$DIRECTORY_NOW/$INPUT_FILE" -o "$DIRECTORY_NOW/$NAME_PREFIX-$size.png"
done

# Finally the .ico
"$MAGICK_TOOL" -background transparent -define 'icon:auto-resize=16,24,32,64,128' "$DIRECTORY_NOW/$INPUT_FILE" "$DIRECTORY_NOW/$FAVICON_FILE"