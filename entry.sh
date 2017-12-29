#!/usr/bin/bash

export FSLDIR=/usr/local/fsl
export PATH="$PATH:$FSLDIR/bin"
. $FSLDIR/etc/fslconf/fsl.sh

exec "$@"