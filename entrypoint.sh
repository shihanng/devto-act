#!/bin/sh

if [ -z "${SKIP_GENERATE}" ]
then
    for f in ${1}
    do
      sh -c "devto generate ${f}"
    done
fi
