function Assignment {
    param (
        [string]$ExecutionPolicy = "Unrestricted"
    )
    Set-ExecutionPolicy -ExecutionPolicy $ExecutionPolicy -Scope CurrentUser -Force
}