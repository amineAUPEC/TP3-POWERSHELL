#!/bin/bash
while true
do
ping 192.168.1.254 -c 1 -W 2 &> /dev/null
#sleep 10

#ping 192.168.1.087 -c 1 -i 2 > /dev/null
#echo $? aurait fournit la valeur de retour 
	 
if [ $? -eq 0 ]
	then 
		echo -n "."
else 
		echo -n "!"
		beep -f 1000
fi
sleep 10 #à  placer ici
done
#-c 1 maximum 1 requete
#-i maximum 2sec voire -w 2
# -q censé rendre muet message non affiché
#-q alternative vers un  fichier redirigé
#meilleure moyen redirigé vers /dev/null qui est un dossier qui s'auto-détruit un peu, c'est un trou noir linuxien
#



