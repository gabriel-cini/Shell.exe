#!/bin/bash
Shell_User=/home/gabriel/Téléchargements/Shell_Userlist.csv
IFS=','
while read id prenom nom mdp role
do
echo "$id"
echo "$id,$prenom,$nom,$mdp,$role"
sudo userdel $prenom-$nom
done <'Shell_Userlist.csv'
