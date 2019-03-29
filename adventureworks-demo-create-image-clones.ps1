Connect-SqlClone -ServerUrl 'http://localhost:14145'
$SqlServerInstance = Get-SqlCloneSqlServerInstance -MachineName DESKTOP-H4M4K2E -InstanceName "" `

$imageDestination = Get-SqlCloneImageLocation -Path '\\DESKTOP-H4M4K2E\Provision\Image'
$imageName = "Demo" 
$myMaskingModification = New-SqlCloneMask -Path 'C:\@Code\demos\redgate\sql-provision\adventureworks-demo.dmsmaskset'

$imageOperation = New-SqlCloneImage -Name $imageName `
  -SqlServerInstance $sqlServerInstance `
  -BackupFileName @('\\DESKTOP-H4M4K2E\Provision\Backup\AdventureWorksDW2017.bak') `
  -Destination $imageDestination `
  -Modifications $myMaskingModification 

$imageOperation | Wait-SqlCloneOperation

$image = Get-SqlCloneImage -Name $imageName
$image | New-SqlClone -Name 'AdventureWorks_clone_Mike' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorks_clone_John' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorks_clone_James' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorks_clone_Dom' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorks_clone_Niall' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorks_clone_Helen' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorks_clone_Luke' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorks_clone_Test001' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorks_clone_Test002' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorks_clone_Test003' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorks_clone_PreProd' -Location $sqlServerInstance | Wait-SqlCloneOperation
