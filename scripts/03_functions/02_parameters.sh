#!/bin/bash

#Funcion que contiene los dos parametros, el nombre y la hora del dia
saludo_personalizado(){

#Parametros
NOMBRE=$1
HORA=$2

#If para mostrar un mensaje dependiendo de la hora del dia
if [[ $HORA == mañana ]]; then
echo "Buenos días, $NOMBRE. Que tengas un buen dia"

elif [[ $HORA == tarde ]]; then
echo "Buenas tardes, $NOMBRE. Ve a dormir una siesta"

else
echo "Buenas noches, $NOMBRE. Que duermas con los angelitos"
fi

#Muestra el numero de argumentos que se han recibido
echo "Numero de argumentos: $#"

}

saludo_personalizado Pedro tarde
