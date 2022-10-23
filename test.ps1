Clear-Host

Import-Module .\macrokeyboard.psm1 -Force

set-mkport -port COM7 

$shift2 = Get-MKsequenceStep -key "KEY_2" -mode "MOD_LEFT_SHIFT" 

Set-MKkey -number 1 -color 22FF22 -action $shift2 -text "edit" -Verbose
