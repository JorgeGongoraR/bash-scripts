#!/bin/bash
#Autor: JorgeGongora
#Date: 14/04/2021
#Description: This script is intended to create multiple users
for user in {1..101}
do
    user="user${user}"
    echo "Creating user: ${user}"
    useradd -m -g devops -s /bin/bash -c "User ${user} from devops department" -d /home/${user} ${user}
    echo "${user}:${user}_password" | chpasswd
done
