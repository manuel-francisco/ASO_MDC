#!/bin/bash

SALIDA=$(echo -e "11\n" | ./01_if_else.sh)

if [[ "$SALIDA" == *es mayor* ]]; then
    echo -e "[MAYOR]\tTEST OK"
else
    echo -e "[MAYOR]\tTEST FAILED"
    echo "Salida obtenida: $SALIDA"
    exit 1
fi



SALIDA=$(echo -e "9\n" | ./01_if_else.sh)

if [[ "$SALIDA" == *no es mayor* ]]; then
    echo -e "[MENOR]\tTEST OK"
else
    echo -e "[MENOR]\tTEST FAILED"
    echo "Salida obtenida: $SALIDA"
    exit 1
fi
