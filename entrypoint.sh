#!/bin/bash

set -xe

if [ -z "${SKIP_GENERATE}" ]
then
    for f in ${1}
    do
      bash -c "devto generate ${f}"
    done
fi

args=()
[[ -n $DRY_RUN ]] && args+=( '--dry-run' )
[[ -n $PUBLISHED ]] && args+=( '--published' )

for f in ${1}
do
  bash -c "devto submit ${args[*]} ${f}"
done
