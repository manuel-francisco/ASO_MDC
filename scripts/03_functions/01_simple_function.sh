#!/bin/bash

# Definimos la funcion saludo
saludo () {
    # Imprimimos por pantalla el siguiente mensaje.
    echo "¡Hola $(whoami)! Bienvenido al mundo de Bash."
}

# Llamamos a la funcion para que se ejecute
saludo

# Se añade un mensaje para controlar el flujo de la ejecucion
echo "Que tengas un buen dia"