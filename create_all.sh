#!/bin/bash 

# bash internal command to get the elapsed time 
SECONDS=0

#### For signature error, run the command
sudo /usr/sbin/ntpdate pool.ntp.org

dirs=(network permissions codebuild codedeploy ec2 codepipeline ecs) 
#dirs=(network permissions alb autoscale codebuild codedeploy codepipeline lambda) 

# Change into each directory and execute create stack script 
for i in "${dirs[@]}"
do 
   echo Creating $i stack .... 
   (cd $i && ./create_stack.sh)
   echo .. done creating $i stack!!! 
done 

echo "Elapsed Time to create all stacks: (using \$SECONDS): $SECONDS  seconds"
