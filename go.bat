@echo off
cd %~dp0

echo Checking ...
where /q javac.exe
IF ERRORLEVEL 1 (
    echo Can not find javac.exe in PATH, abort.
    pause
    exit /B
)
cls

echo Compiling ...
javac -classpath src\ -d bin\ src\boxenluther\emulia\Main.java
IF %ERRORLEVEL% NEQ 0 (
    echo Failure, abort.
    pause
    exit /B
)
cls

start java -classpath bin\ boxenluther.emulia.Main %*
