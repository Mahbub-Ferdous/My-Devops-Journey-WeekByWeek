#!/bin/bash

#####################################################

# Author : Mahbub 
# Date : 09/10/24
# Tags: Find ERROR in logfile from remote storage 
# Description: This script helps to get error log from remote logfile 
# Version : v1

######################################################

#add debug mode
set -x
set -e
set -o pipefail

# in general logfile are big and also important thats why every company put it on amazon s3 or google drive or github. i mean any remote storage service they use 

# to get error from remote log file we use curl :

curl https://www.ibm.com/docs/en/zos/2.4.0?topic=problems-example-log-file | grep WARNING

# here after grep we can use INFO,WARNING,ERROR,TRACE