#!/bin/bash

#Autor : Jorge Gongora
#Date  : 18/04/2021
#Description : Pass the script a required parameter.
#              This parameter can be any user in the OS as long as it exists. 
#              The script should output all of the corresponding groups that the user belongs to and print each group in an individual line.

function users_groups () {
    echo -e "\nDisplay all of the corresponding groups that a user belongs to"
    if [[ -z $1 ]];
    then
        echo "Parameter is requiered"
        exit 1
    else
        echo -e "\nDisplaying the corresponding groups that the user $1 belongs to"
        echo -e "\nGroups : \n"
        groups $1 | tr \  \\n
    fi
}

users_groups "$@" 
