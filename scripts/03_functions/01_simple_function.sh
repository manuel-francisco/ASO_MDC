#!/bin/bash

# se crea la función saludo()
saludo() {
	echo "Bienvenido $(whoami), este mensaje fue definido en una función."
}

# se llama la función
saludo

# segundo mensaje
echo "Adios $(whoami), este mensaje no fue definido en una función."
