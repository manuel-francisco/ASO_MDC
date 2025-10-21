#!/bin/bash
#Usuario introduce el numero
read -p "Introduce un numero entero: " numero
#Se declara la variable contador para compararla en el while
contador=0
#Se realiza el bucle hasta que el contador sea igual al numero introducido
while [[ $numero -ne $contador ]];do
contador=$(( $contador + 1 ))
echo $contador
#tarda un segundo en segui el bucle
sleep 1



done


#se muestra el numero de numeros imprimidos por pantalla
echo "Se han mostrado $contador numero"
