$route=$(Get-NetRoute | Where-Object -Property "RouteMetric" -eq "0" | Select-Object -Property NextHop | ForEach-Object -MemberName NextHop)
$ip=$args[0]
if  (!$route) {
    echo "Ce PC n'a pas de passerelle par défaut !"
    exit 1
}

echo "L'adresse passerelle est :" $route


if (!$args[0]) {
    while (1){
        ping $route -n 1 -w 2 | Out-Null
        
        if ( $? -eq 0) {
            Write-Host -Nonewline "!"
        }
        else{
            Write-Host -Nonewline "."

        }

        Start-Sleep 10
    }
}
echo "L'adresse IP en argument est :" $ip
while (1){

    ping $ip -n 1 -w 2 | Out-Null
    
    if ($? -eq 0) {
            Write-Host -Nonewline "!"
            
        }
    else{
         Write-Host -Nonewline "."

    }
    
        Start-Sleep 10
    }










#5 Détecteur_de_coupure_de_connexion

# output :

# case 1:
# L'adresse passerelle est :
# 10.0.2.2
# ......!.!!.!......

# case 2 :
# Ce PC n'a pas de passerelle par dÃ©faut !
# case 3 :


# PS C:\Users\Administrateur.WIN-UU9EAKBJJH3\Desktop> & '.\Sans titre1.ps1' 10.0.2.1
# L'adresse passerelle est :
# 10.0.2.2
# L'adresse IP en argument est :
# 10.0.2.1
# !.!!!!!!!!!!