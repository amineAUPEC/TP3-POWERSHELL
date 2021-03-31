$host_url="http://quelleheureestilenjoy.com/00.mp4"


    $Start_command= (Invoke-WebRequest -Uri $host_url -UseBasicParsing).Millisecond  
    0..1000 | ForEach-Object {$i++} 
    $End_command= (Invoke-WebRequest -Uri $host_url -UseBasicParsing).Millisecond
    echo "Temp pour download/lire la vidéo d'EnjoyPhoenix : $($End_command-$Start_command) en ms "

#6 Temps_de_réponse_de_sites_Web

# output :
# fichier result_script16
# Invoke-WebRequest -Uri http://quelleheureestilenjoy.com/00.mp4 -UseBasicParsing  

# $output = Invoke-WebRequest -Uri http://quelleheureestilenjoy.com/00.mp4 -UseBasicParsing | Measure-Command -Expression { for ($i=0; $i -lt $_; $i++) {$i} }
# Write-Host $output

# 10, 20, 50|  Measure-Command -Expression { for ($i=0; $i -lt $_; $i++) {$i} }| Invoke-WebRequest -Uri http://quelleheureestilenjoy.com/00.mp4 -UseBasicParsing 
# Write-Host $output

# 10, 20, 50 | Measure-Command -Expression { for ($i=0; $i -lt $_; $i++) {$i} }

# https://www.pluralsight.com/blog/tutorials/measure-powershell-scripts-speed

# old version recentversv2