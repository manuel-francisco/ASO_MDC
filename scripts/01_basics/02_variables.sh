#!/bin/bash



NOMBRE=$(whoami)  #Declaramos la variable NOMBRE
CURSO="Segundo de ASIR"  #Declaramos la variable CURSO
FECHA=$(date)  #Declaramos la variable FECHA


echo "Soy $NOMBRE de $CURSO."  #Imprimimos por pantalla el nombre y el curso usando las variables NOMBRE y CURSO
echo "Hoy es $FECHA."  #Imprimimos por pantalla la fecha usando la variable FECHA
echo "Estoy trabajando en el directorio $(pwd)." #Imprimimos por pantalla el directorio de trabajo usando $(pwd)
