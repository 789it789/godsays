#!/bin/bash

# Read the file 'words.txt' into an array
mapfile -t god < words.txt

echo # Add newline before output for readability

# Loop 10 times, to hear 10 words from Mr. God
for ((n=0; n<10; n++)); do
  # Let Mr. God decide
  word="${god[$RANDOM % ${#god[@]}]}"
  echo -n "${word//_/ } "
done
echo

# Print newline at the end
echo
