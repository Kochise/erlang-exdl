@echo off

if "%1"=="test" goto test

set esrc=.\src
goto compile

:test
set esrc=.\test

:compile
set ebin=.\ebin
set erlinc=.\include
set erlp=C:\ERLANG\bin
set erlc=erlc
set erl_flags=-I%erlinc%
set erlsrc=*.erl
set erldst=*.beam

del Make_E.lst /Q
del Make_E.log /Q

dir /B /A:-D /ON %esrc%\%erlsrc% > Make_E.lst

for /F %%i in (Make_E.lst) do (
echo Compiling %esrc%\%%i
echo === %esrc%\%%i ====================================== >> Make_E.log
"%erlp%\%erlc%" -W -bbeam %erl_flags% -o%ebin% "%esrc%\%%i" >> Make_E.log
echo. >> Make_E.log
)

del Make_E.lst

echo.
echo Get the compile log into '.\Make_E.log' !

@echo on