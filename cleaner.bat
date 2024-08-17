@echo off
openfiles >nul 2>&1
if %errorlevel% neq 0 (
mode con: cols=85 lines=15
title UAC Prompt
color A
echo.
echo                          Checking For Administrator Perms
    powershell -Command "Start-Process '%~0' -Verb RunAs"
    exit /b
)

mode con: cols=85 lines=15
title Loading...
:Disclaimer
title Disclaimer!
color 4
echo.
echo                      By using this program, you agree to the below:
echo                 This program cannot be redistributed without permission.
echo              This program cannot be modified or changed without permission.
echo.
echo                           All rights reserved to suley#0001
echo                                  @disbuted on github
echo.
echo                             Type "I agree" to continue...
echo.


set /p agree=: 
if /i "%agree%" neq "I agree" (
  echo You must agree to continue.
  goto input
)
echo Continuing...

:LoadingTitle
title Roblox Cleaner Starting...
mode con: cols=83 lines=35
cls
color 4
echo. 
echo       ::::::::  :::        ::::::::::     :::     ::::    ::: :::::::::: ::::::::: 
echo     :+:    :+: :+:        :+:          :+: :+:   :+:+:   :+: :+:        :+:    :+: 
echo    +:+        +:+        +:+         +:+   +:+  :+:+:+  +:+ +:+        +:+    +:+  
echo   +#+        +#+        +#++:++#   +#++:++#++: +#+ +:+ +#+ +#++:++#   +#++:++#:    
echo  +#+        +#+        +#+        +#+     +#+ +#+  +#+#+# +#+        +#+    +#+    
echo #+#    #+# #+#        #+#        #+#     #+# #+#   #+#+# #+#        #+#    #+#     
echo ########  ########## ########## ###     ### ###    #### ########## ###    ###
echo.
echo ----------------------------------------------------------------------------------
echo.
echo                                Loading Cleaner
PING localhost -n 3 >NUL
echo                             Checking for updates...

:Title
cls
color 4
echo. 
echo       ::::::::  :::        ::::::::::     :::     ::::    ::: :::::::::: ::::::::: 
echo     :+:    :+: :+:        :+:          :+: :+:   :+:+:   :+: :+:        :+:    :+: 
echo    +:+        +:+        +:+         +:+   +:+  :+:+:+  +:+ +:+        +:+    +:+  
echo   +#+        +#+        +#++:++#   +#++:++#++: +#+ +:+ +#+ +#++:++#   +#++:++#:    
echo  +#+        +#+        +#+        +#+     +#+ +#+  +#+#+# +#+        +#+    +#+    
echo #+#    #+# #+#        #+#        #+#     #+# #+#   #+#+# #+#        #+#    #+#     
echo ########  ########## ########## ###     ### ###    #### ########## ###    ###
echo.
echo                               [1] Start Cleaner
echo                                  [2] Close
echo.
echo ----------------------------------------------------------------------------------
echo.

set /p choice=Option: 
if '%choice%'=='1' goto start
if '%choice%'=='2' goto close
goto :eof

:start
cls
echo Starting Cleaner...
goto :code
pause

:close
echo. 
echo       ::::::::  :::        ::::::::::     :::     ::::    ::: :::::::::: ::::::::: 
echo     :+:    :+: :+:        :+:          :+: :+:   :+:+:   :+: :+:        :+:    :+: 
echo    +:+        +:+        +:+         +:+   +:+  :+:+:+  +:+ +:+        +:+    +:+  
echo   +#+        +#+        +#++:++#   +#++:++#++: +#+ +:+ +#+ +#++:++#   +#++:++#:    
echo  +#+        +#+        +#+        +#+     +#+ +#+  +#+#+# +#+        +#+    +#+    
echo #+#    #+# #+#        #+#        #+#     #+# #+#   #+#+# #+#        #+#    #+#     
echo ########  ########## ########## ###     ### ###    #### ########## ###    ###
echo.
echo ----------------------------------------------------------------------------------
echo                                    Closing...
exit

:code
cls
color 9
echo. 
echo       ::::::::  :::        ::::::::::     :::     ::::    ::: :::::::::: ::::::::: 
echo     :+:    :+: :+:        :+:          :+: :+:   :+:+:   :+: :+:        :+:    :+: 
echo    +:+        +:+        +:+         +:+   +:+  :+:+:+  +:+ +:+        +:+    +:+  
echo   +#+        +#+        +#++:++#   +#++:++#++: +#+ +:+ +#+ +#++:++#   +#++:++#:    
echo  +#+        +#+        +#+        +#+     +#+ +#+  +#+#+# +#+        +#+    +#+    
echo #+#    #+# #+#        #+#        #+#     #+# #+#   #+#+# #+#        #+#    #+#     
echo ########  ########## ########## ###     ### ###    #### ########## ###    ###
echo.
echo ----------------------------------------------------------------------------------
echo.
echo                          [1] Delete Registry Keys Traces
echo                          [2] Delete Temp File Traces
echo                          [3] Delete Recent File Traces
echo                          [4] Delete Event Log Traces
echo                          [5] Close
echo.

set /p choice=Option: 
if '%choice%'=='1' goto RegistryKeys
if '%choice%'=='2' goto TempFiles
if '%choice%'=='3' goto RecentFiles
if '%choice%'=='4' goto EventLog
if '%choice%'=='5' goto close
goto :eof

:RegistryKeys
cls
echo Clearing Registry Keys
Title Clearing Registry Keys...

reg delete "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags" /f
reg delete "HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\BagMRU" /f

reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\Bags" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\BagMRU" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Store" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Compatibility Assistant\Persisted" /f

reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\ShellNoRoam\MUICache" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSavePidlMRU" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRU" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPidlMRULegacy" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\OpenSaveMRU" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" /f
echo.
pause
goto code

:TempFiles
cls

echo Cleaning Temp Files
Title Cleaning Temp Files...

rmdir /s /q "C:\Users\%username%\AppData\Local\Temp"
echo.
pause
goto code

:RecentFiles
cls

echo Cleaning Recent Files
Title Cleaning Recent Files...

@RD /S /Q "C:\Windows\Prefetch\"
echo Cleared Windows Prefetch.
@RD /S /Q "C:\Users\Default\AppData\Roaming\Microsoft\Windows\Recent\"
echo Cleared Windows Recent Data.
@RD /S /Q "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent\"
echo.
pause
goto code
cls

:EventLog
cls

echo Deleting Event Log Entries
Title Deleting Event Log Entries...

FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
echo.
pause
goto code

:do_clear
echo Cleaning %1
wevtutil.exe cl %1
PAUSE