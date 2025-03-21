# PowerShell script for remote connection and copy a demo file from local to remote desktop.

function Remoting {
    $credential = Get-Credential
    $session = New-PSSession -ComputerName "65.2.30.120" -Credential $credential
    Enter-PSSession $session
    Copy-Item -Path "C:\Users\Administrator\Desktop\NewFile.txt" -Destination "C:\Users\Administrator\Desktop"
    Test-Path "C:\Users\Administrator\Desktop\NewFile.txt"
    Exit-PSSession
}