Connect-SqlClone -ServerUrl 'http://localhost:14145'
$SqlServerInstance = Get-SqlCloneSqlServerInstance -MachineName DESKTOP-H4M4K2E -InstanceName "" `

$imageDestination = Get-SqlCloneImageLocation -Path '\\DESKTOP-H4M4K2E\Image'
$imageName = "StackOverflow" 
#$myMaskingModification = New-SqlCloneMask -Path 'C:\Code\demos\redgate\sql-provision\stackoverflow-masking-rules.dmsmaskset'

$imageOperation = New-SqlCloneImage -Name $imageName `
  -SqlServerInstance $sqlServerInstance `
  -BackupFileName @('\\vmware-host\Shared Folders\Backups\StackOverflow.bak') `
  -Destination $imageDestination #-Modifications $myMaskingModification 

$imageOperation | Wait-SqlCloneOperation