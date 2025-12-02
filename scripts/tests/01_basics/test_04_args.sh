#!/bin/bash
source "scripts/test/base_test.sh"
SCRIPT="scripts/01_basics/04_args.sh"

test_case "correcto"  \
	"echo -e \"4\n8\" | $SCRIPT" \
	"*Resultado: 12*"
	0
	summary || exit 1
