# Get-Help, Get-Item, Get-Member

# #comment
##Get-Help Get-Item
##Get-Help Get-Member
# Get-Item "./perlimpinpin.txt" 
# Get-Member "./perlimpinpin.txt"
$command_get_item_perlimpinpin= Get-Item "./perlimpinpin.txt"
# Taille du fichier en octets
$command_get_item_perlimpinpin.Length
# Get-Item "./perlimpinpin.txt" | Select-Object -Property Length #better rending
# # output :

# Length
# ------
#      6
#Si le fichier est en lecture seule
$command_get_item_perlimpinpin.IsReadOnly  

# # output : nothing

#  L'heure du dernier accès au fichier

$command_get_item_perlimpinpin.LastAccessTime 
# Get-Item "./perlimpinpin.txt" | Select-Object -Property LastAccessTime

# # output : 
# LastAccessTime     
# --------------     
# 20/03/2021 15:14:22
# ou 
$command_get_item_perlimpinpin.LastAccessTimeUtc
# Get-Item "./perlimpinpin.txt" | Select-Object -Property LastAccessTimeUtc


#à voir comment utiliser get-member
#2 partie découverte 
# v3 avec where-object