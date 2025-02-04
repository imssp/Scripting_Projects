#!/bin/bash

################
# Author: Satya Sourav Patel
# Date: 30th-Jan-2025
#
# Version: v1
#
# This script will give the report of the AWS Resource Usages.
#
################

set -x

# AWS S3
# AWS EC2
# AWS Lamda
# AWS IAM Users

# List s3 buckets
echo "Print list of s3 buckets"
aws s3 ls

# List EC2 instances
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq -r '.Reservations[].Instances[].InstanceId'

# List lamda functions
echo "Print list of lamda functions"
aws lambda list-functions

# List IAM users
echo "Print list of iam users"
aws iam list-users


