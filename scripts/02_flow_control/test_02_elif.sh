#!/bin/bash

# Ejecuciones en el archivo 02_elif.sh
TEST1=$(echo -e "1\n" | ./02_elif.sh)
TEST2=$(echo -e "5\n" | ./02_elif.sh)
TEST3=$(echo -e "6\n" | ./02_elif.sh)
TEST4=$(echo -e "8\n" | ./02_elif.sh)
TEST5=$(echo -e "9\n" | ./02_elif.sh)
TEST6=$(echo -e " 2\n" | ./02_elif.sh)

# Mensajes que debe de aparecer en función del número introducido, nos aseguramos que 
# los test y los mensajes van acordes.
MENSAJE1="Tu calificación es: Suspenso"
MENSAJE2="Tu calificación es: Aprobado"
MENSAJE3="Tu calificación es: Bien"
MENSAJE4="Tu calificación es: Notable"
MENSAJE5="Tu calificación es: Sobresaliente"
MENSAJE6="El número indicado está fuera del rango de notas."

# Creamos una función para comprobar que introduciendo cada número 
# recibimos un mensaje concreto y que es el que tenemos que recibir
# Esta función devuelve un mensaje de OK o de FAILED.
funcion_test(){
if [[ "$1" ==  "$2" ]];then
    echo "TEST OK"
else
    echo "TEST FAILED"
    exit 1
fi 
}

# Iteramos mediante un bucle para no tener que escribir la función para cada test
for i in {1..6};do
    # Guardamos en una nueva variable el nombre de la variable que contiene el valor que queremos
    # Esto es lo mismo que escribir TEST1 y MENSAJE1 en la primera iteración
    variable_test="TEST${i}"
    variable_mensaje="MENSAJE${i}"
    # Realizamos una expansión indirecta con ${!texto} lo cual expande el valor dentro de la variable 
    # expandida, en este caso variable_test expande a TEST1 y como TEST1 es una variable y tiene un valor,
    # expandimos al valor de esa variable
    funcion_test "${!variable_test}" "${!variable_mensaje}"
done

