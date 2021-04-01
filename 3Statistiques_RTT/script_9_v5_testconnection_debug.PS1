$proxy_url="proxya.u-pec.fr"
$proxy_url="8.8.8.8"
$counting_limit="10"
$command = (Test-Connection $proxy_url -count $counting_limit) | measure-object -Property ResponseTime -Average
$average_RTT=$command.Average


Write-Host "For" $counting_limit "pings, the average RTT is of" $average_RTT


#


# old code :
# Test-Connection 8

# $connexion1= Test-Connection $proxy_url -count $counting_limit
# Test-Connection 8.8.8.8 -count 10
# 
# https://4sysops.com/archives/test-netconnection-vs-test-connection-testing-a-network-connection-with-powershell/



#3  Statistiques_RTT

# output :

# 09
# 0931
# 093132
# 09313238
# 0931323812
# 093132381217
# 09313238121736
# 0931323812173622
# 093132381217362218
# 09313238121736221831



# old output :
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
