#!/bin/bash
source "scripts/tests/base_test.sh"
SCRIPT="scripts/01_basics/02_variables.sh"

test_case "saludo con curso" \
	"$SCRIPT" \
	"*Soy * de Segundo de ASIR.*" \
	0

test_case "fecha" \
	"$SCRIPT" \
	"*Hoy es *" \
	0

test_case "directorio" \
	"$SCRIPT" \
	"*Estoy trabajando en el directorio *" \
	0

summary || exit 1
