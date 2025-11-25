#!/bin/bash
source "scripts/test/base_test.sh"
SCRIPT="scripts/02_flow_control/01_if_else.sh"

test_case "numero >10" \
	"echo -ne \"20\n\" | $SCRIPT" \
	"El numero 20 es mayor que 10" \
	0

test_case "numero igual 10" \
	"echo -ne \"10\n\" | $SCRIPT" \
	"Tu numero es 10" \
	0

test_case "numero <10" \
	"echo -ne \"5\n\" | $SCRIPT" \
	"El numero 5 es menor que 10" \
	0

summary || exit 1
