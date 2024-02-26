Import-Module -Name MicrosoftTeams
Connect-MicrosoftTeams

$group = New-Team -DisplayName "Team" -Template "EDU_Class"
Get-Content ./teachers.txt | ForEach-Object {Add-TeamUser -GroupId $group.GroupId -Role Owner -User "$_" }
Get-Content ./students.txt | ForEach-Object {Add-TeamUser -GroupId $group.GroupId -User "$_" }
