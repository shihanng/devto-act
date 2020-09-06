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

PREFIX_VAL=""

if [ -n "${AUTO_PREFIX}" ]
then
    PREFIX_VAL="https://raw.githubusercontent.com/shihanng/articles/${GITHUB_REF}"
fi

[[ -n $PREFIX_VAL ]] && args+=( "--prefix ${PREFIX_VAL}" )

for f in ${1}
do
  set -x; bash -c "devto submit ${args[*]} ${f}"; set +x
done
