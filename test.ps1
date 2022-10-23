Clear-Host

Import-Module .\macrokeyboard.psm1 -Force

set-mkport -port COM7 

$shiftp = Get-MKsequenceStep -key "KEY_LEFT_SHIFT" -press "p" -target "k" 
$shiftr = Get-MKsequenceStep -key "KEY_LEFT_SHIFT" -press "r" -target "k" 
$key4 = Get-MKsequenceStep -key "KEY_4" -target "k" 
$keys4 = Get-MKsequenceStep -key "KEY_4" -mode "MOD_LEFT_SHIFT"  -target "k" 


foreach ($i in 1..6) {
    Delete-Mkkey $i
}

Set-MKkey -number 1 -color 22FF22 -sequence "$keys4" -text "s4" -Verbose
Set-MKkey -number 3 -color 22FF22 -sequence "k129 k33 k129r" -text "s4" -Verbose


$shift = Get-MKsequenceStep -key "KEY_LEFT_SHIFT" -target "c" 
$key4 = Get-MKsequenceStep -key "KEY_4" -target "c" 
$keys4 = Get-MKsequenceStep -key "KEY_4" -mode "MOD_LEFT_SHIFT"  -target "c" 


Set-MKkey -number 4 -color FF8822 -sequence $keys4 -text "Nur die 4" -Verbose
Set-MKkey -number 6 -color 4488FF -sequence "$shiftp $key4 $shiftr" -text "L" -Verbose

