:: 65001 - UTF-8 chcp (Change Code Page)
@CHCP 65001 > NUL
@echo off

echo hello world

echo log teste > monitor.log

type .\monitor.log > .\monitor_bkp

SETLOCAL ENABLEDELAYEDEXPANSION
:: FOR /L %%parameter IN (start,step,end) DO command 
for /l %%x in (1, 1, 100) do (
    
    SET /a VERSION=%%x%%2
    
    if !VERSION! LEQ 0 (
        echo %%x
    )

    TIMEOUT /T 1

)


::Operator | Description
::EQU      | equal to
::NEQ      | not equal to
::LSS      | less than
::LEQ      | less than or equal to
::GTR      | greater than
::GEQ      | greater than or equal to