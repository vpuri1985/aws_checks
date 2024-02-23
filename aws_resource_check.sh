#!/bin/bash
###############################
# Author : Varun
# Version: v1
#
# This script will report the AWS resource usage
################################

set -x # Debug mode

# AWS S3
# AWS Lambda
# AWS EC2
# AWS IAM

# list s3 bucket
echo "Print list of S3 buckets"
aws s3 ls

# list ec2 instance using Json Parse
echo "Print list of EC2 buckets"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List aws lambda functions
echo "Print list of AWS Lambda functions"
aws lambda list-functions

# list iam users using Json Parse
echo "Print list of iam users"
aws iam list-users | jq '.Users[].UserName'
