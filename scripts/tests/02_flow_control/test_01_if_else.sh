#!/bin/bash
source "scripts/tests/base_test.sh"
SCRIPT="scripts/02_flow_control/01_if_else.sh"

test_case "comprobacion número mayor a 10" \
    "echo -e \"11\" | $SCRIPT" \
    "11 es más grande que 10" \
    0

test_case "comprobacion número menor a 10" \
    "echo -e \"-1\" | $SCRIPT" \
    "-1 no es más grande que 10" \
    0


summary || exit 1
