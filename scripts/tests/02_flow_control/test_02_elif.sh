#!/bin/bash
source "scripts/tests/base_test.sh"
SCRIPT="scripts/02_flow_control/02_elif.sh"

test_case "nota menor que o igual que 4" \
  "echo -e \"4\n\" | $SCRIPT" \
  "*Tu calificacion es: Suspenso*" \
  0

test_case "nota igual que 5" \
  "echo -e \"5\n\" | $SCRIPT" \
  "*Tu calificacion es: Aprobado*" \
  0

  test_case "nota igual que 6" \
  "echo -e \"6\n\" | $SCRIPT" \
  "*Tu calificacion es: Bien*" \
  0

  test_case "nota igual que 7 o 8" \
  "echo -e \"7\n\" | $SCRIPT" \
  "*Tu calificacion es: Notable*" \
  0



test_case "nota igual que 9 o 10" \
  "echo -e \"10\n\" | $SCRIPT" \
  "*Tu calificacion es: Sobresaliente*" \
  0


summary || exit 1