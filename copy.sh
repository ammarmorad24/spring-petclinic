#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory_name>"
    exit 1
fi

# Assign the directory name to a variable
DIRECTORY_NAME=$1

# Source and destination paths
SOURCE_PATH="/mnt/c/Users/user/Desktop/Temporary/$DIRECTORY_NAME"
DESTINATION_PATH="$HOME/devops"

# Check if the source directory exists
if [ ! -d "$SOURCE_PATH" ]; then
    echo "Source directory $SOURCE_PATH does not exist."
    exit 1
fi

# Create the destination directory if it doesn't exist
mkdir -p "$DESTINATION_PATH"

# Copy the directory
cp -r "$SOURCE_PATH" "$DESTINATION_PATH"

# Check if the copy was successful
if [ $? -eq 0 ]; then
    echo "Directory $DIRECTORY_NAME copied successfully from $SOURCE_PATH to $DESTINATION_PATH."
else
    echo "Failed to copy the directory $DIRECTORY_NAME."
    exit 1
fi

