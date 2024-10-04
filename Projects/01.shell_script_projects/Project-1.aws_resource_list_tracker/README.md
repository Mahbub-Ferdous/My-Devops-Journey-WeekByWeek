# check AWS CLI version:

```
$ aws --version

```

# install AWS CLI :
```
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

```

# aws configure :

input your IAM user Access key and secret access key by using this command:

```
$ aws configure

```
# clone this repository from github to your local machine:

```
$ git clone https://github.com/Mahbub-Ferdous/Project-1.aws_resource_list_tracker.git

```
# go to the repository and give permission:

```
$ chmod 771 aws_resource_list_tracker.sh

```

# last you run the shell script using your arguments <region> & <aws_services> :

example : ./aws_resource_list_tracker.sh <yourRegion> <desireAwsServices>

```
$ ./aws_resource_list_tracker.sh eu-north-1 ec2

```