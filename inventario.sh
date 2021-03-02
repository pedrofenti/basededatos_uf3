#!/bin/bash

clear

MYSQL="mysql -u consultas amongmeme"

echo""
echo "Inventario de AmongMeme"
echo "======================="
echo " "

echo "Que quieres hacer?"
echo "------------------"
echo "1. Mostrar Personajes"
echo "2. Mostrar Inventario de un Personaje"
echo "3. Salir"

read RESPUESTA

if [ "$RESPUESTA" == "1" ]; then
	echo "Personajes:"
	echo "select id_character, name from characters" | $MYSQL

elif [ "$RESPUESTA" == "2" ]; then
	echo "Inventario de que personaje?"
	read PERSONAJE
	if [ "$PERSONAJE" == "" ]; then
		echo "No has introducido ningun valor"
		exit 1
	fi

	echo "select * from view_char_items where id_character=$PERSONAJE" | $MYSQL | cut -f 4

elif [ "$RESPUESTA" == "3" ]; then
	echo " "

else
	echo "Respuesta incorrecta"

fi
