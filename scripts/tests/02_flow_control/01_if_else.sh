#!/bin/bash

read -p "introduzca un número: " numero

if [[ $numero -gt 10 ]]; then
echo "$numero es mayor que 10"
else
echo "$numero es menor que 10"
fi
