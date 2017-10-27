#The following variables are user defined

username="melih" #It is the user for which all process could be done 

#Below the list takes the list of processes percentage as pcpu,process id as pid,username as user,and name of the process as comm, and we sort them according to most used cpu percentage. 

#With while, reading this four information is in a loop so program read for all process while read.
  
ps -eo pcpu=,pid=,user=,comm= k -pcpu |
  while read pcpu pid user comm


#With Initializing the while statement, it will runs the code between do - done   

do

#There is an operand ||, so it checks firstly left side, which checks user name, if it is false (or there is no condition like this) it won't runs second part, if it is true (or there is condition like this). it will continue.

[ "$user" = "$username" ] || continue

# $1 means it ask for input from user, and if condition compare percentage of cpu with the input. if it meets with the condition, it will show the text in echo command and kill the process with process id 

if [ "$pcpu"  '>' "$1" ]

then 
echo " pid = $pid pcpu = $pcpu name = $comm user = $user "

#kill -9 $pid

else

#if it does not meet if show this text
echo " There is no a process which uses %$1  of cpu "

break 

fi

done