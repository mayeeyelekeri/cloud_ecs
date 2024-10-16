aws cloudformation create-stack --stack-name nw --template-body file://network.yaml $*

aws cloudformation wait stack-create-complete --stack-name nw

# To pass different environment information 
# ./create_stack.sh --parameters ParameterKey=environment,ParameterValue=prod
