aws cloudformation create-stack --stack-name ec2 --template-body file://ec2.yaml $*

# To pass different environment information 
# ./create_stack.sh --parameters ParameterKey=environment,ParameterValue=prod
