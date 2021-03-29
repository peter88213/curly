md ..\oxt\Legal
copy ..\LICENSE ..\oxt\Legal\license-en.txt
cd help
call convert.bat
cd ..

xcopy /Y /s ..\oxt ..\oxt-de-DE\
copy /Y ..\src\*.xba ..\oxt-de-DE\curly_de-DE\

xcopy /Y /s ..\oxt ..\oxt-en-GB\
copy /Y ..\src\*.xba ..\oxt-en-GB\curly_en-GB\

xcopy /Y /s ..\oxt ..\oxt-en-US\
copy /Y ..\src\*.xba ..\oxt-en-US\curly_en-US\

xcopy /Y /s ..\oxt ..\oxt-fr-FR\
copy /Y ..\src\*.xba ..\oxt-fr-FR\curly_fr-FR\


