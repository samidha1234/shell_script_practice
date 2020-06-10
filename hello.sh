#!/bin/bash 
#--------Epi- 1, 2-----------             
echo "Hello World"
echo Our shell name is $BASH
echo Our version name is $BASH_VERSION
echo Home directory is $HOME
echo Current working directory $PWD

name=Mark
val=10
echo The name is $name 
echo value $val

#---------Epi- 3 ---------------

echo "Enter name: "
read name1 name2 name3
echo "First name: $name1 "
echo "Middle name: $name2 "
echo "last name: $name3 "
echo "First: $name1  Middle: $name2 lastname: $name3"

read -p 'username: ' user_var
read -sp 'password: ' pass_var           
echo "username: $user_var"
echo "password: $pass_var"

echo "Enter name : "
read -a names
echo "Names : ${names[0]},  ${names[1]}"

echo "Enter name : "
read
echo "Names : $REPLY "

#----------Epi 4 -----------

echo $0 $1 $2 $3 '> echo $0 $1 $2 $3'

#parsing an array into argument

args=("$@")
# echo ${args[0]} ${args[1]} ${args[2]} ${args[3]}
echo $@

echo $#            #number of argument passed

#-----------Epi-5---------------
count=10
# -eq equal to = , ==
# -ne not equal to !=
# -gt greater than >
# -ge greater than or equal to >=
# -lt less than   <
# -le less than or equal <=

if [ $count -eq 10 ]
then
    echo "Condition is true"
fi

word=abc
if [ $word = "abvvc" ]
then
    echo "Condition is true"
else
    echo "Condition is false"
fi

word=abc
if [[ $word == "abvvc" ]]
then
    echo "Condition is true"
elif [[ $word == 'abc' ]]
then
    echo "condition is true in elif"
else
    echo "Condition is false"
fi

#------------Epi-6 ------------

# -e flag is use to enable the interpretation of '\c'
# \c is use to keep the cursor on the same line after echo command execution
echo -e "Enter the name of file : \c"
read file_name

if [ -e $file_name ]                    #-e flag use to check file exist or not
then
    echo "$file_name found"
else
    echo "$file_name not found"
fi

if [ -f $file_name ]                    #-f flag use to check its exist and its a regular file or not
then
    echo "$file_name found"
else
    echo "$file_name not found"

#create directory using >>mkdir <directory_name>
if [ -d $file_name ]                    #-d flag use to check directory exist or not
then
    echo "$file_name found"
else
    echo "$file_name not found"
fi

# block binnary file eg. picture, videos file   flag -b 
# charater special file eg. text or data files  flag -c
# empty file flag -s

if [ -s $file_name ]                    #-d flag use to check directory exist or not
then
    echo "$file_name not empty"
else
    echo "$file_name empty"
fi

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

f_name=$file_name
# # echo "file_name $f_name"

if [ -f $f_name ]
then
    if [ -w $f_name ]
    then
        echo "type text...To quit press ctrl+d"
        cat >> $file_name                        # >> this append text into existing file
                                                 # > this will overwrite file with existing text 
    else
        echo "Dont have write permission"        # chmod +w <file_name> to give write permission to the file
                                                 # chmod -w <file_name> to remove write permission
    fi
else
    echo "file doesn't exist"
fi

#-----------Epi 8 ----------------

age=55
if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
then 
    echo "valid age"
else
    echo "Age not valid"
fi

age=55
if [[ "$age" -gt 18 && "$age" -lt 30 ]]
then 
    echo "valid age"
else
    echo "Age not valid"
fi

#---------Epi 9 ------------------

age=5
if [ "$age" -gt 18 ] || [ "$age" -lt 3 ]
then 
    echo "valid age"
    else
    echo "Age not valid"
fi

age=5
if [ "$age" -eq 18 -o "$age" -eq 5 ]
then 
    echo "valid age"
    else
    echo "Age not valid"
fi

#---------Epi 10 ------------------
# Arithmatic commands

num1=5
num2=9
echo $(( num1 + num2 ))
echo $(( num1 - num2 ))
echo $(( num1 * num2 ))
echo $(( num1 / num2 ))
echo $(( num1 % num2 ))

echo $(expr $num1 + $num2 )
echo $(expr $num1 - $num2 )
echo $(expr $num1 \* $num2 )
echo $(expr $num1 / $num2 )
echo $(expr $num1 % $num2 )

#---------Epi 11 ------------------
Arithmatic commands on decimal numbers

num1=5.9
num2=9.8
echo "$num1+$num2" | bc              # need to install bc package 
# bc package used for all arithmetic, trignometric opeartions, square root..and many more
# -l for math libraray (used with bc for square or squareroot operations)

#---------Epi 12 ------------------
# CASE statement

vehicle=$1

case $vehicle in
    "car" )
        echo "Rent of $vechicle is 100 dollar" ;;
    "van" )
        echo "rent of $vehicle is 50 dollar" ;;
    "bicycle" )
        echo "rent of $vehicle is 20 dollar " ;;
    . )
        echo "Unknown vehicle"
esac

#---------Epi 13 ------------------
# echo -e "enter the charater :\c"
# read value

case $value in
    [a-z] )
        echo "User entered $value a to z" ;;
    [A-Z] )
        echo "User entered $value A to Z" ;;
    [0-9] )
        echo "User entered $value 0 to 9" ;;
    ? )
        echo "User entered $value special charater" ;;
    . )
        echo "Unknown input"
esac

#while testing above code 
#>>LANG=C
#then only you will get correct outputs

#---------Epi 14 ------------------
#ARRAY

