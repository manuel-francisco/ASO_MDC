#!/bin/bash

set -x
set -u
set -e

VAR=1
if [ "$VAR" == "1" ]; then
    echo "se cumple"
fi

NUMERO=0
echo "NUMERO vale: $NUMERO"

ls /dev/sda
