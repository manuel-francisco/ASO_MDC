#!/bin/bash

read -p "introduzca un número: " numero

if [[ $numero -gt 10 ]]; then
echo "es mayor que diez"
else
echo "no es mayor que diez"
fi
