#!/bin/bash

directory="/opt/repositories/tiny-glsl-optimizer/"  # Replace with the target directory
extension=".$1"                # Replace with the desired file extension

find "$directory" -type f -name "*$extension" -print0 | while IFS= read -r -d '' file; do
    relative_path="${file#$directory}"  # Get the relative path
    echo "$relative_path"
done
