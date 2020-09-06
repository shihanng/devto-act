#!/bin/bash

set -e

if [ -z "${SKIP_GENERATE}" ]
then
    for f in ${1}
    do
      set -x; bash -c "devto generate ${f}"; set +x
    done
fi

args=()
[[ -n $DRY_RUN ]] && args+=( '--dry-run' )
[[ -n $PUBLISHED ]] && args+=( '--published' )
[[ -n $PREFIX ]] && args+=( "--prefix ${PREFIX}" )

for f in ${1}
do
  set -x; bash -c "devto submit ${args[*]} ${f}"; set +x
done
