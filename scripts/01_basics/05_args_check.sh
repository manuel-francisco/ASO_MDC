#!/bin/bash
if [[ $# -ne 2 ]]; then
  echo "Uso: ./05_args_check.sh <num1> <num2>"
  exit 1
fi

if ! [[ "$1" =~ ^-?[0-9]+$ ]] || ! [[ "$2" =~ ^-?[0-9]+$ ]]; then
  echo "Error: ambos argumentos deben ser numéricos."
  exit 2
fi

echo $(( $1 + $2 ))
