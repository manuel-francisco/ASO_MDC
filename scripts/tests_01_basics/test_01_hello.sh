#!/bin/bash
source "scripts/tests/base_test.sh"
SCRIPT="scripts/01_basics/01_hello.sh"

test_case "contiene usuario" \
  "$SCRIPT" \
  "*El usuario es *" \
  0

test_case "contiene directorio de trabajo" \
  "$SCRIPT" \
  "*El directorio de trabajo es *" \
  0

test_case "contiene fecha" \
  "$SCRIPT" \
  "*La fecha es*" \
  0

summary || exit 1