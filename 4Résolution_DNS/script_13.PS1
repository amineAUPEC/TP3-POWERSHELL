$hostfile="./hosts.txt"

#boucle foreach
foreach($line in Get-Content $hostfile) {
    $IP_value= Resolve-DnsName -Name $line | Where-Object -Property "Type" -eq "A" | Select-Object -Property IPAddress | ForEach-Object -MemberName IPAddress

    echo "$line $IP_value"

}



# sans boucle foreach :

# $URL_value= Get-Content $hostfile | Resolve-DnsName -Name $url | Where-Object -Property "Type" -eq "A" | Select-Object -Property IPAddress | ForEach-Object -MemberName IPAddress
# $URL_value= Get-Content $hostfile | Resolve-DnsName -Name $url | Where-Object -Property "Type" -eq "A" | Select-Object -Property IPAddress | ForEach-Object -MemberName IPAddress

# $IP_value= Get-Content $hostfile | Resolve-DnsName -Name $url | Where-Object -Property "Type" -eq "A" | Select-Object -Property IPAddress | ForEach-Object -MemberName IPAddress
# echo "L'adresse IPv4 de $site_name est :  $IP_value"


# Resolve-DnsName -Name "www.google.com" | Where-Object -Property "Type" -eq "A"| Select-Object -Property ifIndex | ForEach-Object -MemberName ifIndex
# echo "L'adresse IPv4 de Google est :  $IP_value"

#4 Résolution_DNS

# output :
# PS E:\mylaptop\CDesktop\offline\augustin mojarad ECUE 31 - Administration système\TP3 POWERSHELL\scripts\autres\4Résolution_DNS> $hostfile="./hosts.txt"

# foreach($line in Get-Content $hostfile) {
#     $IP_value= Resolve-DnsName -Name $line | Where-Object -Property "Type" -eq "A" | Select-Object -Property IPAddress | ForEach-Object -MemberName IPAddress

#     echo "$line $IP_value"

# }
# www.google.com 142.250.74.228
# www.facebook.com 179.60.192.36


# foreach($line in Get-Content ./hosts.txt) {
#     echo $line
# }


# https://stackoverflow.com/questions/33511772/read-file-line-by-line-in-powershell