#!/bin/bash

#Crear la funcion
function saludo_personalizado {

#Estructura if
if [[ $2 == mañana ]];then

echo "Buenos dias, $1 . Que tengas una gran jornada"

elif [[ $2 == tarde ]];then

echo "Buenas noches, $1 . Descansa."

else

echo "Buenos tardes, $1 . Ya queda poco."

fi
#Cuantos parametros se recibido en la funcion
echo $#
}
saludo_personalizado "diego" "mañana"
