#!/bin/bash
#solo son explicitamente 2 parametros
if [[ $# -ne 2 ]];then
echo "Uso: ./05_args_check.sh <num1> <num2>"
exit 1
#Si los parametros no son numericos
elif [[ ! $1 =~ ^[0-9]+$ || ! $2 =~ ^[0-9]+$ ]];then
echo "los parametros no son numericos"
#si no se cumplen las anteriores condiciones
else
suma=$(($1+$2))
echo "La suma de los dos parametros es $suma"

fi
