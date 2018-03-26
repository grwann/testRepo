$currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
$text = $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)

$UserPath = "%UserProfile%\Desktop\test.txt"
$text > $UserPath
