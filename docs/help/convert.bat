pandoc.exe -o body.html help-de.md
copy /B header.txt+body.html+footer.txt help-de.html

pandoc.exe -o body.html help-en.md
copy /B header.txt+body.html+footer.txt help-en.html

pandoc.exe -o body.html help-fr.md
copy /B header.txt+body.html+footer.txt help-fr.html

del body.html
