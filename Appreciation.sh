#!/bin/bash
echo "Veuillez rentrer une note"
read note #Attends et récupére la saisie utilisateur dès que la touche entrée a été pressée, et l'affecte à la variable note
re='^[0-9]+$'
if ! [[ $note =~ $re ]] ; then #Vérifie si le type de la variable est bien un integer et pas une chaîne de caractère
   echo "Ceci n'est pas un nombre" >&2; exit 1 
fi
if [ $note -le 20 ] && [ $note -gt 16 ]; #Vérifie si la variable est bien inférieur au premier nombre et supérieur au second nombre, et renvoie le message correspondant
then echo "Très bien"
elif [ $note -le 16 ] && [ $note -gt 14 ];
then echo "Bien"
elif [ $note -le 14 ] && [ $note -gt 12 ];
then echo "Assez Bien"
elif [ $note -le 12 ] && [ $note -gt 10 ];
then echo "Moyen"
elif [ $note -le 10 ];
then echo "Insuffisant"
else echo "Chiffre incorrect" #Si le type de la variable correspond bien à un int mais n'est pas compris dans le groupe de notes, il renvoie ce message d'erreur
fi
read -p "Veuillez presser Q pour quitter" -d 'q' #Bloque le programme tant que la lettre demandée n'est pas pressé
