Write-Output "starting"

$currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
$text = $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)

Write-Output $text

$UserPath = "Desktop\test.txt"
$text > $UserPath

Write-Output "done"
