#!/bin/bash

clear

MYSQL="mysql -u gestor amongmeme"

echo""
echo "Inventario de AmongMeme"
echo "======================="
echo " "

echo "Que quieres hacer?"
echo "------------------"
echo "1. Mostrar Personajes"
echo "2. Insertar Personaje"
echo "3. Eliminar Personaje"
echo "4. Mostrar Items"
echo "5. Insertar Item"
echo "6. Eliminar Item"
echo "7. Mostrar Inventario de un Personaje"
echo "8. Dar Item a un Personaje"
echo "Q. Salir"
echo " "

read RESPUESTA

if [ "$RESPUESTA" == "Q" ] || [ "$RESPUESTA" == "q" ] || [ "$RESPUESTA" == "" ]; then
	echo "Exit"
	exit 0
fi

if [ "$RESPUESTA" == "1" ]; then
	echo " "
	echo "Personajes:"
	echo "select id_character, name from characters" | $MYSQL

elif [ "$RESPUESTA" == "2" ]; then
	echo " "
	echo "Insertar un nuevo personaje"
	echo "==========================="
	echo -n "NAME: "
	read NAME
	echo -n "AGE: "
	read AGE
	echo -n "HP: "
	read HP
	echo -n "GENDER: "
	read GENDER
	echo -n "STYLE: "
	read STYLE
	echo -n "MANA: "
	read MANA
	echo -n "CLASS: "
	read CLASS
	echo -n "RACE: "
	read RACE
	echo -n "XP: "
	read XP
	echo -n "LEVEL: "
	read LEVEL
	echo -n "HEIGHT: "
	read HEIGHT
	
	echo "INSERT INTO characters ('name', 'age', 'hp', 'gender', 'style', 'mana', 'class', 'race', 'xp', 'level', 'height') VALUES ( '$NAME', '$AGE', '$HP', '$GENDER', '$STYLE', '$MANA', '$CLASS', '$RACE', '$XP', '$LEVEL', '$HEIGHT' )" | $MYSQL


elif [ "$RESPUESTA" == "3" ]; then
	echo " "
	echo "Que Personaje quieres eliminar?"
	read INPUT
	
	if [`echo -n "$INPUT" | wc -m` -lt 4 ]; then
		echo "Error: El largo debe ser mayor o igual a 4 caracteres"
		exit 1
	else
		echo "DELETE FROM characters WHERE name LIKE '%$INPUT%'" | $MYSQL
	fi


elif [ "$RESPUESTA" == "4" ]; then
	echo " "
	echo "Items:"
	echo "select id_item, item from items" | $MYSQL


elif [ "$RESPUESTA" == "5" ]; then
	echo " "

elif [ "$RESPUESTA" == "6" ]; then
	echo ""

else
	echo "Respuesta incorrecta"

fi
