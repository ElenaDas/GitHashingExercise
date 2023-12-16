#!/bin/bash

# Get user input for the 4-digit integer
read -p "Enter a 4-digit integer: " user_input

# Check if the input is a 4-digit integer
if [[ $user_input =~ ^[0-9]{4}$ ]]; then
    # Hash the input using SHA-256
    hash_output=$(echo -n "$user_input" | sha256sum)

    # Extract the first 4 characters of the hash
    hex_hash=$(echo "$hash_output" | cut -c1-4)

    # Convert the hexadecimal hash to decimal
    dec_hash=$(printf "%d\n" "0x$hex_hash")

    echo "4-digit decimal hash: $dec_hash"
    echo "4-digit hexadecimal hash: $hex_hash"

    # Save the output to output.txt
    echo -e "4-digit decimal hash: $dec_hash\n4-digit hexadecimal hash: $hex_hash" > hash_output.txt
    echo "Output saved to hash_output.txt"
else
    echo "Invalid input. Please enter a 4-digit integer."
fi
