#!/bin/bash
# Comprobar que el usuario ha introducido exactamente dos argumentos
if [[ $# -ne 2 ]]; then
  echo "Uso: $0 <num1> <num2>"
  exit 1
fi

# Comprobar que ambos argumentos son numéricos usando expresiones regulares
if ! [[ $1 =~ ^[0-9]+$ && $2 =~ ^[0-9]+$ ]]; then
  echo "Error: Ambos argumentos deben ser números enteros."
  exit 2
fi

# Calcular la suma de ambos argumentos
suma=$(( $1 + $2 ))

# Mostrar el resultado
echo "La suma de $1 y $2 es: $suma"
