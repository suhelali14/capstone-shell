#!/bin/bash
if [ $# -lt 2 ]; then
  echo "Usage: $0 file1 file2 [file3...]"
  exit 1
fi

file1=$1
shift
for word in $(cat "$file1"); do
    count=0
    for file in "$@"; do
      if [ -f "$file" ]; then
        count=$((count + $(grep -o -w "$word" "$file" | wc -l)))
      else
        echo "File $file not found"
      fi
    done
    echo "$word: $count"
done
