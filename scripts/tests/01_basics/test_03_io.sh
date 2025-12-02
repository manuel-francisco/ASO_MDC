#!/bin/bash

source "scripts/test/base_test.sh"
SCRIPT="scripts/01_basics/01_hello.sh"


test_case "Nombre vacio" \
	"echo -e \"\n\n\" | $SCRIPT" \
	"*Debes introducir un valor*"\
	0

test_case "Edad incorrecta" \
	"echo -e \"Bartolo\nTrese\"  | $SCRIPT"
	"*Error: la edad debe ser un numero*"\
	0

test_case "Correcto" \
	"echo -e \"Bartolo\n19\" | $SCRIPT"
	"Hola $Bartolo, te quedan 81 años para cumplir 100"

sumary || exit 1
