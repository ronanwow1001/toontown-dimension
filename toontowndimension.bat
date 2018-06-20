@echo off
cd ../
title Toontown Corporate Clash Game Launcher

echo Choose your connection method!
echo #5 - Prod Server
echo.

:selection

set INPUT=5
set /P INPUT=Selection:

if %INPUT%==5
    SET TTA_GAMESERVER=corpclash.net
	goto selection

rem Read the contents of PPYTHON_PATH into %PPYTHON_PATH%:
set /P PPYTHON_PATH=<PPYTHON_PATH

rem Get the user input:
set /P ttUsername="Username: "

rem Get the user input:
set /P ttPassword="Password: "

rem Export the environment variables:
set TT_USERNAME=%ttUsername%
set TT_PASSWORD=%ttPassword%
set TT_GAMESERVER=127.0.0.1
set model-path=../resources

echo ===============================
echo Starting Toontown Project Altis...
echo ppython: %PPYTHON_PATH%
echo Username: %ttUsername%
echo Gameserver: %TT_GAMESERVER%
echo ===============================

:goto

%PPYTHON_PATH% -m toontown.toonbase.ClientStart
pause

goto :goto
