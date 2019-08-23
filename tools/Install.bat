@echo off
REM
REM summary: Installation script for the OOTyW software package.
REM 
REM author: Peter Triesberger
REM see: https://github.com/peter88213/OOTyW
REM license: The MIT License (https://opensource.org/licenses/mit-license.php)
REM copyright: (c) 2019, Peter Triesberger
REM 
REM note: This script is to be executed manually.
REM 
REM precondition: OOTyW is installed.
REM precondition: OpenOffice.org 3.x or Apache OpenOffice 4.x is installed.
REM postcondition: Previously auto-installed items of OOTyW are removed.
REM postcondition: The template remains, if user wants it.
REM 
REM since: 2018-10-31
REM change: 2018-11-04 v1.1.0: Added BE (en-GB) support, EM-dash
REM change: 2018-11-04 v1.1.1: Changed order of subroutine calls
REM change: 2018-11-18 v1.1.2: Fixed bug in SmartQuotes macro
REM change: 2018-11-18 v1.1.3: Optimized SmartQuotes macro
REM change: 2018-11-19 v1.1.4: Improved german and BE "view direct speech" feature
REM change: 2019-01-22 v1.1.5: Fixed bug in SmartQuotes macro
REM change: 2019-05-26 v1.1.6: Replaced LibreOffice 5 references by LibreOffice 6 references
REM change: 2019-08-15 v1.2.0: LibreOffice 6.x installation enabled; changed german default quotes to "Gaensefuesschen"
REM change: 2019-08-18 v1.2.1: Fixed typo in user interface
REM change: 2019-08-20 v1.3.0: Introcuced exchange format for quotes. New behaviour of (en-GB) version.
REM change: 2019-08-21 v1.4.0: Added swiss (de-CH) language support. Prepared french (fr-FR) support.
REM change: 2019-08-23 v2.0.0: Refactored macro code and UI in order to faciliate localization.

set _release=2.0.0

set _OpenOffice4_w64=c:\Program Files (x86)\OpenOffice 4
set _OpenOffice4_w32=c:\Program Files\OpenOffice 4
set _OpenOffice3_w64=c:\Program Files (x86)\OpenOffice.org 3
set _OpenOffice3_w32=c:\Program Files\OpenOffice.org 3
set _LibreOffice6_w64=c:\Program Files (x86)\LibreOffice
set _LibreOffice6_w32=c:\Program Files\LibreOffice

set _OpenOffice4_Userprofile=AppData\Roaming\OpenOffice\4\user
set _OpenOffice3_Userprofile=AppData\Roaming\OpenOffice.org\3\user
set _LibreOffice_Userprofile=AppData\Roaming\LibreOffice\4\user

echo -----------------------------------------------------------------
echo OOTyW (OpenOffice typography tools for yWriter users) v%_release%
echo Installing software package ...
rem Detect Combination of Windows and Office 
echo -----------------------------------------------------------------
if exist "%_OpenOffice4_w64%\program\swriter.exe" goto OpenOffice4-Win64
if exist "%_OpenOffice4_w32%\program\swriter.exe" goto OpenOffice4-Win32
if exist "%_OpenOffice3_w64%\program\swriter.exe" goto OpenOffice3-Win64
if exist "%_OpenOffice3_w32%\program\swriter.exe" goto OpenOffice3-Win32
if exist "%_LibreOffice6_w64%\program\swriter.exe" goto LibreOffice6-Win64
if exist "%_LibreOffice6_w32%\program\swriter.exe" goto LibreOffice6-Win32
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

:LibreOffice6-Win64
set _writer=%_LibreOffice6_w64%
set _user=%USERPROFILE%\%_LibreOffice_Userprofile%
set _ext=OOTyW-L-%_release%.oxt
echo LibreOffice 6.x
goto settings_done

:LibreOffice6-Win32
set _writer=%_LibreOffice6_w32%
set _user=%USERPROFILE%\%_LibreOffice_Userprofile%
set _ext=OOTyW-L-%_release%.oxt
echo LibreOffice 6.x
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
