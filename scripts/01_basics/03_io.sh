#!/bin/bash

read -p "Introduce tu nombre: " nombre
read -p "Introduce tu edad: " edad


if [[ -z "$edad" ]]; then
    echo "La variable está vacía"
elif ! [[ "$edad" =~ ^[0-9]+$ ]]; then
    echo "La variable no es un número"
else
    edadfinal=$((100 - $edad))
    echo "Hola $nombre, te quedan $edadfinal años para cumplir 100."
fi
