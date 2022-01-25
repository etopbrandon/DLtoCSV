$DLName = Read-Host "Please enter the full email for the Distribution List"

Connect-ExchangeOnline
Get-DistributionGroupMember -Identity $DLName | Select-Object -Property @{Name = 'Name'; Expression = {$_.DisplayName}}, @{Name = 'Email'; Expression = {$_.WindowsLiveID}} | Export-CSV DistributionListMembers.csv -notypeinformation