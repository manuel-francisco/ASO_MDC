#!/bin/bash
source "scripts/tests/base_test.sh"
SCRIPT="scripts/02_flow_control/03_case_menu.sh"

test_case "opcion 1" \
  "echo -e \"1\n\" | $SCRIPT" \
  "*La fecha actual es*" \
  0

test_case "opcion 2" \
  "echo -e \"2\n\" | $SCRIPT" \
  "*El usuario actual es*" \
  0

  test_case "opcion 3" \
  "echo -en \"3\n\" | $SCRIPT" \
  "*Adios*" \
  0

  test_case "cualquier otra opcion" \
  "echo -e \"5\n\" | $SCRIPT" \
  "*Opcion no valida*" \
  0



summary || exit 1