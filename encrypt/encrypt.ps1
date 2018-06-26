{	
    "$schema": "https://raw.githubusercontent.com/Azure/azure-devtestlab/master/schemas/2016-11-28/dtlArtifacts.json",	
    "title": "CPU  Windows  Run Azure Disk Encryption extension",	
    "description": "Runs the AzureDiskEncryption extension to encrypt the disks on the VM.",	
    "tags": [	
        "Windows"	
    ],	
    "targetOsType": "Windows",	
    "parameters": {	
        "appId": {	
            "type": "string",	
            "displayName": "AAD Client Id",	
            "description": "The azure credential to use"	
        },	
        "password": {	
            "type": "securestring",	
            "displayName": "Password",	
            "description": "The password for the azure credential"	
        },	
        "keyVaultURL": {	
            "type": "string",	
            "displayName": "Key Vault URL",	
            "description": "Key Vault URL e.g https://keyvaultname.vault.azure.net"	
        }	
    },	
    "runAzureVMExtension": {	
        "publisher": "Microsoft.Azure.Security",	
        "type": "AzureDiskEncryption",	
        "typeHandlerVersion": "1.1",	
        "autoUpgradeMinorVersion": false,	
        "settings": {	
            "AADClientID": "[parameters('appId')]",	
            "KeyVaultURL": "[parameters('keyVaultURL')]",	
            "EncryptionOperation": "EnableEncryption",	
            "VolumeType":"All"	
        },	
        "protectedSettings": {	
            "AADClientSecret": "[parameters('password')]"	
        }	
    }	
}
