#!/bin/bash

#####################################################

# Author : Mahbub 
# Date : 04/10/24
# Tags: Check node health
# Description: This script outputs the node health
# Version : v1

######################################################

#debug mode for know which output which command:
set -x 

#print the disk space
df -h

#print the memory 
free -g

#print the resources like cpu
nproc