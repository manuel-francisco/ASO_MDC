#!/bin/bash

# script que contiene errores

#set -u
#set -e

# var="adios"

#if[$var=="adios"];then
#	echo "se cumple la condicion"
#	echo $NUMERO
#	echo "(ls ~/docker)"
#fi
#
var="adios"
NUMERO=26
if [[ $var=="adios" ]];then
	echo "se cumple la condicion"

# Variable no declarada
	echo $NUMERO
# ruta inexitente
	echo "$(ls ~/bash)"
fi


