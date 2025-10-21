#!/bin/bash

read -p "introduce un numero entero: " NUMERO

if [[ $NUMERO -gt 10 ]]; then
echo "el numero es mayor a 10"
else
echo "el numero es menor a 10"
fi

