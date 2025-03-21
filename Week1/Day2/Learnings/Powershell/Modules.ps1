# Structured Powershell code that can  
# Used to handoff a package to other for usage

function Get-MyDate{
    Get-Date -Format MMddyyyy
}

$Behold = "The Power of Cheese"
Export-ModuleMember -Function Get-mydate -Variable $Behold