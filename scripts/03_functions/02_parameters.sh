#!/bin/bash

# Creamos las variables que usaremos mas adelante

nombre=$1
hora=$2

# Creamos las funcion

saludo_personalizado () {
# Depende de lo que introduzcamos en el segundo argumento aparecera un mensaje u otro
if [[ $hora = mañana ]]
then
echo "Buenos dias, $nombre. Que tengas una gran jornada"
elif [[ $hora = tarde ]]
then
echo "Buenas tardes, $nombre. Que tengas una buena tarde"
else
echo "Buenas noches, $nombre. Descansa"
fi
}

# Ejecutamos la funcion

saludo_personalizado
echo "Total de argumentos: $#"
