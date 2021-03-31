$url="www.google.com"
$site_name="Google"

$IP_value=Resolve-DnsName -Name $url | Where-Object -Property "Type" -eq "A" | Select-Object -Property IPAddress | ForEach-Object -MemberName IPAddress
echo "L'adresse IPv4 de $site_name est :  $IP_value"
# Resolve-DnsName -Name "www.google.com" | Where-Object -Property "Type" -eq "A"| Select-Object -Property ifIndex | ForEach-Object -MemberName ifIndex
# echo "L'adresse IPv4 de Google est :  $IP_value"

#4 Résolution_DNS

# output :
# $url="www.google.com"
# $site_name="Google"

# $IP_value=Resolve-DnsName -Name $url | Where-Object -Property "Type" -eq "A" | Select-Object -Property IPAddress | ForEach-Object -MemberName IPAddress
# echo "L'adresse IPv4 de $site_name est :  $IP_value"
# L'adresse IPv4 de Google est :  216.58.206.228