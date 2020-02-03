#!/bin/bash
if [ $# != 2 ] ; then echo "Vous devez passez EXACTEMENT 2 paramètres seulement." # Affiche et vérifie si le nb de paramètres passés est correct
else 
CONCAT="$1$2" #La variable CONCAT prend la valeur de l'addition des paramètres passés par l'utilisateur
echo "$CONCAT" #Affiche la variable
fi #Fin de la boucle
