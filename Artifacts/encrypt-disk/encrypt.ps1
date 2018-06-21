$keyVaultRgName = "grace-rg"
$keyVaultName = "grace-encrypt";
$vmName = "test-encrypt5"
$vmRgName = "grace-lab3759623017001"
$key = "encrypt-key"
$vmPassword = "M@keTh3M0stOfIt"
$securePassword = ConvertTo-SecureString -String $vmPassword -AsPlainText -Force

$keyVault = Get-AzureRmKeyVault -VaultName $keyVaultName -ResourceGroupName $keyVaultRgName;
$diskEncryptionKeyVaultUrl = $keyVault.VaultUri;
$keyVaultResourceId = $keyVault.ResourceId;
$keyEncryptionKeyUrl = (Get-AzureKeyVaultKey -VaultName $keyVaultName -Name $key).Key.kid;

Set-AzureRmVMDiskEncryptionExtension -ResourceGroupName $vmRgName `
    -VMName $vmName `
    -AadClientID $app.ApplicationId `
    -AadClientSecret (New-Object PSCredential "user",$securePassword).GetNetworkCredential().Password `
    -DiskEncryptionKeyVaultUrl $diskEncryptionKeyVaultUrl `
    -DiskEncryptionKeyVaultId $keyVaultResourceId `
    -KeyEncryptionKeyUrl $keyEncryptionKeyUrl `
    -KeyEncryptionKeyVaultId $keyVaultResourceId
