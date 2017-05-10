#!/bin/bash
for FILE in *.flac; do ffmpeg -i "$FILE" -b:a 320k "${FILE[@]/%flac/mp3}"; done;

# It loops through all files in current directory that have flac extension and converts them to mp3 files with bitrate of 320kpbs using ffmpeg and default codec.
