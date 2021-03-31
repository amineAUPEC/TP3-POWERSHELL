$proxyfile="./proxy.txt"
# list
# or multi list
#with two separated lists
$proxys_array=@('')
$access_time_array=@('')



#boucle foreach
foreach($line in Get-Content $proxyfile) {
    $time_to_acccess=Measure-Command  {Invoke-WebRequest -Uri $line -UseBasicParsing  }  | Select-Object -Property Milliseconds | ForEach-Object -MemberName Milliseconds
# append to list
    Write-Output "Temps pour accéder au proxy $line : $time_to_acccess en ms "
    $proxys_array += $proxys_array +$line
    $access_time_array += $access_time_array + $time_to_acccess
    
}

# order list by the min value show the multi list proxy value
# Write-Output $access_time_array | sort-Object | Select-Object -Unique
# $shortest_access_time=Write-Output $access_time_array | sort-Object | Select-Object -First 1
# $shortest_access_time=Write-Output $access_time_array | sort-Object -Descending
# $shortest_access_time=Write-Output $access_time_array | sort-Object | 
$minvalue=[int]($access_time_array | measure -Minimum).Minimum
$shortest_access_time = $access_time_array.IndexOf($minvalue)
$shortest_proxy= $proxys_array[$shortest_access_time]
$shortest_access_time= $access_time_array[$shortest_access_time]

# |Where-Object -Value -gt 
Write-Host -NoNewLine "shortest time : " 
Write-Host $shortest_access_time " ms"

Write-Host -NoNewLine "shortest proxy : " 
Write-Host $shortest_proxy



#6 Temps_de_réponse_de_sites_Web

# output :

# https://powershellexplained.com/2018-10-15-Powershell-arrays-Everything-you-wanted-to-know/
# https://dotnet-helpers.com/powershell/how-to-use-multidimensional-arrays-in-powershell/
# https://stackoverflow.com/questions/9397137/powershell-multidimensional-arrays
# https://redmondmag.com/articles/2019/01/28/multi-dimensional-powershell-arrays.aspx
# https://mcpmag.com/articles/2019/04/10/managing-arrays-in-powershell.aspx
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/sort-object?view=powershell-7.1
# https://stackoverflow.com/questions/42033959/get-minimum-value-in-an-array-and-then-get-index
# https://stackoverflow.com/questions/3896258/how-do-i-output-text-without-a-newline-in-powershell