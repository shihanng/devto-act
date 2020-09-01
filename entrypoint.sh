#!/bin/bash

echo $SKIP_GENERATE

for f in ${1}
do
  devto generate "${f}"
done
