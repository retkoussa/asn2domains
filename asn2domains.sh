#!/bin/bash

# Check if an argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 ASN"
    exit 1
fi

# Run the curl command to retrieve IP addresses related to the provided ASN
ip_ranges=$(curl -s "https://api.hackertarget.com/aslookup/?q=$1" | grep -E '([0-9]{1,3}\.){3}[0-9]{1,3}/')


# Create a file to store the IP addresses
output_file="$1_ips.txt"

# Loop through each IP address range, run prips, and store the results in the output file
while IFS= read -r ip_range; do
    prips "$ip_range" >> "$output_file"
done <<< "$ip_ranges"

# Create a file to store the domains
domain_file="$1_domains.txt"

# Reverse resolve IPs using hakrevdns and store the output in the domain file
while read -r ip; do
    hakrevdns "$ip" -d
done < "$output_file" | tee -a "$domain_file"


echo "Domain names associated with $1 have been saved to $domain_file."
