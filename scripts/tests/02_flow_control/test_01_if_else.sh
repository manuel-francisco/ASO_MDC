#!/bin/bash
source "scripts/tests/base_test.sh"
SCRIPT="scripts/02_flow_control/01_if_else.sh"

test_case "numero mayor que 10" \
  "echo -e \"11\n\" | $SCRIPT" \
  "*El numero 11 es*" \
  0

test_case "numero igual que 10" \
 "echo -e \"10\n\" | $SCRIPT" \
  "*Tu numero es *" \
  0

test_case "numero menor que 10" \
"echo -e \"9\n\" | $SCRIPT" \
  "*El numero *" \
  0

summary || exit 1