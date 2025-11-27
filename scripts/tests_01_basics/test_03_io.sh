#!/bin/bash
source "scripts/tests/base_test.sh"
SCRIPT="scripts/01_basics/03_io.sh"

test_case "nombre y edad válida" \
  "echo -e \"Manuel\n40\" | $SCRIPT" \
  "*Hola Manuel, te quedan * años para cumplir 100.*" \
  0

test_case "edad vacía" \
  "echo -e \"Manuel\n\" | $SCRIPT" \
  "*Error: debes introducir una edad numérica.*" \
  1

test_case "edad no numérica" \
  "echo -e \"Manuel\nabc\" | $SCRIPT" \
  "*Error: debes introducir una edad numérica.*" \
  1

test_case "edad con espacios" \
  "echo -e \"Manuel\n40abc\" | $SCRIPT" \
  "*Error: debes introducir una edad numérica.*" \
  1

summary || exit 1