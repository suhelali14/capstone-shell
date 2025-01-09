#!/bin/bash
if [ $# -eq 0 ]; then
  echo "Usage: $0 <file1> <file2> ..."
  exit 1
fi

for file in "$@"; do
  if [ -f "$file" ]; then
    mv "$file" "$(echo "$file" | tr '[:lower:]' '[:upper:]')"
    echo "Converted $file to uppercase."
  else
    echo "$file does not exist."
  fi
done
