#!/bin/bash

# Improved script with error handling for non-numeric input

input_file="numbers.txt"

largest_number=0

while IFS= read -r number; do
  # Validate the input: Check if the input is a number
  if [[ ! "$number" =~ ^[0-9]+$ ]]; then
    echo "Warning: Skipping non-numeric line: $number"
    continue
  fi
  if (( number > largest_number )); then
    largest_number=$number
  fi
done < "$input_file"

if (( largest_number == 0 )); then
    echo "Error: No valid numbers found in the file."
else
    echo "Largest number: $largest_number"
fi