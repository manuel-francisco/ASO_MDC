#!/bin/bash
source "scripts/tests/base_test.sh"
SCRIPT="scripts/01_basics/04_args.sh"

test_case "nombre del script" \
  "$SCRIPT 2 3 | head -n 1" \
  "El script se llama *" \
  0

test_case "argumentos 7 y 8" \
  "$SCRIPT 7 8 | sed -n '2p;3p'" \
  "Primer número: 7
Segundo número: 8" \
  0

test_case "resultado correcto" \
  "$SCRIPT 7 8 | tail -n 1" \
  "Resultado: 15" \
  0

summary || exit 1