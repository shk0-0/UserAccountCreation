@echo off
::  turns off commands from echoing
setlocal
:: creates a confined area within the script where variables are isolated from the rest of the script

:: Create User Accounts
net user Student imastudent@dbv /add
net user Teacher imateacher@dbv /add
net user Guest /add

:: Set Additional User Properties (you might need to customize)
net user Student /fullname:"DBV Student Account" /comment:"Student user"
net user Teacher /fullname:"DBV Teacher Account" /comment:"Teacher user"
net user Guest /fullname:"Guest Account" /comment:"Guest user"

endlocal
:: ends the local scope