:: 65001 - UTF-8 chcp (Change Code Page)
chcp 65001
@echo off
echo hello world
echo log teste > monitor.log

type .\monitor.log > .\monitor_bkp
