#!/bin/bash

# BLOQUE CON ERRORES

#echo "==================================================="

#var1='if[$VAR==10]; then echo "VAR es 10"; fi'
	echo "Ejecutando el if erroneo con eval"
#eval "$var1"

#echo "==================================================="

#echo "Valor del número: '$num'"

#echo "==================================================="

#echo "Ejecutando ls en una ruta especifica"
#	ls /etc/noexiste

#echo "==================================================="

# Fin de el script

#echo "Fin de el script"

#echo "==================================================="

# BLOQUE SIN ERRORES

set -euo pipefail

# Declarando las variables

var1=10
num=1

# El if correcto:

echo "==========================================="


if [ "$var1" -eq 10 ]; then 
	echo "var1  es 10"
fi

echo "==========================================="

echo "El número es: '$num'"

echo "==========================================="

# Comando correcto:

Ruta="/etc/NoExiste"

if [ -e "$Ruta" ]; then
	ls "$Ruta"
else
	echo "Error, $Ruta no existe."
fi

echo "==========================================="

echo "Fin del Script"











