@echo off
echo ==========================================
echo Clearing Microsoft Identity / Office Cache
echo ==========================================
echo.

REM Delete local app data folders
echo Deleting %LOCALAPPDATA%\Microsoft\OneAuth
if exist "%LOCALAPPDATA%\Microsoft\OneAuth" (
    rmdir /s /q "%LOCALAPPDATA%\Microsoft\OneAuth"
    echo   OneAuth folder removed.
) else (
    echo   OneAuth folder not found.
)

echo Deleting %LOCALAPPDATA%\Microsoft\IdentityCache
if exist "%LOCALAPPDATA%\Microsoft\IdentityCache" (
    rmdir /s /q "%LOCALAPPDATA%\Microsoft\IdentityCache"
    echo   IdentityCache folder removed.
) else (
    echo   IdentityCache folder not found.
)

echo.

REM Delete registry keys
echo Deleting HKCU\Software\Microsoft\Office\16.0\Common\Identity
reg delete "HKCU\Software\Microsoft\Office\16.0\Common\Identity" /f >nul 2>&1
if %errorlevel%==0 (
    echo   Office Identity key removed.
) else (
    echo   Office Identity key not found or could not be removed.
)

echo Deleting HKCU\Software\Microsoft\Office\16.0\Common\Internet
reg delete "HKCU\Software\Microsoft\Office\16.0\Common\Internet" /f >nul 2>&1
if %errorlevel%==0 (
    echo   Office Internet key removed.
) else (
    echo   Office Internet key not found or could not be removed.
)

echo Deleting HKCU\Software\Microsoft\IdentityCRL
reg delete "HKCU\Software\Microsoft\IdentityCRL" /f >nul 2>&1
if %errorlevel%==0 (
    echo   IdentityCRL key removed.
) else (
    echo   IdentityCRL key not found or could not be removed.
)

echo.
echo ==========================================
echo Completed.
echo You may need to restart the computer.
echo ==========================================
pause