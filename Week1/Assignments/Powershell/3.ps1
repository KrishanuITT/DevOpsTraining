# Leap Year Check

function LeapYear{
    param (
        [int] $year
    )
    if (($year % 4 -eq 0 -and $year % 100 -ne 0) -or ($year % 400 -eq 0)) {
        Write-Host "$year is a Leap Year."
    } else {
        Write-Host "$year is not a Leap Year."
    }
}

LeapYear -year 2024