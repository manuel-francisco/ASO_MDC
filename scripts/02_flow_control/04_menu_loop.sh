#!/bin/bash

# Inicializamos un bucle while infinito, el cual se mantiene hasta que se detecte un exit
 
while true
do
	# Mostramos el menu al usuario
	echo "1) Mostrar fecha actual"
	echo "2) Mostrar usuario actual"
	echo "3) Mostrar directorio de trabajo"
	echo "4) Salir"

	# Le pedimos al usuario que escoja una opcion y la almacenamos en la variable opcion
	read -p "Escoja una de las siguientes opciones: " opcion

	# Creamos un case con las distintas condiciones
	case $opcion in

			1)
			  date
			  ;;

			2)
			  whoami
			  ;;

			3)
			  pwd
			  ;;
			
			4)
			  echo "Que tenga un buen dia"
			  exit 0
			  ;;

			*)
			  echo "Opcion no valida"
			  sleep 1
			  ;;
	esac

		# Añadimos el separador y sleep 1 para añadir un poco de tiempo entre ejecucion
		echo "-------------------------------------------"
		sleep 1
done
