Connect-SqlClone -ServerUrl 'http://localhost:14145'
$SqlServerInstance = Get-SqlCloneSqlServerInstance -MachineName DESKTOP-H4M4K2E -InstanceName "" `

$imageName = "AdventureWorksDW2017" 

$image = Get-SqlCloneImage -Name $imageName
$image | New-SqlClone -Name 'AdventureWorksDW2017_clone_Dev1' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorksDW2017_clone_Dev2' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorksDW2017_clone_Dev3' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorksDW2017_clone_Dev4' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorksDW2017_clone_Dev5' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorksDW2017_clone_Dev6' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorksDW2017_clone_Dev7' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorksDW2017_clone_Test1' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorksDW2017_clone_Test2' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorksDW2017_clone_Test3' -Location $sqlServerInstance | Wait-SqlCloneOperation
$image | New-SqlClone -Name 'AdventureWorksDW2017_clone_PreProd' -Location $sqlServerInstance | Wait-SqlCloneOperation

Pause
