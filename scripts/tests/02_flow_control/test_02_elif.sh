#/bin/bash 

source "scripts/tests/base_test.sh"
SCRIPT="scripts/02_flow_control/02_elif.sh"

test_case "Comprobación número fuera de rango" \
    "echo -e \"12\" | $SCRIPT" \
    "El número indicado está fuera del rango de notas." \
    1

test_case "suspenso" \
    "echo -e \"2\" | $SCRIPT" \
    "Tu calificación es: Suspenso" \
    0

test_case "Aprobado" \
    "echo -e \"5\" | $SCRIPT" \
    "Tu calificación es: Aprobado" \
    0

test_case "Bien" \
    "echo -e \"6\" | $SCRIPT" \
    "Tu calificación es: Bien" \
    0

test_case "Notable" \
    "echo -e \"7\" | $SCRIPT" \
    "Tu calificación es: Notable" \
    0

test_case "Nota Sobresaliente" \
    "echo -e \"9\" | $SCRIPT" \
    "Tu calificación es: Sobresaliente" \
    0

summary || exit 1
