#!/usr/bin/env bash
# tiny helper: counts files & directories; supports -h/--help
if [[ $1 == "-h" || $1 == "--help" ]]; then echo "Usage: $0 [DIR] - Count files and directories in DIR (default .)"; exit 0; fi
DIR="${1:-.}"
echo "Scanning: $DIR"
files=$(find "$DIR" -type f 2>/dev/null | wc -l)
dirs=$(find "$DIR" -type d 2>/dev/null | wc -l)
echo "Files: $files"
echo "Dirs: $dirs"
exit 0
