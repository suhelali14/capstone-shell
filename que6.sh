#!/bin/bash
for file in *; do
  if [ -f "$file" ]; then
    length=$(expr length "$file")
    if [ $length -ge 10 ]; then
      echo "$file"
    fi
  fi
done
