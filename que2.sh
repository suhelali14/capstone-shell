#!/bin/bash
if [ $# -ne 1 ]; then
  echo "Usage: $0 file1"
  exit 1
fi

file=$1
if [ -f "$file" ]; then
  lines=$(wc -l < "$file")
  words=$(wc -w < "$file")
  echo "Number Of Lines: $lines"
  echo "Number Of Words: $words"
else
  echo "File does not exist."
fi
