#! /bin/bash

# Everithing could be typed in only one row,
# but in order to see the options in a clear way,
# first are defined as Variables and then called by the command

INSTANCE_TYPE='t2.micro'
IMAGE_ID='ami-5583d42f'
KEY_NAME='legal-app'
MONITORING='true'
SECURITY_GROUPS=('sg-01f7b374')
SUBNET_ID='subnet-f084f1cd'
STORAGE_CONFIG='file://mapping.json' #(Optional) This files must be configured acording with the IMAGE_ID
INIT_STEPS='file://user-data.sh'

# AWS CLI Command

aws ec2 run-instances \
  --image-id $IMAGE_ID \
  --instance-type $INSTANCE_TYPE \
  --key-name $KEY_NAME \
  --monitoring "Enabled=$MONITORING" \
  --security-group-ids $SECURITY_GROUPS \
  --user-data $INIT_STEPS 
# --block-device-mappings $STORAGE_CONFIG \
