#!/bin/bash

#script incorrecto ------

#if[$VAR==1]
#then
#echo "VAR es igual a 1"
#fi

#set -u
#echo $NUMERO

#set -e
#ls /pedro/peliculas


#script correcto ------

set -x
set -e
set -u

VAR=1
if [ "$VAR" == 1 ]; then
  echo "VAR es igual a 1"
fi

NUMERO=2004
echo $NUMERO

ls /git/ASO_MDC 
