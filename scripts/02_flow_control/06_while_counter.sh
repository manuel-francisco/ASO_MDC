#!/bin/bash

# Le pedimos al usuario que introduzca un numero y lo almacenamos en la variable llamada numero
read -p "Introduzca un numero: " numero

# Inicimos la variable contador
contador=1

# Inicializamos el bucle while
while [[ $contador -le $numero ]] # Mientras que $contador sea menor o igual que $numero. 
do
                            
            echo $contador # Imprimimos el numero
            sleep 1 # Le ponemos un tiempo de espera
            ((contador++)) # Le sumamos un numero al contador hasta que llegue al numero que haya especificado el usuario

done

# Le mostramos un mensaje de que el contador ha finalizado e indicamos la cantidad de numeros que se han mostrado.
echo "Contador finalizado, se han mostrado $numero numeros."