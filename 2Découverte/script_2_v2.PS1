# Get-Help, Get-Item, Get-Member
Get-Help Get-Item
Get-Help Get-Member
# Get-Item "./perlimpinpin.txt" 
# Get-Member "./perlimpinpin.txt"

# Taille du fichier en octets
Get-Item "./perlimpinpin.txt" | Select-Object -Property Length
# # output :

# Length
# ------
#      6
#Si le fichier est en lecture seule
Get-Item "./perlimpinpin.txt" | Where-Object IsReadOnly  

# # output : nothing

#  L'heure du dernier accès au fichier

Get-Item "./perlimpinpin.txt" | Select-Object -Property LastAccessTime

# # output : 
# LastAccessTime     
# --------------     
# 20/03/2021 15:14:22
# ou 
Get-Item "./perlimpinpin.txt" | Select-Object -Property LastAccessTimeUtc


#à voir comment utiliser get-member
#2 partie découverte 
#v2  avec select-object et where-object recent is v3