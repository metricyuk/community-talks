Connect-SqlClone -ServerUrl 'http://localhost:14145'
$SqlServerInstance = Get-SqlCloneSqlServerInstance -MachineName DESKTOP-H4M4K2E -InstanceName "" `

$imageDestination = Get-SqlCloneImageLocation -Path '\\DESKTOP-H4M4K2E\Image'
$imageName = "AdventureWorks2017" 
$myMaskingModification = New-SqlCloneMask -Path 'C:\Code\demos-redgate-sql-provision\redgate\sql-provision\adventureworks-masking-rules.dmsmaskset'

$imageOperation = New-SqlCloneImage -Name $imageName `
  -SqlServerInstance $sqlServerInstance `
  -BackupFileName @('G:\backups\AdventureWorksDW2017.bak') `
  -Destination $imageDestination `
  -Modifications $myMaskingModification 

$imageOperation | Wait-SqlCloneOperation

Pause