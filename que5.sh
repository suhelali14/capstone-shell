#!/bin/bash
if [ $# -ne 1 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

file=$1
if [ -f "$file" ]; then
  stat --format='%y' "$file"
else
  echo "File does not exist."
fi
