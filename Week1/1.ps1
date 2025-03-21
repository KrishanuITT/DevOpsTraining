function Pattern(){
    $number=Read-Host -Prompt "Enter a number:"
    for( $i=0; $i -lt $number; $i++){
        for($j=0; $j -lt $i ;$j++){
            Write-Host "*" -NoNewline
        }
        Write-Host ""
    }
}

Pattern 