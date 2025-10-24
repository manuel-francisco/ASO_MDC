#!/bin/bash

saludo () { #Definimos el nombre de la función
	echo "!Hola, $(whoami)! Bienvenido al mundo de Bash." #Definimos el mensaje que queremos imprimir cuando hagamos la llamada de la función
}

saludo #Hacemos la llamada de dicha función

echo "Este es un mensaje fuera de la función para comprobar el flujo de ejecución" #Escibimos un mensaje fuera de la flunción para ver la  diferencia de flujo de ejecución

