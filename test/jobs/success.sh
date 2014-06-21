#!/bin/bash

if [ -z $1 ]; then
  duration=0
else
  duration=$1
fi

if [ -z $2 ]; then
  seqend=0
else
  seqend=$2
fi

echo "success-$3-stderr-begin" 1>&2
for i in $(seq 1 $seqend); do
  sleep $duration
  echo "success-$3-${i}"
done
echo "success-$3-stderr-end" 1>&2

