#!/bin/bash

# Get the 4-digit integer from the command line
input=$1

# Check if input is provided
if [ -z "$input" ]; then
    echo "Usage: $0 <4-digit-integer>"
    exit 1
fi

# Use SHA-256 hashing algorithm to hash the input
hash_output=$(echo -n "$input" | sha256sum)

# Save the hash output to hash_output.txt
echo "$hash_output" > hash_output.txt

