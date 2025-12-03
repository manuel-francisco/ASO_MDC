#!/bin/bash


source "scripts/tests/base_test.sh"
SCRIPT="scripts/02_flow_control/03_case_menu.sh"

test_case "Muestra fecha" \
    "echo -e \"1\" | $SCRIPT" \
    "*La fecha actual es: *" \
    0

test_case "Muestra usuario" \
    "echo -e \"2\" | $SCRIPT" \
    "*El usuario actual es: *" \
    0

test_case "Sale del programa" \
    "echo -e \"3\" | $SCRIPT" \
    "*Saliendo del programa*" \
    0
test_case "Opcion no válida numérica" \
    "echo -e \"7\" | $SCRIPT" \
    "*Opción no válida*" \
    1

test_case "Opción no válida no numérica" \
    "echo -e \"abc\" | $SCRIPT" \
    "*Opción no válida*" \
    1

test_case "Opción no válida vacía" \
    "echo -e \"\" | $SCRIPT" \
    "*Opción no válida*" \
    1

summary || exit 1
