@echo off
REM
REM summary: Installation script for the OOTyW software package.
REM 
REM author: Peter Triesberger
REM see: https://github.com/peter88213/OOTyW
REM license: The MIT License (https://opensource.org/licenses/mit-license.php)
REM copyright: (c) 2018, Peter Triesberger
REM 
REM note: This script is to be executed manually.
REM 
REM precondition: OOTyW is installed.
REM precondition: OpenOffice.org 3.x or Apache OpenOffice 4.x is installed.
REM postcondition: Previously auto-installed items of OOTyW are removed.
REM postcondition: The template remains, if user wants it.
REM 
REM since: 2018-10-31

set _release=0.2.2

set _OpenOffice4_w64=c:\Program Files (x86)\OpenOffice 4
set _OpenOffice4_w32=c:\Program Files\OpenOffice 4
set _OpenOffice3_w64=c:\Program Files (x86)\OpenOffice.org 3
set _OpenOffice3_w32=c:\Program Files\OpenOffice.org 3
set _LibreOffice5_w64=c:\Program Files (x86)\LibreOffice 5
set _LibreOffice5_w32=c:\Program Files\LibreOffice 5

set _OpenOffice4_Userprofile=AppData\Roaming\OpenOffice\4\user
set _OpenOffice3_Userprofile=AppData\Roaming\OpenOffice.org\3\user
set _LibreOffice5_Userprofile=AppData\Roaming\LibreOffice\4\user

echo -----------------------------------------------------------------
echo yW2OO (yWriter to OpenOffice) v%_release%
echo Removing software package ...
echo -----------------------------------------------------------------
rem Detect Combination of Windows and Office 
if exist "%_OpenOffice4_w64%\program\swriter.exe" goto OpenOffice4-Win64
if exist "%_OpenOffice4_w32%\program\swriter.exe" goto OpenOffice4-Win32
if exist "%_OpenOffice3_w64%\program\swriter.exe" goto OpenOffice3-Win64
if exist "%_OpenOffice3_w32%\program\swriter.exe" goto OpenOffice3-Win32
rem if exist "%_LibreOffice5_w64%\program\swriter.exe" goto LibreOffice5-Win64
rem if exist "%_LibreOffice5_w32%\program\swriter.exe" goto LibreOffice5-Win32
echo ERROR: No supported version of OpenOffice/LibreOffice found!
echo Installation aborted.
goto end

:OpenOffice4-Win64
set _writer=%_OpenOffice4_w64%
set _user=%USERPROFILE%\%_OpenOffice4_Userprofile%
set _ext=OOTyW-A-%_release%.oxt
echo OpenOffice 4.x - Windows (64 bit)
goto settings_done

:OpenOffice4-Win32
set _writer=%_OpenOffice4_w32%
set _user=%USERPROFILE%\%_OpenOffice4_Userprofile%
set _ext=OOTyW-A-%_release%.oxt
echo OpenOffice 4.x - Windows (32 bit)
goto settings_done

:OpenOffice3-Win64
set _writer=%_OpenOffice3_w64%
set _user=%USERPROFILE%\%_OpenOffice3_Userprofile%
set _ext=OOTyW-%_release%.oxt
echo OpenOffice 3.x - Windows (64 bit)
goto settings_done

:OpenOffice3-Win32
set _writer=%_OpenOffice3_w32%
set _user=%USERPROFILE%\%_OpenOffice3_Userprofile%
set _ext=OOTyW-%_release%.oxt
echo OpenOffice 3.x - Windows (32 bit)
goto settings_done

:LibreOffice5-Win64
set _writer=%_LibreOffice5_w64%
set _user=%USERPROFILE%\%_LibreOffice5_Userprofile%
set _ext="OOTyW-L-"%_release%.oxt
echo LibreOffice 5.x - Windows (64 bit)
goto settings_done

:LibreOffice5-Win32
set _writer=%_LibreOffice5_w32%
set _user=%USERPROFILE%\%_LibreOffice5_Userprofile%
set _ext="OOTyW-L-"%_release%.oxt
echo LibreOffice 5.x - Windows (32 bit)
goto settings_done

:settings_done

echo Installing OpenOffice extension %_ext% ...

"%_writer%\program\unopkg" add -f program\%_ext%

echo Copying template to %_user%\template ...

if not exist "%_user%\template" mkdir "%_user%\template"
copy /-y program\yWriter.ott "%_user%\template"


echo -----------------------------------------------------------------
echo #
echo # Installation of OOTyW v%_release% finished.
echo #
echo -----------------------------------------------------------------
pause



:end
