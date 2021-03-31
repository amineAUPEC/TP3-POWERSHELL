$proxy_url="proxya.u-pec.fr"
$proxy_url="8.8.8.8"

$counting_limit="10"
# Test-Connection $proxy_url -count $counting_limit
# Test-Connection 8.8.8.8 -count 10

Test-Connection $proxy_url -count $counting_limit | Get-Member -View All 
# Test-Connection 8.8.8.8 -count 10 | Get-Member -View All 




#3  Statistiques_RTT
# à REVOIR
# https://docs.microsoft.com/en-us/powershell/module/nettcpip/test-netconnection?view=windowsserver2019-ps
# output :


# PS E:\mylaptop\CDesktop\offline\augustin mojarad ECUE 31 - Administration système\TP3 POWERSHELL\scripts\autres\2Découverte> Test-Connection proxya.u-pec.fr  -Count 10

# Source        Destination     IPV4Address      IPV6Address                              Bytes    Time(ms) 
# ------        -----------     -----------      -----------                              -----    -------- 
# RT110-27     proxya.u-pec.fr         172.16.110.1          2001:4860:4860::8844                     32       57       
# RT110-27     proxya.u-pec.fr         172.16.110.1          2001:4860:4860::8844                     32       8        
# RT110-27     proxya.u-pec.fr         172.16.110.1          2001:4860:4860::8844                     32       6        
# RT110-27     proxya.u-pec.fr         172.16.110.1          2001:4860:4860::8844                     32       10       
# RT110-27     proxya.u-pec.fr         172.16.110.1          2001:4860:4860::8844                     32       7        
# RT110-27     proxya.u-pec.fr         172.16.110.1          2001:4860:4860::8844                     32       9        
# RT110-27     proxya.u-pec.fr         172.16.110.1          2001:4860:4860::8844                     32       54       
# RT110-27     proxya.u-pec.fr         172.16.110.1          2001:4860:4860::8844                     32       6        
# RT110-27     proxya.u-pec.fr         172.16.110.1          2001:4860:4860::8844                     32       7        
# RT110-27     proxya.u-pec.fr         172.16.110.1          2001:4860:4860::8844                     32       49       
