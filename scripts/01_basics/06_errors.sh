#!/bin/bash

# bloque if erróneo
#set -x
#if[[$USER == root]]; then
#	echo "eres el usuario raíz"
#fi
# variable no declarada
#set -u
#echo "$huh?"
# comando que falla
#set -e
#touch /proc/nofunciona.txt

set -x    # muestra los comandos antes de ejecutarse  
set -e    # detiene el script si hay un error  
set -u    # error si se usa una variable no definida  

if [[ $USER == root ]]; then
	echo "Eres el  usuario raíz."
else
	echo "No eres el usuario raíz."
fi

aha=Eureka
echo "$aha"

touch $PWD/funciona.txt
