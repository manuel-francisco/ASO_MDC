#!/bin/bash

#definimos la función
function saludo(){
	echo "¡Hola, $(whoami)! Bienvenido al mundo de Bash."
}

#llamamos a la función
saludo

#texto fuera de la función para comprobar el flujo de ejecución
echo "Comprobación del flujo de ejecución."
