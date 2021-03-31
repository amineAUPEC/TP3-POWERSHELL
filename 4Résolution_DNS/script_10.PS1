$url="www.google.com"

Resolve-DnsName -Name $url
# Resolve-DnsName -Name "www.google.com"


#4 Résolution_DNS

# output :
# Name                                           Type   TTL   Section    IPAddress                                
# ----                                           ----   ---   -------    ---------                                
# www.google.com                                 AAAA   217   Answer     2a00:1450:4007:80b::2004                 
# www.google.com                                 A      92    Answer     142.250.179.100                          


#La propriété qui donne le type d'enregistrement est type