#!/bin/bash
re='^[0-9]+$'
if [ $# != 1 ] ; #vérifie si la chaîne est null 
then
echo "Un nombre incorrect de paramètres a été passé"
fi
if [ $1 != "" ] ; #vérifie si la chaîne
	then
	if [[ $1 =~ $re ]] ; #vérifie si le paramètre est bien un nombre
		then
		for user in $(cut -d ':' -f1,3 /etc/passwd) #lit ligne par ligne le fichier pour récuperer un utilisateur et l'UID selon le délimitateur fixé
		do
			if [[  $(echo $user |cut -d ':' -f2) -eq $1 ]] ; #extrais l'uid de la chaine de caractère et compare si elle est supérieure à la variable passé en paramètre
			then
			echo $user |cut -d ':' -f2 #envoie l'UID de l'utilisateur
			break
			fi 
		done
	else
		for user in $(cut -d ':' -f1,3 /etc/passwd) #lit ligne par ligne le fichier pour récuperer un utilisateur et l'UID selon le délimitateur fixé
			do
				if [[  $(echo $user |cut -d ':' -f1) == $1 ]]  #extrais l'uid de la chaine de caractère et compare si elle est égale à la chaîne de caractère passé en paramètre
					then
					echo $user |cut -d ':' -f2 #envoie l'UID de l'utilisateur
					break
				fi
			done
	fi
fi
