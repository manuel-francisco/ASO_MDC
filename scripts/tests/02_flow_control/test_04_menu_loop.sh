#!/bin/bash
source "scripts/tests/base_test.sh"
SCRIPT="scripts/02_flow_control/04_menu_loop.sh"

test_case "opcion 1" \
  "echo -e \"1\n4\" | $SCRIPT" \
  "*La fecha actual es*" \
  0

test_case "opcion 2" \
  "echo -e \"2\n4\" | $SCRIPT" \
  "*El usuario actual es*" \
  0

  test_case "opcion 3" \
  "echo -e \"3\n4\" | $SCRIPT" \
  "*El directorio de trabajo es*" \
  0


  test_case "opcion 4" \
  "echo -e \"4\n\" | $SCRIPT" \
  "*Adios*" \
  0

  test_case "cualquier otra opcion" \
  "echo -e \"5\n4\" | $SCRIPT" \
  "*Elige una opcion entre 1-4*" \
  0



summary || exit 1