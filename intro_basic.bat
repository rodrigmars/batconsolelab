:: 65001 - UTF-8 chcp (Change Code Page)
@CHCP 65001 > NUL
@ECHO OFF

SET message=hello world

@REM IMPRIMINDO UMA VARIAVEL TEXTO SIMPLES NO TERMINAL
ECHO First message...'%message%'

@REM VERFICA SE A PASTA 'exercise' EXISTE
IF EXIST .\exercise (
    @REM SE EXISTIR ...REMOVE PASTA
    RMDIR /S /Q .\exercise
)

@REM CRIANDO UMA NOVA PASTA
MKDIR exercise

@REM CRIANDO ARQUIVO .LOG E INSERINDO TEXTO
ECHO %message% > .\exercise\monitor.log

@REM EXECUTANDO UMA REPLICADO DO ARQUIVO
TYPE .\exercise\monitor.log > .\exercise\monitor_bkp

@REM REMOVENDO CONTEÚDO DO ARQUIVO 'monitor.log'
BREAK > .\exercise\monitor.log

@REM Alternativa 
@REM type nul > .\exercise\monitor.log