os=('Ubuntu' 'Windows' 'Kali')
echo "${os[@]}"
echo "${os[1]}"
echo "${!os[@]}"                  # indexes of array
echo "${#os[@]}"                  #length of array
os[3]='macc'                      #Add element to the array
os[2]="sam"                       #update element to the array
unset os[2]                       # remove element
os[10]="yess"                     # adding element to the 10th index (not necessary to have each index position ignores )

echo "${os[@]}"
echo "${!os[@]}"

string=dashcbak
echo "${string[@]}"
echo "${string[1]}"            # no output because entire string is 0th index

#---------Epi 15 ------------------
#WHILE LOOP
# while [condition]
# do 
#     condition1
#     condition2
#     condition3
# done

n=1
while [ $n -le 10 ]          # another way to write-  while (( $n <= 10 ))
do 
    echo "$n"
    n=$(( n+1 ))             # another way to write - (( n++ )) or (( ++n ))
done

#---------Epi 16 ------------------
#WHILE LOOP
n=1
while (( $n <= 10 ))          
do 
    echo "$n"
    (( n++ ))   
    sleep 1                     #creating delay
done

n=1
while (( $n <= 2 ))          
do 
    echo "$n"
    (( n++ ))   
    # gnome-terminal &
done

#---------Epi 17 ------------------
#WHILE LOOP
#read file

while read p
do
    echo $p 
done < hello.sh
# In above code first '>' this redirection read file
# then send it to while loop for operation

cat hello.sh | while read p             #cat is reading a file and send to while
do
    echo $p 
done 

while IFS= read -r line              #not understood well with is piece
do
    echo $line
done < /dir/new_file.txt

#---------Epi 18 ------------------
#UNTIL LOOP
#syntax
#until [condition]
#do
#   command1
#   commnad2

#done

n= 1
until [ $n -ge 10 ]
do
    echo $n
    (( n++ ))
done

#---------Epi 19 ------------------
#FOR LOOP
#syntax
# for VARIABLE in 1 2 3 4 . . N 
# do 
#     command1
#     commnad2
# done

# for VARIABLE in file1 file2 file3  
# do 
#     command1 on $VARIABLE
#     commnad2
# done

# for OUTPUT in $(Linux-Or-Unix-Command-Here) 
# do 
#     command1 on $OUTPUT
#     commnad2 on $OUTPUT
# done

# other ways also present

for i in {1..20..2}             #{start..end..increment}
do 
    echo $i
done

for (( i=0; i<7; i++ ))             #{start..end..increment}
do 
    echo $i
done

#--------------Episode 20 ---------
# FOR LOOP with file and commands

for command in ls pwd date 
do
    echo "-----------------$command------------------"
    $command
done

for item in *
do
    if [ -f $item ]
    then
        echo $item  
        # cat $item
    fi
done  

#---------------Episode 21 ----------
#SELECT LOOP
# syntaxselect varName in list
# do 
#     command1
#     command2
# done

select name in sam pam ram jam
do
    echo "$name selected"
done

select name in sam pam tom 
do
    case $name in 
    sam )
        echo mark selected
        ;;
    pam )
        echo pam selected
        ;;
    tom )
        echo tom selected
        ;;
    * )
        echo "Please provid number between 1..3"    
    esac
done

#---------------Episode 22 --------------

# Break statement

for (( i=1; i<=10; i++ ))
do 
    if [ $i -gt 5 ]
    then
        break
    fi 
    echo $i
done

for (( i=1; i<=10; i++ ))
do 
    if [ $i -eq 3 -o $i -eq 6 ]
    then
        continue
    fi 
    echo $i
done

#---------------Episode 23 --------------
#Functions
# Syntax
# function name(){
#     commands
# }
# OR
# name(){
#     commands
# }

function Hello(){
    echo "Hello"
}

quit(){
    exit
}

Hello
quit

function print(){
    echo $1 $2
}
quit(){
    exit
}

print Hello sam y
print World
echo "foo"
quit

#---------------Episode 24 --------------

function print(){
    name=$1
    echo "The name is $name"
}

name="sam"
echo "The name is $name : before"

print Max
echo "foo"
echo "The name is $name : after"

function print(){
    local name=$1                   # added 'local' 33
    echo "The name is $name"
}

name="sam"
echo "The name is $name : before"

print Max
echo "foo"
echo "The name is $name : after"

#---------------Episode 25 --------------

usage(){
    echo "You need to provide an argument"
    echo "usage : $0 file_name"
}

is_file_exist(){
    local file="$1"
    [[ -f "$file" ]] && return 0 || return 1
}

[[ $# -eq 0 ]] && usage

if ( is_file_exist "$1" )
then
    echo "File found"
else
    echo "File not found"
fi

#---------------Episode 26 --------------
#Read only command

var=31
readonly var
var=50
echo "var => $var"

hello(){
    echo "Hello world"
}
readonly -f hello
hello(){
    echo "Hello world Again"
}

#readonly -f  - will give you list of readonly functions present

 #---------------Episode 27 --------------
# This episode more explained about killing porcess
# Trap signal

echo "pid is $$"                #pid- process identification number
while (( COUNT < 10 ))
do 
    sleep 10
    (( COUNT++ ))
    echo $COUNT
done
exit 0

trap "echo Exit command is detected " 0         #exit 0 is a success signal

echo "Hello World"

exit 0                                         #exit 0 is a success signal

#Liston this lecture one more time..

#----------------Episode 28 --------------
# Debugging throgh terminal
# >> bash -x ./hello.sh
# OR

# Debugging through script
# !#bin/bash -x 
# >>./hello.sh

#Debbuging for perticular portion
#Eg
# !#bin/bash -x               #change this line of yor script only
# set -x
# echo "pid is $$"                #pid- process identification number
#set +x
# while (( COUNT < 10 ))
# do 
#     sleep 10
#     (( COUNT++ ))
#     echo $COUNT
# done
# exit 0









  