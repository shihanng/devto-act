#!/bin/sh

echo $SKIP_GENERATE

for f in ${1}
do
  sh -c "devto generate ${f}"
done
