#!/bin/bash 

echo 
echo "------ deleting stack "ECS" ------" 

aws cloudformation delete-stack --stack-name ecs

aws cloudformation wait stack-delete-complete --stack-name ecs

echo "Elapsed Time to delete ECS stack: (using \$SECONDS): $SECONDS  seconds"
echo 
