#!/bin/bash 
echo "" 
echo "list IP address of ECS task"

taskarn=`aws ecs list-tasks --cluster mycluster --service-name ecsService --query taskArns[0] | tr -d '"'`

eni=`aws ecs describe-tasks --cluster mycluster --tasks $taskarn --query tasks[0].attachments[0].details[1].value | tr -d '"'` 

publicip=`aws ec2 describe-network-interfaces --network-interface-ids $eni  --query NetworkInterfaces[0].PrivateIpAddresses[0].Association.PublicIp | tr -d '"'`

echo $publicip


