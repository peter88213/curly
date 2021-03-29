md ..\..\oxt\help

pandoc.exe -o body.html ..\..\docs\help-de.md
copy /B header.txt+body.html+footer.txt ..\..\oxt\help\help-de.html

pandoc.exe -o body.html ..\..\docs\help-en.md
copy /B header.txt+body.html+footer.txt ..\..\oxt\help\help-en.html

pandoc.exe -o body.html ..\..\docs\help-fr.md
copy /B header.txt+body.html+footer.txt ..\..\oxt\help\help-fr.html

del body.html
