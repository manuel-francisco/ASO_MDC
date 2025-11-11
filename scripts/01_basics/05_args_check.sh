#!/bin/bash

if [ "$#" -ne 2 ]; then

echo "Erro introduzca dos argumentos "

exit 1
elif ! [[ "$1" =~ ^[0-9]+$ && "$2" =~ ^[0-9]+$ ]]; then

echo "Error tienen que ser dos valores numéricos"
exit 2
else 

res=$(($1 + $2))

echo " El resultado es $res"

fi
