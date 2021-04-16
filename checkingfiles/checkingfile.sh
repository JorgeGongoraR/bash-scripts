#!/bin/bash

# Parameters
FILE1=$1
FILE2=$2

# Validate if the user passed the files as parameters
if [[ -z $FILE1 && -z $FILE2 ]];
then
    echo "No files given"
    exit 65
fi

# Validate if the users passed the two files as parameters
if [ ${#} -ne 2 ];
then
    echo "The script ${0} must contain 2 files, for example: file1.txt file2.txt"
    exit 85
fi

#Validate if the files exists
if [[ ! -e $FILE1 || ! -e $FILE2 ]];
then
    echo "File $FILE1 $FILE2 does not exist"
    exit 87
fi

# Validate if the file are empty
if [[ ! -s "$FILE1" || ! -s "$FILE2" ]]; then
    echo "Files are 0 size"
    exit 89
fi

# Validate if the files have some data
if [[ -a $FILE1 || -a $FILE2 ]]; then
    cat $FILE1 $FILE2 | sort > new_file.txt; cat new_file.txt
    echo "Execution of the script was successful"
else
    echo "Execution of the script was unsuccessful"
fi
