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
echo "3. Mostrar Items"
echo "4. Insertar Item"
echo "5. Salir"

read RESPUESTA

if [ "$RESPUESTA" == "1" ]; then
	echo " "
	echo "Personajes:"
	echo "select id_character, name from characters" | $MYSQL

elif [ "$RESPUESTA" == "2" ]; then
	echo " "
	echo "Insertar un nuevo personaje"
	echo "==========================="
	echo "NAME:"
	read NAME
	echo "AGE:"
	read AGE
	echo "HP:"
	read HP
	echo "GENDER:"
	read GENDER
	echo "STYLE:"
	read STYLE
	echo "MANA:"
	read MANA
	echo "CLASS:"
	read CLASS
	echo "RACE:"
	read RACE
	echo "XP:"
	read XP
	echo "LEVEL:"
	read LEVEL
	echo "HEIGHT:"
	read HEIGHT
	
	echo "insert into characters ('name', 'age', 'hp', 'gender', 'style', 'mana', 'class', 'race', 'xp', 'level', 'height') values ( 




elif [ "$RESPUESTA" == "3" ]; then
	echo " "
	echo "Items:"
	echo "select id_item, item from items" | $MYSQL


elif [ "$RESPUESTA" == "4" ]; then
	echo " "

else
	echo "Respuesta incorrecta"

fi
