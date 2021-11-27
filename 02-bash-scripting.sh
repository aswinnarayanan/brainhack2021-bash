#!/bin/bash

# Shebang: Add '#!/bin/bash' to top of script

# Systems Variables
${HOME}
${USER}
${PWD}

echo ${PWD}

pwd

echo $(pwd)
echo "$(pwd)"
echo '$(pwd)'

PROJDIR="$(pwd)/Proj"
echo ${PROJDIR}
# MYPROJ = "$(pwd)/Proj" #Error
# No spaces before/after equals

echo "INFO:Creating directory ${PROJDIR}"
mkdir -p ${PROJDIR}
echo

echo "INFO:Showing datetimestamp"
date +%Y%m%d-%H%M%S
echo

echo "INFO:Printing basename"
basename ${PROJDIR}
echo

echo "INFO:Printing dirname"
dirname ${PROJDIR}
echo

# MYDIR_NAME=$(basename "${PROJDIR}")
# MYDIR_DIR=$(dirname "${PROJDIR}")

# echo "run_$(date +%Y-%m-%d-%H%M%S)"


exit

#Temp directory
mktemp -d -t -p . proj-XXXXXXXXXX
tmp_dir=$(mktemp -d -t proj-XXXXXXXXXX)


# File transfer
# scp