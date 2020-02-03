#!/bin/bash
if [ $# = 1 ] #Vérifie qu'il n'y a qu'un paramètre de passé
then
if [ -d "$1" ] #Vérifie si le paramètre est bien un dossier
	then
	echo "$1 est un répertoire qui existe"
	elif [ -e "$1" ]	#Sinon, vérifie que le paramètre correspond bien à un fichier
	then echo "$1 est un fichier qui existe"
		if [ -s "$1" ]
			then echo "$1 n'est pas vide"
			else echo "$1 est vide"
		fi
	else
	echo "Ce fichier n'existe pas" #Sinon, renvoie une erreur
	fi
	if [ -r $1 ] #Vérifie si le fichier/dossier est bien accessible en lecture
	then
	result="$1 est accessible par $USER en lecture"
	fi
	if [ -w $1 ] #et en écriture
	then
	result="$result et en écriture" #Si oui, affecte à result la phrase
	fi #fin de boucle
	echo $result #affiche les accès de l'utilisateur courant
else
echo "Vous ne devez passer qu'un seul paramètre au script" #affiche cette erreur si 0 ou plusieurs paramètres sont rentrés
fi
