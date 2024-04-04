@ECHO OFF

if not "%1" == "am_admin" (PowerShell start -verb runas '%0' am_admin & exit)
:controlpanel
cls
echo *** Control Panel
echo 0   Control Panel                     1   Add or Remove Programs
echo 2   Administrative Tools              3   BitLocker
echo 4   Credential Manager                5   Date and Time
echo 6   Device Manager                    7   Devices and Printers
echo 8   Display                           9   Internet Options
echo 10  Network and Sharing Center        11  ODBC Data Source Administrator
echo 12  Offline Files                     13  Power Options
echo 14  Sound                             15  System Properties
echo 16  SCCM Configuration Manager        
echo.
echo *** Administrative Tools
echo 17  Computer Management               18  Print Management
echo 19  Registry Editor                   20  Resource Monitor
echo 21  Services                          22  System Configuration
echo 23  System Information                24  Task Scheduler
echo.
echo *** Other
echo 25  Local Group Policy Editor         26  Certificate Manager
echo 27  Task Manager
echo X   Exit
echo.
set /p a=Select action:
if /i %a% == 0  control
if /i %a% == 1  control appwiz.cpl
if /i %a% == 2  control admintools
if /i %a% == 3  control /name Microsoft.BitLockerDriveEncryption
if /i %a% == 4  control /name Microsoft.CredentialManager 
if /i %a% == 5 	control timedate.cpl
if /i %a% == 6  start devmgmt.msc
if /i %a% == 7  control printers
if /i %a% == 8  control desk.cpl
if /i %a% == 9  control inetcpl.cpl
if /i %a% == 10 control /name Microsoft.NetworkAndSharingCenter
if /i %a% == 11 control odbccp32.cpl
if /i %a% == 12 control /name Microsoft.OfflineFiles
if /i %a% == 13 control powercfg.cpl
if /i %a% == 14 control mmsys.cpl
if /i %a% == 15 control sysdm.cpl
if /i %a% == 16 control smscfgrc
if /i %a% == 17 start compmgmt.msc
if /i %a% == 18 start printmanagement.msc
if /i %a% == 19 start regedit
if /i %a% == 20 start perfmon.exe
if /i %a% == 21 start services.msc
if /i %a% == 22 start msconfig.exe
if /i %a% == 23 start msinfo32.exe
if /i %a% == 24 start taskschd.msc
if /i %a% == 25 start gpedit.msc
if /i %a% == 26 start certmgr.msc
if /i %a% == 27 start taskmgr
if /i %a% == x  goto ask
goto controlpanel