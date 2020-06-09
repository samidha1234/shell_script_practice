#!/bin/bash 
#--------Epi- 1, 2-----------             
# echo "Hello World"
# echo Our shell name is $BASH
# echo Our version name is $BASH_VERSION
# echo Home directory is $HOME
# echo Current working directory $PWD

# name=Mark
# val=10
# echo The name is $name 
# echo value $val

#---------Epi- 3 ---------------

# echo "Enter name: "
# read name1 name2 name3
# echo "First name: $name1 "
# echo "Middle name: $name2 "
# echo "last name: $name3 "
# echo "First: $name1  Middle: $name2 lastname: $name3"

# read -p 'username: ' user_var
# read -sp 'password: ' pass_var           
# echo "username: $user_var"
# echo "password: $pass_var"

# echo "Enter name : "
# read -a names
# echo "Names : ${names[0]},  ${names[1]}"

# echo "Enter name : "
# read
# echo "Names : $REPLY "

#----------Epi 4 -----------

# echo $0 $1 $2 $3 '> echo $0 $1 $2 $3'

# #parsing an array into argument

# args=("$@")
# # echo ${args[0]} ${args[1]} ${args[2]} ${args[3]}
# echo $@

# echo $#            #number of argument passed

#-----------Epi-5---------------
# count=10
# -eq equal to = , ==
# -ne not equal to !=
# -gt greater than >
# -ge greater than or equal to >=
# -lt less than   <
# -le less than or equal <=
# if [ $count -eq 10 ]
# then
#     echo "Condition is true"
# fi

# word=abc
# if [ $word = "abvvc" ]
# then
#     echo "Condition is true"
# else
#     echo "Condition is false"
# fi

# word=abc
# if [[ $word == "abvvc" ]]
# then
#     echo "Condition is true"
# elif [[ $word == 'abc' ]]
# then
#     echo "condition is true in elif"
# else
#     echo "Condition is false"
# fi

#------------Epi-6 ------------

# -e flag is use to enable the interpretation of '\c'
# \c is use to keep the cursor on the same line after echo command execution
# echo -e "Enter the name of file : \c"
# read file_name

# if [ -e $file_name ]                    #-e flag use to check file exist or not
# then
#     echo "$file_name found"
# else
#     echo "$file_name not found"
# fi

# if [ -f $file_name ]                    #-f flag use to check its exist and its a regular file or not
# then
#     echo "$file_name found"
# else
#     echo "$file_name not found"

#create directory using >>mkdir <directory_name>
# if [ -d $file_name ]                    #-d flag use to check directory exist or not
# then
#     echo "$file_name found"
# else
#     echo "$file_name not found"
# fi

# block binnary file eg. picture, videos file   flag -b 
# charater special file eg. text or data files  flag -c
# empty file flag -s

# if [ -s $file_name ]                    #-d flag use to check directory exist or not
# then
#     echo "$file_name not empty"
# else
#     echo "$file_name empty"
# fi
# writing into the file using
#>>cat><file_name>
#<write text...>
#to exit from cat command press ctrl+d

# -our   to check read permission
# -w write permission
# -x execute permission

#-------------Epi 7 -------------

# echo -e "Enter the name of file : \c"
# read file_name

# f_name=$file_name
# # echo "file_name $f_name"

# if [ -f $f_name ]
# then
#     if [ -w $f_name ]
#     then
#         echo "type text...To quit press ctrl+d"
#         cat >> $file_name                        # >> this append text into existing file
#                                                  # > this will overwrite file with existing text 
#     else
#         echo "Dont have write permission"        # chmod +w <file_name> to give write permission to the file
#                                                  # chmod -w <file_name> to remove write permission
#     fi
# else
#     echo "file doesn't exist"
# fi

#-----------Epi 8 ----------------

age= 55
if [ "$age" -gt 18 ]&&[ "$age" -lt 30]
then 
    echo



















