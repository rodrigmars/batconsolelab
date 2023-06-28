@CHCP 65001 > NUL
@echo off

FOR /F "tokens=*" %%i IN (.\exercise\monitor_bkp) DO echo %%i