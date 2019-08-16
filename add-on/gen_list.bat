rem Generate a list of function calls for each ODT file within [userprofile]\Documents

set _docroot="%userprofile%\Documents"
set _genfile=OOdelcol.bat
pushd %_docroot%
echo del OOdelcol.log > %_genfile%
for /F "tokens=*" %%l in ('dir *.odt /s /b') do echo call delcol.bat "%%l" >> %_genfile%
popd
move /Y  %_docroot%\%_genfile% .