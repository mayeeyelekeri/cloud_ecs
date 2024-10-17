#!/bin/bash

dirs=(ecs permissions network)
#dirs=(codepipeline codedeploy codebuild autoscale alb permissions network)

# Change into each directory and execute delete stack script
for i in "${dirs[@]}"
do
   echo deleting $i stack ....
   (cd $i && ./delete_stack.sh)
   echo .. done deleting $i stack!!!
done

