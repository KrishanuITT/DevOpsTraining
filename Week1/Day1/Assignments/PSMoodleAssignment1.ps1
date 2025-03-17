param (
    [string]$ExecutionPolicy = "Unrestricted"
)

try {
    Set-ExecutionPolicy -ExecutionPolicy $ExecutionPolicy -Force
    Write-Output "Execution policy set to $ExecutionPolicy"
} catch {
    Write-Output "Failed to set execution policy: $_"
}