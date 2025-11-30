#!/usr/bin/env bash
# Sample: archive top 5 largest files in a directory
DIR="${1:-.}"
echo "Scanning $DIR for large files..."
find "$DIR" -type f -printf '%s\t%p\n' | sort -nr | head -n 5 > /tmp/top5.txt
echo "Top 5 largest files:"; cat /tmp/top5.txt
tar -czf "large_files_$(date +%Y%m%d).tar.gz" -T <(awk -F'\t' '{print $2}' /tmp/top5.txt)
echo "Created archive: large_files_$(date +%Y%m%d).tar.gz"
rm /tmp/top5.txt
exit 0
