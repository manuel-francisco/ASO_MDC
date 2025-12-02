#!/bin/bash

source "scripts/tests/base_test.sh"
SCRIPT="scripts/01_basics/03_io.sh"

test_case "nombre y edad válidos" \
	"echo -e \"Manuel\n40\" | $SCRIPT" \
	"*te quedan * años*" \
	0

test_case "edad vacía" \
	"echo -e \"Manuel\n\" | $SCRIPT" \
	"*Error: *" \
	1

test_case "edad no numérica" \
	"echo -e \"Manuel\nabc\" | $SCRIPT" \
	"*Error: *" \
	1

test_case "edad con espacios" \
	"echo -e \"Mnauel\n40abc\" | $SCRIPT" \
	"*Error : *" \
	1

summary || exit 1
