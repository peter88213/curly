set _docroot="%userprofile%\Documents"
set _genfile=OOdelcol.bat
pushd %_docroot%
for /F "tokens=*" %%l in ('dir *.odt /s /b') do echo call delcol.bat "%%l" >> %_genfile%
popd
