$command=Get-NetAdapter -Physical| Select-Object -Property Name, Status,ifindex | Where-Object -Property "Status" -eq "Up"
$command_count_value = $command | Measure-Object -Property ifIndex -Sum | ForEach-Object -MemberName Count



# case 2
if ($command_count_value -lt 1){
    Write-Host "Pas d'interface branchée ! Vous devez en câbler au moins une." 
}
# case 3
elseif ($command_count_value  -gt 1){
    Write-Host "Il y a plusieurs interfaces branchées ! Une seule carte doit être câblée." 
}
# case 1
elseif ($command | Where-Object -Property "Status" -eq "Up" ){
    $name_card=$command | Select-Object -Property Name | ForEach-Object -MemberName Name
    Write-Host "Interface branchée : " $name_card
}

# $command=Get-NetAdapter -Physical| Select-Object -Property Name, Status,ifindex | ForEach-Object -MemberName ifIndex
# $ifIndex_value=Get-NetIPAddress -InterfaceAlias $card_alias -AddressFamily "IPv4" | Select-Object -Property ifIndex | ForEach-Object -MemberName ifIndex
# $ifIndex_value=Get-NetIPAddress -InterfaceAlias "Wi-Fi2" -AddressFamily "IPv4" | Select-Object -Property ifIndex | ForEach-Object -MemberName ifIndex
# echo "L'index de la carte Ethernet est : $ifIndex_value" 
#old
# Get-NetIpAddress | Where-Object {($_.Interfaceindex -eq "2") -and ($_.AddressFamily -eq "IPv4")}
#7 Cartes_réseau

# output :