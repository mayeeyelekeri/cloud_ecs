#!/bin/bash 

echo 
echo "------ creating network stack ----" 
SECONDS=0 

aws cloudformation create-stack --stack-name nw --template-body file://network.yaml $*

aws cloudformation wait stack-create-complete --stack-name nw

# To pass different environment information 
# ./create_stack.sh --parameters ParameterKey=environment,ParameterValue=prod

echo "Elapsed Time to create network stack: (using \$SECONDS): $SECONDS  seconds"
echo 
