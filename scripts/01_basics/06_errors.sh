#!/bin/bash



#set -x    # muestra los comandos antes de ejecutarse
#set -e    # detiene el script si hay un error
#set -u    # error si se usa una variable no definida


read -p "¿Cuantos años tienes? " EDAD


if [[ $EDAD -ge 18 ]]
then
echo "Eres mayor de edad"
else
echo "No eres mayor de edad"
fi

echo  "Este comando funciona $(ls)"





# Al ejecutar esto por primera vez me salio un error de que habia una variable sin asignar
# Despues me salio un error diciendo que en la linea 13, habia un fallo, en este caso faltaban unos espacios
# Despues me salio un error en la expresion sintactica, ya que el then estaba mal puesto
# Una vez solucionado esto la primera parte ya no me saba fallos, ahora me da fallos el ls
# Daba fallo ya que esa ruta no existia, quitando esa ruta ahora si funciona

#read -p "¿Cuantos años tienes?"


#if[$EDAD -ge 18]then
#echo "Eres mayor de edad"
#else
#echo "No eres mayor de edad"
#fi

#echo  "Este comando falla $(ls /ruta/inexistente)"
