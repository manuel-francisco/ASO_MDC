#!/bin/bash

source "scripts/tests/base_test.sh"
SCRIPT="scripts/02_flow_control/04_menu_loop.sh"

test_case "prueba de salida" \
    "echo -e \"4\" | $SCRIPT" \
    "*Saliendo del programa.*" \
    0

test_case "Prueba salida fecha" \
    "echo -e \"1\n4\" | $SCRIPT" \
    "*La fecha actual es: *" \
    0
test_case "Prueba mostrar el usuario" \
    "echo -e \"2\n4\" | $SCRIPT" \
    "*El usuario actual es:*" \
    0
test_case "Prueba mostrar el directorio actual" \
    "echo -e \"3\n4\" | $SCRIPT" \
    "*El directorio actual es:*" \
    0
test_case "Prueba de opcion no válida con números" \
    "echo -e \"7\n4\" | $SCRIPT" \
    "*Opción no válida*" \
    0
test_case "Prueba de opción no válida con letras" \
    "echo -e \"abc\n4\" | $SCRIPT" \
    "*Opción no válida*" \
    0

summary || exit 1
