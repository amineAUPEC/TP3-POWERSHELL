$hostfile="./hosts_url.txt"

#boucle foreach
foreach($line in Get-Content $hostfile) {
    $URL_content_value= Invoke-WebRequest -Uri $line -UseBasicParsing  
    echo "$line output : "
    echo "$URL_content_value"

}
#6 Temps_de_réponse_de_sites_Web

# output :
# fichier result_script16
# Invoke-WebRequest -Uri http://quelleheureestilenjoy.com/00.mp4 -UseBasicParsing  
