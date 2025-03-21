$moduleName = "Microsoft.PowerShell.Management"

if (-not (Get-Module -ListAvailable -Name $moduleName)) {
    Write-Host "$moduleName is not installed. Installing..."
    Install-Module -Name $moduleName -Force
} else {
    Write-Host "$moduleName is already installed."
}

Import-Module $moduleName -Force
Get-Command -Module $moduleName