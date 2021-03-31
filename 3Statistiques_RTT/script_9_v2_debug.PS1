$proxy_url="proxya.u-pec.fr"
$proxy_url="8.8.8.8"

$counting_limit="10"

$command = (Test-NetConnection $proxy_url).PingReplyDetails.RoundTripTime
$counting_RTT="0"

foreach ($i in 1..$counting_limit){
    # Write-Host $i
    Write-Host "command_value" $command
    Write-Host "Previous value " $counting_RTT

    $counting_RTT= $counting_RTT + $command -as [int]
    Write-Host "new value "$counting_RTT
    # (Test-NetConnection $proxy_url).PingReplyDetails.RoundTripTime | measure-object -Property length -Sum

}


#


# old code :
# Test-Connection 8

# $connexion1= Test-Connection $proxy_url -count $counting_limit
# Test-Connection 8.8.8.8 -count 10
# 
# https://4sysops.com/archives/test-netconnection-vs-test-connection-testing-a-network-connection-with-powershell/



#3  Statistiques_RTT

# output :
# command_value 9
# Previous value  0
# new value  9
# command_value 9
# Previous value  9
# new value  18
# command_value 9
# Previous value  18
# new value  27
# command_value 9
# Previous value  27
# new value  36
# command_value 9
# Previous value  36
# new value  45
# command_value 9
# Previous value  45
# new value  54
# command_value 9
# Previous value  54
# new value  63
# command_value 9
# Previous value  63
# new value  72
# command_value 9
# Previous value  72
# new value  81
# command_value 9
# Previous value  81
# new value  90



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
