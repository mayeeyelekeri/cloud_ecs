#!/bin/bash 

SECONDS=0

# just call the script which takes care of creating parameters 
. ~/INFO/secrets/nw_params.sh  $1

echo "Elapsed Time to create all Network stack: (using \$SECONDS): $SECONDS  seconds"
 
