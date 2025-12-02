#!/bin/bash

source "scripts/tests/base_test.sh"
SCRIPT="scripts/02_flow_control/02_elif.sh"

test_case "nota =5" \
        "echo -ne \"5\n\" | $SCRIPT" \
        "Calificación: Aprobado" \
        0

test_case "nota =6" \
        "echo -ne \"6\n\" | $SCRIPT" \
        "Calificación: Bien" \
        0

test_case "nota =7" \
        "echo -ne \"7\n\" | $SCRIPT" \
        "Calificación: Notable" \
        0

test_case "nota =8" \
        "echo -ne \"8\n\" | $SCRIPT" \
        "Calificación: Notable" \
        0
        
test_case "nota =10" \
        "echo -ne \"10\n\" | $SCRIPT" \
        "Calificación: Sobresaliente" \
        0

test_case "error" \
        "echo -ne \"111111111\n\" | $SCRIPT" \
        "Error" \
        0

summary || exit 1
