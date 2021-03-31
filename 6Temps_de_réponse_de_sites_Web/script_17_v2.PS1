$host_url="http://quelleheureestilenjoy.com/00.mp4"


$time_to_dl=Measure-Command  {Invoke-WebRequest -Uri $host_url -UseBasicParsing  }  | Select-Object -Property Milliseconds | ForEach-Object -MemberName Milliseconds

echo "Temp pour download/lire la vidéo d'EnjoyPhoenix : $time_to_dl en ms "

    # Measure-Command  {Invoke-WebRequest -Uri $host_url -UseBasicParsing  }  
# output :


# Days              : 0
# Hours             : 0
# Minutes           : 0
# Seconds           : 3
# Milliseconds      : 729
# Ticks             : 37296602
# TotalDays         : 4,31673634259259E-05
# TotalHours        : 0,00103601672222222
# TotalMinutes      : 0,0621610033333333
# TotalSeconds      : 3,7296602
# TotalMilliseconds : 3729,6602

    # $Start_command= (Invoke-WebRequest -Uri $host_url -UseBasicParsing).Millisecond  
    # 0..1000| ForEach-Object {$i++} 
    # $End_command= (Invoke-WebRequest -Uri $host_url -UseBasicParsing).Millisecond
#6 Temps_de_réponse_de_sites_Web

# output :

# PS E:\mylaptop\CDesktop\offline\augustin mojarad ECUE 31 - Administration système\TP3 POWERSHELL\scripts\autres\6Temps_de_réponse_de_sites_Web> $host_url="http://quelleheureestilenjoy.com/00.mp4"


# $time_to_dl=Measure-Command  {Invoke-WebRequest -Uri $host_url -UseBasicParsing  }  | Select-Object -Property Milliseconds | ForEach-Object -MemberName Milliseconds


#     echo "Temp pour download/lire la vidéo d'EnjoyPhoenix : $time_to_dl en ms "
# Temp pour download/lire la vidéo d'EnjoyPhoenix : 432 en ms 



# annexed :
# Invoke-WebRequest -Uri http://quelleheureestilenjoy.com/00.mp4 -UseBasicParsing  

# $output = Invoke-WebRequest -Uri http://quelleheureestilenjoy.com/00.mp4 -UseBasicParsing | Measure-Command -Expression { for ($i=0; $i -lt $_; $i++) {$i} }
# Write-Host $output

# 10, 20, 50|  Measure-Command -Expression { for ($i=0; $i -lt $_; $i++) {$i} }| Invoke-WebRequest -Uri http://quelleheureestilenjoy.com/00.mp4 -UseBasicParsing 
# Write-Host $output

# 10, 20, 50 | Measure-Command -Expression { for ($i=0; $i -lt $_; $i++) {$i} }

# https://www.pluralsight.com/blog/tutorials/measure-powershell-scripts-speed