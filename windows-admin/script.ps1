$currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
Write-Output $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)

