Connect-SqlClone -ServerUrl 'http://localhost:14145'
$SqlServerInstance = Get-SqlCloneSqlServerInstance -MachineName DESKTOP-H4M4K2E -InstanceName ""
$imageName = "StackOverflow2013" 

Get-SqlCloneImage -Name $imageName | Remove-SqlCloneImage | Wait-SqlCloneOperation

Pause

