#!/bin/bash
source "scripts/tests/base_test.sh"
SCRIPT="scripts/01_basics/02_variables.sh"

# 1. Primera línea: "Soy <algo> de Segundo de ASIR."
test_case "saludo con curso" \
  "$SCRIPT" \
  "*Soy * de Segundo de ASIR.*" \
  0

# 2. Segunda línea: debe empezar por "Hoy es"
test_case "fecha" \
  "$SCRIPT" \
  "*Hoy es *" \
  0

# 3. Tercera línea: "Estoy trabajando en el directorio ..."
test_case "directorio" \
  "$SCRIPT" \
  "*Estoy trabajando en el directorio *" \
  0

summary || exit 1