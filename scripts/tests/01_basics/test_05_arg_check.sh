#!/bin/bash
source "scripts/test/base_test.sh"
SCRIPT="scripts/01_basics/05_args_check.sh"

test_case "valor vacio" \
	"echo -e \"6\n\" | $SCRIPT" \
	"*Uso: ./05_args_check.sh <num1> <num2>*" \
	1

test_case "valor no numerico" \
	"echo -e \"6\njhoihio\" | $SCRIPT" \
	"*Error: debe introducir numeros*" \
	2

test:case "correcto" \
	"echo -e \"6\n8\" | $SCRIPT" \
	"*La suma de ambos argumentos es 14*"\
	0

sumary || exit 1
