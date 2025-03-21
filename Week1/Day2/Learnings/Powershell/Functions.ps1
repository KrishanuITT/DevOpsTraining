# Defining Function
function FunctionName(){
    Write-Host "Hello, World!"
}
# Calling Function
FunctionName

# Simple Function without Params
function Greet(){
    Write-Host "Welcome!!"
}

Greet
# Function with Params

function GreetUser($name){
    Write-Host "Welcome, $name!"
}
GreetUser "Krishanu"

function Sum($a, $b){
    $sum = $a+$b
    Write-Host "Sum: $sum"
}
Sum 5 6

function GetSquare([int]$number){
    Write-Host "Sqaure: " $($number * $number)
}

GetSquare 5

# Function with Default Parameter Values
function GreetUser([string]$name = "Guest"){
    Write-Host "Welcome $name"
}

GreetUser

# Function returning a value
function Multiply($a, $b){
    return $a*$b
}

$result = Multiply 5 3
$result

# Function with Pipeline Input
function ConvertToUpper {
    param ([string] $inputText)
    $inputText.ToUpper()
}
"hello" | ConvertToUpper

function Calculator{
    param (
        [int]$num1,
        [int]$num2,
        [string]$operator
    )
    switch($operator){
        {$operator -eq "+"} {return $num1 + $num2}
        {$operator -eq "-"} {return $num1 - $num2}
        {$operator -eq "*"} {return $num1 * $num2}
        {$operator -eq "/"} {return $num1 / $num2}

    }
}

Write-Host "Output: $(Calculator -num1 5 -num2 4 -operator "+")"

function Fibonacci {
    param(
        [int] $count
    )
    
    if ($count -le 0) {
        return
    }
    
    $a = 0
    $b = 1

    Write-Host $a
    if ($count -ge 2) {
        Write-Host $b
    }

    for ($i = 2; $i -lt $count; $i++) {
        $sum = $a + $b
        Write-Host $sum
        $a = $b
        $b = $sum
    }
}

Write-Host "Output:"
Fibonacci -count 7

function IsPrime {
    param (
        [int] $number
    )
    for($i=2;$i -lt $number;$i++){
        if($number % $i -eq 0){
            Write-Host "False"
            return;
        }
    }
    Write-Host "True";
}

IsPrime -number 11