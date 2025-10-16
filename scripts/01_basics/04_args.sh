#!/bin/bash

echo "El nombre del script es $0"
echo "Primer número: $1"
echo "Segundo número: $2"
resl=$(( $1 + $2 ))
echo "Resultado: $resl"
