$card_alias="Ethernet"
$card_alias="Wi-Fi2"


# Get-NetIPAddress -InterfaceAlias $card_alias -AddressFamily "IPv4"
# Get-NetIPAddress -InterfaceAlias "Wi-Fi2" -AddressFamily "IPv4"


# Get-NetIPAddress -InterfaceAlias $card_alias -AddressFamily "IPv4" | Select-Object -Property interfaceindex | ForEach-Object -MemberName interfaceindex
# Get-NetIPAddress -InterfaceAlias "Wi-Fi2" -AddressFamily "IPv4" | Select-Object -Property interfaceindex | ForEach-Object -MemberName interfaceindex

# output
# 18

# properties ifIndex
# $ifIndex_value=Get-NetIPAddress -InterfaceAlias $card_alias -AddressFamily "IPv4" | Select-Object -Property ifIndex | ForEach-Object -MemberName ifIndex
$ifIndex_value=Get-NetIPAddress -InterfaceAlias "Wi-Fi2" -AddressFamily "IPv4" | Select-Object -Property ifIndex | ForEach-Object -MemberName ifIndex
echo "L'index de la carte Ethernet est : $ifIndex_value" 
#old
# Get-NetIpAddress | Where-Object {($_.Interfaceindex -eq "2") -and ($_.AddressFamily -eq "IPv4")}
# Get-NetIpAddress | Where-Object {($_.InterfaceAlias -eq "Wi-Fi2") -and ($_.AddressFamily -eq "IPv4")}

#2 partie découverte 