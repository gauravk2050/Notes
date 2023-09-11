#!/bin/bash

# Set the directory path
directory="/var/informatica/iics/dev/be_cdr/srcfiles/"

# Output file to store the list of filenames
output_file="YYYY_Occupational_Health_&_Safety.txt"

# Check if the specified directory exists
if [ ! -d "$directory" ]; then
  echo "Error: Directory '$directory' does not exist."
  exit 1
fi

find -type f -name "*OHS*" -exec basename {} \;> "$output_file"


# Check if any files were found
if [ -s "$output_file" ]; then
  echo "List of filenames containing 'ohs' has been saved to '$output_file'"
else
  echo "No files with 'ohs' in their filenames found in '$directory'"
fi
