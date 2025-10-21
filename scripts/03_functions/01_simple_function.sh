#!/bin/bash

# Creamos la funcion saludo, que contendra un mensaje para el usuario
saludo() {
echo "¡Hola $(whoami)! Bienvenido al mundo bash."
}

# Fuera de la funcion ejecutamos la funcion saludo
saludo

echo "Ya ha finalizado la funcion"
