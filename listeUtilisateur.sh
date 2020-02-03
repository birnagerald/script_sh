#!/bin/bash
for user in $(cut -d ':' -f1,3 /etc/passwd) #lit ligne par ligne le fichier pour récuperer un utilisateur et l'UID selon le délimitateur fixé
do
if [[  $(echo $user |cut -d ':' -f2) -gt 100 ]] #extrais l'uid de la chaine de caractère et compare si elle est supérieure à 100
then
echo "$user"
fi
done
