# Count the occurrence of characters in a string
function Occurrence {
    param (
        [string] $userString
    )

    $charCount = @{}

    foreach ($char in $userString.ToCharArray()) {
        if ($charCount.ContainsKey($char)) {
            $charCount[$char]++
        } else {
            $charCount[$char] = 1
        }
    }

    Write-Host $charCount
}

Occurrence -userString "Krishanu"