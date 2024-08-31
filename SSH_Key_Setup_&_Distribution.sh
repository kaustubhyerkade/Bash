#SSH Key Setup and Distribution Script , Generates SSH keys and distributes the public key to remote servers for password-less authentication.
#Simplifies setting up secure, password-less SSH access.
#Supports distributing keys to multiple servers effortlessly.
#Enhances security by using strong encryption keys.

#!/bin/bash
# SSH Key Setup and Distribution Script

# Generate SSH key if not exists
if [ ! -f ~/.ssh/id_rsa ]; then
    ssh-keygen -t rsa -b 4096 -N "" -f ~/.ssh/id_rsa
    echo "SSH key pair generated."
else
    echo "SSH key pair already exists."
fi

# Remote servers
SERVERS=("server1.example.com" "server2.example.com")

# Distribute public key
for SERVER in "${SERVERS[@]}"; do
    ssh-copy-id -i ~/.ssh/id_rsa.pub "$USER@$SERVER"
    echo "SSH key copied to $SERVER."
done
