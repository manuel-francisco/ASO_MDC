#!/bin/bash

SALIDA=$(echo -e "1\n" | ./03_case_menu.sh)

if [[ "$SALIDA" == "$(date)" ]]; then
    echo -e "[FECHA]\tTEST OK"
else
    echo -e "[FECHA]\tTEST FAILED"
    echo "Salida obtenida: $SALIDA"
    exit 1
fi

SALIDA=$(echo -e "2\n" | ./03_case_menu.sh)

if [[ "$SALIDA" == "$(whoami)" ]]; then
    echo -e "[NOMBREUSUARIO]\tTEST OK"
else
    echo -e "[NOMBREUSUARIO]\tTEST FAILED"
    echo "Salida obtenida: $SALIDA"
    exit 1
fi

SALIDA=$(echo -e "3\n" | ./03_case_menu.sh)

if [[ "$SALIDA" == "Adiós" ]]; then
    echo -e "[SALIR]\tTEST OK"
else
    echo -e "[SALIR]\tTEST FAILED"
    echo "Salida obtenida: $SALIDA"
    exit 1
fi

SALIDA=$(echo -e "4\n" | ./03_case_menu.sh)

if [[ "$SALIDA" == "Opción no válida" ]]; then
    echo -e "[ERROR]\tTEST OK"
else
    echo -e "[ERROR]\tTEST FAILED"
    echo "Salida obtenida: $SALIDA"
    exit 1
fi
