$proxy_url="proxya.u-pec.fr"
$proxy_url="8.8.8.8"

$counting_limit="10"

foreach ($i in 1..$counting_limit){
    # Write-Host $i
    Test-NetConnection $proxy_url

}
# Test-Connection 8.8.8.8 -count 10




#3  Statistiques_RTT

# new output :

# ComputerName           : 8.8.8.8
# RemoteAddress          : 8.8.8.8
# InterfaceAlias         : Wi-Fi2
# SourceAddress          : 192.168.1.119
# PingSucceeded          : True
# PingReplyDetails (RTT) : 9 ms

# ComputerName           : 8.8.8.8
# RemoteAddress          : 8.8.8.8
# InterfaceAlias         : Wi-Fi2
# SourceAddress          : 192.168.1.119
# PingSucceeded          : True
# PingReplyDetails (RTT) : 27 ms

# ComputerName           : 8.8.8.8
# RemoteAddress          : 8.8.8.8
# InterfaceAlias         : Wi-Fi2
# SourceAddress          : 192.168.1.119
# PingSucceeded          : True
# PingReplyDetails (RTT) : 39 ms

# ComputerName           : 8.8.8.8
# RemoteAddress          : 8.8.8.8
# InterfaceAlias         : Wi-Fi2
# SourceAddress          : 192.168.1.119
# PingSucceeded          : True
# PingReplyDetails (RTT) : 30 ms

# ComputerName           : 8.8.8.8
# RemoteAddress          : 8.8.8.8
# InterfaceAlias         : Wi-Fi2
# SourceAddress          : 192.168.1.119
# PingSucceeded          : True
# PingReplyDetails (RTT) : 43 ms

# ComputerName           : 8.8.8.8
# RemoteAddress          : 8.8.8.8
# InterfaceAlias         : Wi-Fi2
# SourceAddress          : 192.168.1.119
# PingSucceeded          : True
# PingReplyDetails (RTT) : 30 ms

# ComputerName           : 8.8.8.8
# RemoteAddress          : 8.8.8.8
# InterfaceAlias         : Wi-Fi2
# SourceAddress          : 192.168.1.119
# PingSucceeded          : True
# PingReplyDetails (RTT) : 7 ms

# ComputerName           : 8.8.8.8
# RemoteAddress          : 8.8.8.8
# InterfaceAlias         : Wi-Fi2
# SourceAddress          : 192.168.1.119
# PingSucceeded          : True
# PingReplyDetails (RTT) : 33 ms

# ComputerName           : 8.8.8.8
# RemoteAddress          : 8.8.8.8
# InterfaceAlias         : Wi-Fi2
# SourceAddress          : 192.168.1.119
# PingSucceeded          : True
# PingReplyDetails (RTT) : 24 ms

# ComputerName           : 8.8.8.8
# RemoteAddress          : 8.8.8.8
# InterfaceAlias         : Wi-Fi2
# SourceAddress          : 192.168.1.119
# PingSucceeded          : True
# PingReplyDetails (RTT) : 9 ms


# old output

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
