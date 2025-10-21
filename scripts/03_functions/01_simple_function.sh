#!/bin/bash

saludo() {
	echo "Hola $(whoami)! Bienvenido al mundo de Bash."
}

saludo

echo "Mensaje desde fuera de la funcioón saludo"
