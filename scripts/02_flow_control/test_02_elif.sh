#!/bin/bash

SALIDA=$(echo -e "4\n" | ./02_elif.sh)

if [[ "$SALIDA" == *Suspenso* ]]; then
    echo -e "[SUSPENSO]\tTEST OK"
else
    echo -e "[SUSPENSO]\tTEST FAILED"
    echo "Salida obtenida: $SALIDA"
    exit 1
fi


SALIDA=$(echo -e "5\n" | ./02_elif.sh)

if [[ "$SALIDA" == *Aprobado* ]]; then
    echo -e "[APROBADO]\tTEST OK"
else
    echo -e "[APROBADO]\tTEST FAILED"
    echo "Salida obtenida: $SALIDA"
    exit 1
fi

SALIDA=$(echo -e "6\n" | ./02_elif.sh)

if [[ "$SALIDA" == *Bien* ]]; then
    echo -e "[BIEN]\tTEST OK"
else
    echo -e "[BIEN]\tTEST FAILED"
    echo "Salida obtenida: $SALIDA"
    exit 1
fi

SALIDA=$(echo -e "7\n" | ./02_elif.sh)

if [[ "$SALIDA" == *Notable* ]]; then
    echo -e "[NOTABLE]\tTEST OK"
else
    echo -e "[NOTABLE]\tTEST FAILED"
    echo "Salida obtenida: $SALIDA"
    exit 1
fi

SALIDA=$(echo -e "8\n" | ./02_elif.sh)

if [[ "$SALIDA" == *Notable* ]]; then
    echo -e "[NOTABLE]\tTEST OK"
else
    echo -e "[NOTABLE]\tTEST FAILED"
    echo "Salida obtenida: $SALIDA"
    exit 1
fi

SALIDA=$(echo -e "9\n" | ./02_elif.sh)

if [[ "$SALIDA" == *Sobresaliente* ]]; then
    echo -e "[SOBRESALIENTE]\tTEST OK"
else
    echo -e "[SOBRESALIENTE]\tTEST FAILED"
    echo "Salida obtenida: $SALIDA"
    exit 1
fi

SALIDA=$(echo -e "11\n" | ./02_elif.sh)

if [[ "$SALIDA" == *Error* ]]; then
    echo -e "[ERROR]\tTEST OK"
else
    echo -e "[ERROR]\tTEST FAILED"
    echo "Salida obtenida: $SALIDA"
    exit 1
fi
