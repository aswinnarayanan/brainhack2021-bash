#!/bin/bash

# Shebang: Add '#!/bin/bash' to top of script
exit # Terminate in case of script run

### [STEP 1] ###
# Win (Powershell, Windows Terminal)
# Mac (Finder > Terminal)

# Install VS Code
# https://code.visualstudio.com/
# Install Remote - SSH extension

# Have SSH-Keygen
# Win10, Mac: In-built
# Others: Install Git Bash
# https://gitforwindows.org/ (Use MinTTY)

### [STEP 2] ###
Server IP: 168.138.107.180
User: student

ssh student@168.138.107.180

ls -l
# .ssh is a hidden directory
ls -la

### [STEP 3] ###

# Default
ssh-keygen -t ed25519 -C "your_email@example.com"
# If ed25519 is unsupported, use below
# ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

# your_email@example: is just a human readable identifier
# can be email, or myname@computername

# Use passphrase for better security. Leave it empty for this test
# Enter passphrase (empty for no passphrase):
# Enter same passphrase again:

# Private key (by default in ~/.ssh/id_ed25519)
# DO NOT SHARE
-----BEGIN OPENSSH PRIVATE KEY-----
b3BlbnNzaC1rZXktdjEAAAAABG5vbmUA...
...YwntggezIVG2pXea0b1oAAAAFnlvdXJfZ
-----END OPENSSH PRIVATE KEY-----

# Public Key. By default in ~/.ssh/id_ed25519.pub)
# id_ed25519.pub - Public Key (To Share)
# ssh-ed25519 AAAAC3NzaC1...jHKx9jJbfP your_email@example.com

#.ssh/id_ed25519
#.ssh/id_rsa


### [STEP 3] ###
# Open student@168.138.107.180:/home/student/.ssh in VS Code

# Create /home/student/.ssh/id_ed25519.pub. Copy paste the local public key
cat id_ed25519.pub >> /home/student/.ssh/authorized_keys

# Close Remote directory

### [STEP 4] ###
# Reconnect with SSH key
# On first connection with key:
# If key is invalid: (student@168.138.107.180's password:)
# Are you sure you want to continue connecting (yes/no/[fingerprint])? yes


### [STEP 5] ###
# Edit ~/.ssh/config (Or create new file if non existant)

# Add the following and save
Host brainhack2021
    HostName 168.138.107.180
    User student
    IdentityFile ~/.ssh/id_ed25519

# With port forwarding
Host ohbmserver
    HostName 168.138.107.180
    User student
    LocalForward 8080 localhost:8080
