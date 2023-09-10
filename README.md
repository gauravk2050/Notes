#!/bin/bash


# Source directory
src_dir="../srcfiles/"

# Target directory
target_dir="/var/informatica/iics/dev/be_cdr/srcfiles/Archive/"

# Keyword to search for in filenames
keyword="_test_"

# Check if the source directory exists
if [ ! -d "$src_dir" ]; then
  echo "Source directory '$src_dir' does not exist."
  exit 1
fi

# Check if the target directory exists; if not, create it
#if [ ! -d "$target_dir" ]; then
 # mkdir -p "$target_dir"
#fi

# Move files containing the keyword to the target directory
find "$src_dir" -type f -name "*$keyword*" -exec mv {} "$target_dir" \;

echo "Files containing the keyword '$keyword' have been moved to '$target_dir'."
