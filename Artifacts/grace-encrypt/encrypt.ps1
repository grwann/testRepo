[CmdletBinding()]
param(
    [string] $aadPassword
)

Write-Output $aadPassword

try {
    Install-Module -name AzureRM -Scope CurrentUser
}
catch {
    Write-Output "bad"
}

#$keyVaultRgName = "grace-rg"
#$keyVaultName = "encrypt-kv";
#$vmName = "encrypt-big03"
#$vmRgName = "grace-lab3759623017001"
#$key = "myKEK"
#$aadClientId = "da179a12-9f05-4cf3-aef7-c68187f2054f"
#$diskEncryptionKeyVaultUrl = "https://encrypt-kv.vault.azure.net/";
#$keyVaultResourceId = "/subscriptions/e605a3bc-ee4e-4c7a-9709-1868a28b1d4d/resourceGroups/grace-rg/providers/Microsoft.KeyVault/vaults/encrypt-kv";
#$keyEncryptionKeyUrl = "https://encrypt-kv.vault.azure.net/keys/myKEK/1c2d74536b044750ae612e160a5aac0c"

#Set-AzureRmVMDiskEncryptionExtension -ResourceGroupName $vmRgName `
#    -VMName $vmName `
#    -DiskEncryptionKeyVaultUrl $diskEncryptionKeyVaultUrl `
#    -DiskEncryptionKeyVaultId $keyVaultResourceId `
#    -KeyEncryptionKeyUrl $keyEncryptionKeyUrl `
#    -KeyEncryptionKeyVaultId $keyVaultResourceId `
#    -AadClientID $aadClientId `
#    -AadClientSecret $aadPassword
