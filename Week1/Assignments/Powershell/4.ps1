function ReverseString {
    param (
        [string] $userString
    )

    $stringLength = $userString.Length
    $reversedString = ""

    for ($i = $stringLength - 1; $i -ge 0; $i--) {
        $reversedString += $userString[$i]
    }

    Write-Host $reversedString
}

ReverseString -userString "Hello, World!"
