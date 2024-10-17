#!/bin/bash 

dirs=(network permissions   ecs) 
#dirs=(network permissions alb autoscale codebuild codedeploy codepipeline) 

# Change into each directory and execute update stack script 
for i in "${dirs[@]}"
do 
   echo Updating $i stack .... 
   (cd $i && ./update_stack.sh)
   echo .. done updating $i stack!!! 
done 
