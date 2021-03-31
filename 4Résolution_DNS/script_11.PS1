$url="www.google.com"

Resolve-DnsName -Name $url | Where-Object -Property "Type" -eq "A"
# Resolve-DnsName -Name "www.google.com" | Where-Object -Property "Type" -eq "A"


#4 Résolution_DNS

# output :
# Name                                           Type   TTL   Section    IPAddress                                
# ----                                           ----   ---   -------    ---------                                
# www.google.com                                 A      154   Answer     142.250.179.100                          


#La propriété qui donne le type d'enregistrement est type