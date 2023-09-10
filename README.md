#!/bin/bash

# Source directory
src_dir="../srcfiles/"

# Target directory
target_dir="/var/informatica/iics/dev/be_cdr/srcfiles/Archive/"

# Keyword to search for in filenames
keyword="_test_"

# Current date in YYYY-MM-DD format
current_date=$(date +'%Y-%m-%d')

# Check if the source directory exists
if [ ! -d "$src_dir" ]; then
  echo "Source directory '$src_dir' does not exist."
  exit 1
fi

# Check if the target directory exists; if not, create it
#if [ ! -d "$target_dir" ]; then
 # mkdir -p "$target_dir"
#fi

# Move files with the ".csv" extension to the target directory with the current date after the filename
find "$src_dir" -type f -name "*$keyword*.csv" -exec sh -c 'mv "$1" "$2/$(basename "$1" .csv)_'"$current_date"'.csv"' sh {} "$target_dir" \;

echo "CSV files containing the keyword '$keyword' have been moved to '$target_dir' with the current date after the filename."
