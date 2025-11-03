#!/bin/bash

#Funcion saludo, muestra el mensaje de la funcion y el usuario actual
saludo() {
echo -e "\n¡Hola, usuario! Bienvenido al mundo de Bash"
echo "Soy $(whoami)"
}
#Llama a la funcion para que se ejecuten los comandos
saludo

#Mensaje final para el flujo de ejecucion
echo -e "________________________________\n"
echo -e "La funcion \"saludo\" ha terminado \n"
