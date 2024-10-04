#!/bin/bash

################################################################################

#Author : Mahbub Ferdous
#Date : 5/10/24
#Tag : Aws CLI install and Configure 
#Description : We can run this scripts for installing aws cli and configure it
#Version : v1

################################################################################

#for installation:
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

#for configuration:

aws configure 