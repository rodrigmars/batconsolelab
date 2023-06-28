:: 65001 - UTF-8 chcp (Change Code Page)
:: '> NUL' EXECUTA O COMANDO E ANULA SUA SAÍDA
@CHCP 65001 > NUL
@ECHO OFF

SET message=hello world

@REM IMPRIMINDO UMA VARIAVEL TEXTO SIMPLES NO TERMINAL
ECHO First message...'%message%'

@REM COMANDO USANDO PARA PULAR UMA LINHA
ECHO.

@REM CRIANDO UMA NOVA PASTA
IF NOT EXIST .\exercise MKDIR exercise

@REM CRIA PASTA
MKDIR .\exercise\teste_0001

@REM AGUARDA 5 SEGUNDOS
TIMEOUT /T 5

@REM REMOVE PASTA
RMDIR /S /Q .\exercise\teste_0001
@REM /S exclui a pasta e seu conteúdo
@REM /Q Especifica o modo silencioso. 
@REM Não solicita confirmação ao excluir uma árvore de diretório. 
@REM O parâmetro /Q só funcionará se /S também for especificado.

@REM CRIANDO ARQUIVO .LOG E INSERINDO TEXTO
ECHO %message% > .\exercise\.monitor

@REM EXECUTANDO UMA REPLICADO DO ARQUIVO
TYPE .\exercise\.monitor > .\exercise\.monitor_bkp

@REM REMOVE CONTEÚDO DO ARQUIVO 'monitor.log'
BREAK > .\exercise\.monitor

@REM Forma alternativa
@REM type nul > .\exercise\monitor.log

@REM COMANDO PAUSE EVITA QUE O TERMINAL SEJA FECHADO
PAUSE > NUL