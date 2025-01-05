#!/bin/bash

# Name: set_album_metadata.sh
# Description: Updates album metadata for all audio files in subfolders. 
#              Uses the folder name as the album name.
# Usage: Place in the parent directory and run `./set_album_metadata.sh`.

# Ensure ffmpeg is installed
if ! command -v ffmpeg &>/dev/null; then
    echo "Error: ffmpeg is not installed. Please install ffmpeg and try again."
    exit 1
fi

# Iterate over all directories in the current location
for dir in */; do
    # Remove trailing slash to get folder name
    album_name="${dir%/}"
    
    echo "Processing folder: $album_name"
    
    # Iterate over all audio files in the directory
    for file in "$dir"*.{mp3,flac,wav,m4a}; do
        # Check if the file exists (avoids issues with empty directories)
        if [ -f "$file" ]; then
            echo "Updating album metadata for: $file"
            
            # Get file extension
            extension="${file##*.}"
            
            # Create a temporary file for the updated audio
            temp_file="${file}.temp.${extension}"
            
            # Use ffmpeg to update album metadata
            ffmpeg -i "$file" -metadata album="$album_name" -c copy -f "$extension" "$temp_file" -y
            
            # Replace the original file with the updated file
            mv "$temp_file" "$file"
        fi
    done
done

echo "Metadata update complete!"

