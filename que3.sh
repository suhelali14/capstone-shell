#!/bin/bash
if [ $# -eq 0 ]; then
  echo "Usage: $0 <login1> <login2> ..."
  exit 1
fi

for user in "$@"; do
  home_dir=$(grep "^$user:" ./passwd | cut -d: -f6)
  if [ -z "$home_dir" ]; then
    echo "User $user not found."
  else
    echo "User: $user -> Home: $home_dir"
  fi
done
