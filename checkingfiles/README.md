# Checking files

## Description
This script must evaluate if at the moment you run it you pass 2 files name as parameters with the next requirements:

1. If the user does not pass any file as parameter, show a prompt "No files given" and finish with a 65 exit code.
2. If the number of files passed as parameter exceed 2, show a prompt "The script must contain 2 files, for example: file1.txt file2.txt" and finish with a 85 exit code.
3. If the files passed as parameter don't exist, show a prompt "File does not exist" and finish with a 87 exit code
4. If the files passed as parameter are empty, display a message saying "Files are 0 size" and finish with a 89 exit code
5. If the files have some data, create a new text file adding all the information from both files and sorting it alphabetically and showing a prompt "Execution of the script was successful"
