#!/bin/bash

# Win (Powershell, Windows Terminal)
# Mac (Finder > Terminal)

# Install VS Code
# https://code.visualstudio.com/
# Install Remote - SSH extension

ssh-keygen -t ed25519 -C "your_email@example.com"
# ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

# your_email@example: is just a human readable identifier
# can be myname@computername

# id_ed25519 - Private Key (Not not share)
# -----BEGIN OPENSSH PRIVATE KEY-----
# ...
# -----END OPENSSH PRIVATE KEY-----
# id_ed25519.pub - Public Key (To Share)
# ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPfclMBNVnlansJVkAVEYqrXNNK97dgV4hjHKx9jJbfP aswinn89@gmail.com

#.ssh/id_ed25519
#.ssh/id_rsa

# Use passphrase for better security. Leave it empty for this test
# Enter passphrase (empty for no passphrase):
# Enter same passphrase again:


ssh ohbm@168.138.107.180 
ssh ohbm@168.138.107.180 -i ~/.ssh/id_ed25519

ohbm@168.138.107.180's password:

# Are you sure you want to continue connecting (yes/no/[fingerprint])? yes


echo "This is how to print to bash"
MYVAR="test"
echo "This is how to print ${MYVAR} to bash"
echo $MYVAR

# System Variables
echo $HOME

ls
ls -l
ls -la

cd ~/
cd .ssh
