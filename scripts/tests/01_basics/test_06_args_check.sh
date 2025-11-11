#!/bin/bash
source "scripts/tests/base_test.sh"
SCRIPT="scripts/01_basics/06_errors.sh"

test_case "nada que comprobar salvo código de salida 0" \
  "$SCRIPT" \
  "*" \
  0

summary || exit 1