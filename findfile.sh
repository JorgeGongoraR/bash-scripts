#!/bin/bash
#Autor: Jorge Gongora
#Date: 14/04/2021
#Description: This file is intended to find a .sh file, if that file is already created will ask if you like to overwrite or to create a new one

FILENAME=$1.sh

while [[ -e $FILENAME ]]
do
	read -p "File already exits, are you sure you would like to overwrite? (Y/n)" ANSWER
	case $ANSWER in
		y|Y|[yY][eE][sS])
			break
			;;
		n|N[nN][oO])
			read -p "Enter the new filename " FILENAME
			FILENAME=$FILENAME.sh
			;;
	esac
done
echo "#!/bin/bash" > $FILENAME
chmod +x $FILENAME
vim $FILENAME
