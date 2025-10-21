#!/bin/bash
#se crea la funcion
function es_par {


#estructura if
if (( $1 % 2 == 0 )); then
    return 0
else
    return 1
fi

}

read -p "Introduce un numero: " num

es_par $num

if [[ $? -eq 0 ]];then
#Llama a la funcion
echo "$num es par"


else

echo "$num es impar"

fi

#retunr detiene la ejecucion de la funcion y envia un codigo de salida al proceso que la llamó.