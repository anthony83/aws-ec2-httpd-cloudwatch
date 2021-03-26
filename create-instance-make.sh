#!/bin/bash

templatepath="file:////home/anthonyn/devops/aws/httpd-cloudwatch-logging-ec2/create-instance.yaml" #path to cfn template
region="ap-southeast-2" 
keyname="httpd-server" #key name for ssh

#flags logic
while test $# -gt 0; do
           case "$1" in
                -c)
                    shift
                    stacknamecreate=$1
                    aws cloudformation create-stack \
                    --stack-name $stacknamecreate \
                    --template-body $templatepath \
                    --parameters ParameterKey=KeyPairName,ParameterValue=$keyname \
                    --capabilities CAPABILITY_NAMED_IAM \
                    --output table
                    shift
                    ;;
                -d)
                    shift
                    stacknamedelete=$1
                    aws cloudformation delete-stack \
                    --stack-name $stacknamedelete
                    shift
                    ;;
                *)
                   echo "$1 is not a recognized flag!"
                   return 1;
                   ;;
          esac
  done  

#eccho out stack names when creating or deleting
echo "Creating Stack : $stacknamecreate";
echo "Deleting Stack : $stacknamedelete";
  
 
