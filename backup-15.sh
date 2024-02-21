#!/bin/bash

negpod_id="15"

# Set remote server details
host="64293e56bc62.3a2627c1.alu-cod.online"
username="64293e56bc62"
password="328d3b338a4ced526c9a"
remote_dir="/summative/1023-2024j"

# Set local and remote directory names
local_dir="negpod_$negpod_id-q1"
remote_path="$remote_dir/$negpod_id"

# Create a temporary archive
tar -cvzf backup.tar.gz "$local_dir"

# Upload the archive to the remote server using `scp`
scp -i my_private_key.pem backup.tar.gz "$username@$host:$remote_path"

# Remove the temporary archive
rm backup.tar.gz

echo "Backup completed!"
