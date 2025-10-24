#!/bin/bash

# Script de una función simple.

saludo () {

usuario=$(whoami)

echo "¡Hola, $usuario! Bienvenido al mundo de Bash."

}

saludo # llamada a la función

echo "El script se ha terminado" # Mensaje final para comprobar el flujo de ejecución
