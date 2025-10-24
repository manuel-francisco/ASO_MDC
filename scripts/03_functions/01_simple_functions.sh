#!/bin/bash

#He creado una funcion que saluda al usuario que estes usando.
saludo() {
	echo "¡Hola, $1! Bienvenido al mundo Bash."
}

# saludo es la funcion y a continuación pongo el valor de $1
saludo "$USER"
