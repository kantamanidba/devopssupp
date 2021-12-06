#/bin/bash

# Credentials stored are AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY 
# need these set to invoke aws sts get-session-token
#AWS_ACCESS_KEY_ID=`cat ~/.aws/credentials | grep "aws_access_key_id" | awk '{print $3}'`
#AWS_SECRET_ACCESS_KEY=`cat ~/.aws/credentials | grep "aws_secret_access_key" | awk '{print $3}'`
AWS_ACCESS_KEY_ID=`cat ~/.aws/credentials | grep "aws_access_key_id" | awk -F= '{print $2}'`
AWS_SECRET_ACCESS_KEY=`cat ~/.aws/credentials | grep "aws_secret_access_key" | awk -F= '{print $2}'`
AWS_SESSION_TOKEN=`cat ~/.aws/credentials | grep "aws_session_token" | awk -F= '{print $2}'`

###
# Zero out env vars
#export AWS_ACCESS_KEY_ID=""
#export AWS_SECRET_ACCESS_KEY=""
#export AWS_SESSION_TOKEN=""
#export AWS_SECURITY_TOKEN=""

# load command-line args
#user=$1
#user_env=$2
#google_authenticator_token=$3

# Get the session token, store temporarily
#aws sts get-session-token --serial-number arn:aws:iam::742628475608:mfa/$user --token-code $google_authenticator_token > ~/.aws.tmp

# Crack out data and store in env vars file, store them where they can be sourced
#AWS_ACCESS_KEY_ID=`cat ~/.aws.tmp | grep "AccessKeyId" | awk '{print $2}' | sed 's/",//g' | sed 's/"//g'`
#AWS_SECRET_ACCESS_KEY=`cat ~/.aws.tmp | grep "SecretAccessKey" | awk '{print $2}' | sed 's/",//g' | sed 's/"//g'`
#AWS_SESSION_TOKEN=`cat ~/.aws.tmp | grep "SessionToken" | awk '{print $2}' | sed 's/",//g' | sed 's/"//g'`
touch ~/awscreds
echo export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID > ~/awscreds
echo export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY >> ~/awscreds
echo export AWS_SESSION_TOKEN=$AWS_SESSION_TOKEN >> ~/awscreds
#echo export USER_ENV=$user_env >> ~/awscreds
source ~/awscreds
