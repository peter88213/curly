rmdir /S /Q ..\oxt\help

rmdir /S /Q ..\oxt-de-DE\Legal
rmdir /S /Q ..\oxt-de-DE\help
rmdir /S /Q ..\oxt-de-DE\Descriptions
rmdir /S /Q ..\oxt-de-DE\icons
del ..\oxt-de-DE\curly_de-DE\Common.xba
del ..\oxt-de-DE\curly_de-DE\Revert.xba

rmdir /S /Q ..\oxt-en-GB\Legal
rmdir /S /Q ..\oxt-en-GB\help
rmdir /S /Q ..\oxt-en-GB\Descriptions
rmdir /S /Q ..\oxt-en-GB\icons
del ..\oxt-en-GB\curly_en-GB\Common.xba
del ..\oxt-en-GB\curly_en-GB\Revert.xba

rmdir /S /Q ..\oxt-en-US\Legal
rmdir /S /Q ..\oxt-en-US\help
rmdir /S /Q ..\oxt-en-US\Descriptions
rmdir /S /Q ..\oxt-en-US\icons
del ..\oxt-en-US\curly_en-US\Common.xba
del ..\oxt-fr-FR\curly_fr-FR\Common.xba

rmdir /S /Q ..\oxt-fr-FR\Legal
rmdir /S /Q ..\oxt-fr-FR\help
rmdir /S /Q ..\oxt-fr-FR\Descriptions
rmdir /S /Q ..\oxt-fr-FR\icons
del ..\oxt-en-US\curly_en-US\Revert.xba
del ..\oxt-fr-FR\curly_fr-FR\Revert.xba

goto end

del ..\..\curly_de-CH\*.oxt
del ..\oxt-de-DE\*.oxt
del ..\oxt-en-GB\*.oxt
del ..\oxt-en-US\*.oxt
del ..\oxt-fr-FR\*.oxt

del ..\..\curly_de-CH\*.xml
del ..\oxt-de-DE\*.xml
del ..\oxt-en-GB\*.xml
del ..\oxt-en-US\*.xml
del ..\oxt-fr-FR\*.xml

:end