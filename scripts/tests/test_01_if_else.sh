#!/bin/bash
source "scripts/tests/base_test.sh
SCRIPT="scripts/02_flow_control/01_if_else.sh"

test_case "se introdujo un número mayor que 10" \
  "echo -e \"20\" | $SCRIPT" \
  "El número que has introducido es mayor que 10" \
  0

test_case "se introdujo un 10" \
  "echo -e \"10\" | $SCRIPT" \
  "El número es igual a 10" \
  0

test_case "se introdujo un número menor que 10" \
  "echo -e \"5\" | $SCRIPT" \
  "El nnúmero es menor que 10"
  0

summary || exit 1
