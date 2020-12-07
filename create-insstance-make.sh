#!/bin/bash

templatepath="file:///home/anthonyn/devops/aws/create-instance.yaml"
region="ap-southeast-2"
stackname="createinstance"
keyname="httpd-server"
sleeptime=60

aws cloudformation create-stack --stack-name $stackname --template-body $templatepath --parameters ParameterKey=KeyPairName,ParameterValue=$keyname --capabilities CAPABILITY_NAMED_IAM --output table

printf "%s\n"
printf "running build please standby..."

sleep $sleeptime

instanceid=$(aws cloudformation --region $region describe-stacks --stack-name $stackname --query "Stacks[0].Outputs[0].OutputValue")
instanceip=$(aws cloudformation --region $region describe-stacks --stack-name $stackname --query "Stacks[0].Outputs[1].OutputValue")

#aws cloudformation --region $region describe-stacks --stack-name $stackname

#echo $instanceid && echo $instanceip

printf "%s\n"
printf "%s\n"
printf "instance id is: $instanceid %s\n"
printf "instance ip address is: $instanceip %s\n"
printf "%s\n"

