#!/bin/bash
if [ $# -ne 3 ]; then
  echo "Usage: $0 <filename> <start_line> <end_line>"
  exit 1
fi

file=$1
start=$2
end=$3

if [ -f "$file" ]; then
  sed -n "${start},${end}p" "$file"
else
  echo "File does not exist."
fi
