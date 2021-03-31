Get-ChildItem ".\" | Where-Object -Property Length -GT 100 | Select-Object Name, Length


#2 partie découverte 
#output

# Name            Length
# ----            ------
# script_2.PS1       195
# script_2_v2.PS1    180
# script_3.PS1       288