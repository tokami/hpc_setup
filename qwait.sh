#!/bin/sh

## Wait until job completed
JOBID=$1

while true
do
  if ! qstat | grep $JOBID | grep -q "\ [Q|R]\ "
  then
    echo "Not in queue"
    exit 0
    ##else
    ##echo "Still in queue"
  fi
  sleep 1
done
