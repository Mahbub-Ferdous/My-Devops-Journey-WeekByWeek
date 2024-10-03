#!/bin/bash

#####################################################

# Author : Mahbub 
# Date : 07/10/24
# Tags: Check all processes
# Description: This script outputs the all runing process
# Version : v1

######################################################

#set debug mode for human readable
set -x
#when script get an error :
set -e    # exit the script when there is an error
set -o pipefail  # if we use pipe operator and its have problem without this line command will executed


#check process command:
ps -ef

# check human readable:
ps -h

#if you want to know selected PID(processID) using querythan we can use pipe(|) and (grep)

#ps -ef | grep "processName"
ps -ef | grep "zsh"
#or we can get output in a txt file: here we use backtic for commands 

# echo `ps -h | grep "processId"` >> ps-output.txt
echo `ps -h | grep "zsh"` >> zsh-output.txt

# awk command for get info column by column :

ps -ef | grep zsh | awk -F" " '{print $2}'   # here $2 means 2nd column
