:: 65001 - UTF-8 chcp (Change Code Page)
@CHCP 65001 > NUL
@ECHO OFF

SET message=hello world

@REM IMPRIMINDO UMA VARIAVEL TEXTO SIMPLES NO TERMINAL
ECHO First message...'%message%'

REM VERFICA SE A PASTA 'exercise' EXISTE
IF EXIST .\exercise (
    @REM CRIANDO UMA PASTA
    RMDIR /S /Q .\exercise
)

@REM CRIANDO UMA PASTA
MKDIR exercise

@REM ARMAZENANDO TEXTO EM UM ARQUIVO .LOG
ECHO %message% >  .\exercise\monitor.log

@REM EXECUTANDO UMA REPLICADO DE ARQUIVO
TYPE .\exercise\monitor.log > .\exercise\monitor_bkp