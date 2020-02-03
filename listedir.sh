#!/bin/bash
cd $1
fichiers="######## fichiers dans $1" 
dossiers="######## dossiers dans $1"
for list in $(ls -1) #parcourt la liste de fichiers et de répertoires trouvés
do
if [ -d "$list" ] #vérifie si c'est bien un répertoire
then dossiers="$dossiers $1$list" #si oui l'ajouter à la liste
elif [ -e "$list" ]  #sinon vérifier que c'est un fichier
then fichiers="$fichiers $1$list"
fi
done
echo $fichiers #affiche la liste des fichiers
echo $dossiers #afiche la liste des répertoires