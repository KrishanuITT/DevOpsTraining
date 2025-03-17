# CommandLets
# Structure: Verb-Noun
# Verb: Action
# Noun: Object

Get-Date
Get-Process
Get-Command
Get-Command -noun Service
Get-Command -verb install
Get-Help Get-Date -Full
Get-Alias

# Naming Conventions
# CamelCase myVariable
# PascalCase MyVariable
# snake_case my_variable

$MyVariable = "Hello"
$MyVariable = "06"
$MyVariable
$MyVariable.GetType()
Get-Help $MyVariable -Full

# Arithematic Operators
# + - * / %
$var1 = 10
$var2 = 5
$var1 + $var2
$var1 * $var2
$var1 / $var2
$var1 % $var2

$MyBooleanVar = $true
$MyBooleanVar.GetType()

# Comparison Operators
# -eq -ne -gt -ge -lt -le
$var1 -eq $var2
$var1 -ne $var2
$var1 -gt $var2
$var1 -ge $var2
$var1 -lt $var2
$var1 -le $var2

$a = 1 .. 10
$a.GetType()
$a[0 .. 3]
$a[-9 .. -5]

# For Each Loop

$a = 1 .. 10
foreach ($i in $a) {
    Write-Host -NoNewline "$i,"
}

# Hash Tables

$settings = @{
    "key1" = "value1"
    "key2" = 100
    "key3" = $true
}
$settings.key3
$settings["key1"]

$settings["key3"] = $false
$settings

foreach ($key in $settings.Keys) {
    $settings[$key]
}

$settings.Contains("key1")

# Custom Object
$person = [PSCustomObject]@{
    FirstName = "John"
    LastName = "Doe"
}
$person

# List of Custom Objects

$employees = @(
    [PSCustomObject]@{Name = "Alice"; Age = 30; Role = "Developer"},
    [PSCustomObject]@{Name = "Bob"; Age = 35; Role = "Designer"},
    [PSCustomObject]@{Name = "Charlie"; Age = 40; Role = "Manager"}
)

foreach($employee in $employees) {
    $employee.Name
}


# Pipeline
$employees | Select-Object -Property Name

"HelloWorld!" | ForEach-Object {$_.ToUpper()}
Get-Process | Where-Object {$_.ProcessName -eq "chrome"} | Select-Object Id, ProcessName
Get-Process | Where-Object {$_.CPU -ge 100} | Select-Object Id, ProcessName
Get-ChildItem -Path "/home/krishanum/learning/devops" | Where-Object {$_.Length -gt 500Kb}


# Conditional Statements
$age = 67
if($age -le 18){
    Write-Output "You are a minor"
}elseif($age -gt 18 -and $age -le 65){
    Write-Output "You are an adult"
}else{
    Write-Output "You are an elder"
}

# Switch Statements
$input1 = "Yellow"
switch($input1){
    {$_ -eq "Red"} {Write-Output "Stop"}
    {$_ -eq "Yellow"} {Write-Output "Caution"}
    {$_ -eq "Green"} {Write-Output "Go"}
    default {Write-Output "Unknown"}
}

# Do While Loop

$count = 10
do{
    Write-Output "Count is $count"
    $count++
}while($count -lt 10)

# Try Catch
try{
    Get-Content -Path "./Text.txt" -ErrorAction Stop
    Write-Output "File found"
}catch{
    Write-Output "File not found"
}finally{

}
'Hello'

$employees | Get-Member -MemberType Method