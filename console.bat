:: 65001 - UTF-8 chcp (Change Code Page)
@CHCP 65001 > NUL
@echo off

echo hello world

echo userprofile=%userprofile%\Cookies\

echo log teste > monitor.log

type .\monitor.log > .\monitor_bkp

