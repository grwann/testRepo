Param(
    [string]$accountName="gracefstest",
    [string]$accountKey="SoV516YMBzP86Vr6H2GW3dDqFHFIJkRJcfd24ZndPPZTydSUhSpSRTvZwzPCIlSMLljK6Gdpe07x2j+pGwv5dw==",
    [string]$shareName="gracefileshare"
)

$connectFile = "c:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\ConnectShare.cmd"

if (!(Test-Path $connectFile -PathType Leaf)) {

	net use * /delete
	$cmd = "net use x: \\$accountName.file.core.windows.net\$shareName /u:$accountName $accountKey"
	$cmd | Add-Content $connectFile

	#New-ItemProperty -Path 'HKLM:SystemCurrentControlSetControlTerminal Server' -Name 'fDenyTSConnections' -Value 0 -PropertyType dword -Force
	#New-ItemProperty -Path 'HKLM:SystemCurrentControlSetControlTerminal ServerWinStationsRDP-Tcp' -Name 'UserAuthentication' -Value 1 -PropertyType dword -Force

	#Restart-Computer -Force -AsJob
}
