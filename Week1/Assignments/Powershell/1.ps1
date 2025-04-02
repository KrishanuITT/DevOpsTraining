# Palindrome Check Function

function Palindrome {
    param (
        [int] $InputNumber
    )
    
    $OriginalNumber = $InputNumber
    $ReversedNumber = 0
    
    while ($InputNumber -gt 0) {
        $LastDigit = $InputNumber % 10
        $ReversedNumber = ($ReversedNumber * 10) + $LastDigit
        $InputNumber = [math]::Floor($InputNumber / 10)
    }
    
    if ($OriginalNumber -eq $ReversedNumber) {
        Write-Host "$OriginalNumber is a palindrome number."
    }
    else {
        Write-Host "$OriginalNumber is not a palindrome."
    }   
}

Palindrome -InputNumber 111