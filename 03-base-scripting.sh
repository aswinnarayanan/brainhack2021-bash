#!/bin/bash

exit # Terminate in case of script run

### [STEP 1] ###

PROJDIR=/nfs/scratch/students/hpc/ToRename/Proj
echo "Setting PROJDIR to ${PROJDIR}"

# Find
find . 

find ${PROJDIR} -type d
find ${PROJDIR} -mindepth 2 -maxdepth 2 -type d

find ${PROJDIR} -type f
find ${PROJDIR} -type f -name "*.txt"


### [STEP 2] ###
echo ${PROJDIR}
NEWPROJDIR=$(dirname ${PROJDIR})/NewProj
echo ${NEWPROJDIR}

MYDIR=${PROJDIR}/patient_0001_22Oct2021
MYFILE=$(find ${MYDIR} -type f -name "*.txt")
basename ${MYFILE}
basename ${MYFILE} .txt


MYBASENAME=$(basename ${MYFILE} .txt)
NEWDIR=${NEWPROJDIR}/$MYBASENAME
echo ${NEWDIR}

echo "INFO:mv ${MYDIR} ${NEWDIR}"

### [STEP 3] ###
# If statement
if [ -d ${NEWDIR} ]
then
    echo "ERROR:NEWDIR(${NEWDIR}) exists. Terminating ..."
    exit
else
    echo "INFO:NEWDIR(${NEWDIR}) does not exist"
    echo "INFO:mv ${MYDIR} ${NEWDIR}"
fi


### [STEP 4] ###
#Temp directory
mktemp -d -t proj-XXXXXXXXXX
MYTMP=$(mktemp -d -t proj-XXXXXXXXXX)


### [STEP 5] ###
# Complete bash script
PROJDIR=/nfs/scratch/students/hpc/ToRename/Proj
echo "Setting PROJDIR to ${PROJDIR}"

for MYDIR in ${PROJDIR}/*; do

# echo ${PROJDIR}
NEWPROJDIR=$(dirname ${PROJDIR})/NewProj
# echo ${NEWPROJDIR}
MYFILE=$(find ${MYDIR} -type f -name "*.txt")
MYBASENAME=$(basename ${MYFILE} .txt)
NEWDIR=${NEWPROJDIR}/$MYBASENAME
# echo ${NEWDIR}
echo "INFO:mv ${MYDIR} ${NEWDIR}"
done


# echo "run_$(date +%Y-%m-%d-%H%M%S)"
exit


