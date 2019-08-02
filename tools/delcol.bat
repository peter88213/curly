del content.xml
delcol.py %1
if exist content.xml (
	"c:\Program Files\7-Zip\7z.exe" -aou u %1 content.xml
	echo %1 >> OOdelcol.log
	del content.xml
	)