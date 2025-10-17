#!/bin/bash
#Esta linea indica como se llama el script
echo "El script se llama: $0"
#Esta linea recoge el primer numero y lo muestra por pantalla
echo "Primer numero: $1"
#Esta linea recoge el segundo numero y lo muestra por pantalla
echo "Segundo numero: $2"

if [ $# -ne 2 ]; then
	echo "Uso: ./05_args_check.sh <num1> <num2>"
	exit 1
fi

if ! [[ $1 =~ ^[0-9]+$ && $2 =~ ^[0-9]+$ ]]; then
	echo "Estos argumentos no son numericos"
	exit 2
fi

echo "Resultado: $(($1 + $2))"
