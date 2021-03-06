#!/bin/bash

set -e

if [ -z "${SKIP_GENERATE}" ]
then
    for f in ${1}
    do
      set -x; bash -c "devto generate ${f}"; set +x
    done
fi

PREFIX_VAL=""

if [ -n "${AUTO_PREFIX}" ]
then
    REF="${GITHUB_HEAD_REF:-$GITHUB_REF}"
    PREFIX_VAL="https://raw.githubusercontent.com/${GITHUB_REPOSITORY}/${REF#refs/heads/}"
fi

for f in ${1}
do
  args=()
  [[ -n $DRY_RUN ]] && args+=( '--dry-run' )
  [[ -n $PUBLISHED ]] && args+=( '--published' )
  [[ -n $PREFIX_VAL ]] && args+=( "--prefix ${PREFIX_VAL}/$(dirname "${f#./}")/" )

  set -x; bash -c "devto submit ${args[*]} ${f}"; set +x
done
