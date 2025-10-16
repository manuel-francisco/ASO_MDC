#!/bin/bash

# Bloque con errores intencionados

# Bucle if con errores intencionados

#set -x

#numero=1

#if[[$numero-eq1]]; then
#	echo "El numero es correcto."
#fi


# echo con la variable sin definir intencionadamente

#set -u

#echo "La palabra es $palabra."


# Comando que falla intencionadamente

#set -e

#ls /jaimito/hola.txt




# Bloque con los errores corregidos

# Bucle if corregido

set -x

numero=1

if [[ $numero -eq 1 ]]; then
	echo "El numero es correcto."
fi


# echo con la variable definida correctamente

set -u

palabra=patata

echo "La palabra es $palabra."


# Comando que funciona

set -e

ls /home/jaime/Documents

