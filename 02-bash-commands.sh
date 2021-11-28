#!/bin/bash

exit # Terminate in case of script run

### [STEP 1] ###

echo "This is how to print to bash"
MYVAR="test"
MYVAR = "test" #Error
# No spaces before/after equals
echo $MYVAR
echo "This is how to print ${MYVAR} to bash"

# Systems Variables
echo ${HOME}
echo ${USER}
echo ${PWD}

### [STEP 2] ###
# Basic bash command

# List files/directories
ls
# List in detailed view
ls -l
# List all (including hidden)
ls -la

# Change to home directory
cd ~/

# Current directory
pwd

# Put command into a variable: $(pwd)
# Print function as a variable
echo "$(pwd)"
echo '$(pwd)'

PROJDIR="$(pwd)/Proj"

echo "INFO:Creating directory ${PROJDIR}"
mkdir -p ${PROJDIR}
echo

### [STEP 3] ###
# Intermediate bash commands
echo "INFO:Showing datetimestamp"
date +%Y%m%d-%H%M%S
echo

echo "INFO:Printing basename"
basename ${PROJDIR}
echo

echo "INFO:Printing dirname"
dirname ${PROJDIR}
echo
