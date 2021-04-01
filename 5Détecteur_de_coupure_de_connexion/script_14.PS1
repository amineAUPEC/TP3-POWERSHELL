while (1) {
    # ping 192.168.1.254 -n 1 -w 2 | Out-Null
    # ping 10.0.2.2 -n 1 -w 2 | Out-Null
    ping proxya.u-pec.fr -n 1 -w 2 | Out-Null
    # Write-Host -Nonewline $? #aurait fournit la valeur de retour 
         
    if ($? -eq "True") {
        Write-Host -Nonewline "."
    }
    else {
        Write-Host -Nonewline  "!"
        [System.Console]::Beep();
    }
    Start-Sleep 10 #à  placer ici
}
 
#-n 1 maximum 1 requete au lieu de -c
#-w 2 sec en timeout
# -q censé rendre muet message non affiché
#-q alternative vers un  fichier redirigé
#meilleure moyen redirigé vers /dev/null qui est un dossier qui s'auto-détruit un peu, c'est un trou noir linuxien
#
# > /dev/null | Out-Null
# > /dev/null ;  > NUL on cmd
# True au lieu de $? -eq 0








#5 Détecteur_de_coupure_de_connexion

# output :

# PS C:\Users\Administrateur.WIN-UU9EAKBJJH3\Desktop> C:\Users\Administrateur.WIN-UU9EAKBJJH3\Desktop\script_14.ps1
# ..!!!!!!.!....!!!!!!!!