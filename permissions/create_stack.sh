#!/bin/bash 
echo 
echo "------- creating permission stack ----------- " 
aws cloudformation create-stack --stack-name perm --template-body file://perm.yaml  --capabilities CAPABILITY_NAMED_IAM  $*

aws cloudformation wait stack-create-complete --stack-name perm

# To pass different environment information 
# ./create_stack.sh --parameters ParameterKey=environment,ParameterValue=prod

echo "Elapsed Time to create permission stack: (using \$SECONDS): $SECONDS  seconds"
echo 
