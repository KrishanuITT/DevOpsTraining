# Armstrong Number Check

function CheckArmstrong {
    param (
        [int] $InputNumber
    )
    
    $OriginalNumber = $InputNumber
    $SumOfPowers = 0
    $DigitCount = ($InputNumber.ToString()).Length
    
    while ($InputNumber -gt 0) {
        $LastDigit = $InputNumber % 10
        $SumOfPowers += [math]::Pow($LastDigit, $DigitCount)
        $InputNumber = [math]::Floor($InputNumber / 10)
    }

    if ($SumOfPowers -eq $OriginalNumber) {
        Write-Host "$OriginalNumber is an Armstrong Number."
    }
    else {
        Write-Host "$OriginalNumber is not an Armstrong Number."
    }   
}

CheckArmstrong -InputNumber 123