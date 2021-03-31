Get-ChildItem ".\" | measure-object -Property length -Sum | Select-Object -Property Sum | ForEach-Object -MemberName Sum

# Résultat prévu : 3421 octets
#2 partie découverte 
# output :
# 3920
#working but v2 for filtring only one line