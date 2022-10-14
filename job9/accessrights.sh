#!/bin/bash
IFS=','
while read id prenom nom mdp role
do
echo "$id"
echo "$id,$prenom,$nom,$mdp,$role"
mdpc=$(perl -e 'print crypt($ARGV[0], "salt")', $mdp)
sudo useradd -m -p $mdpc $prenom-$nom
if [[ "$role" =~ .*Admin.* ]]
then
echo "is Admin"
sudo adduser $prenom-$nom sudo
sudo adduser $prenom-$nom adm
echo "Admin ajouter"
else
echo "utilsateur pas de privilège"
fi
done < ./Shell_Userlist.csv

