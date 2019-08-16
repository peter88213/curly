# Delete text color markup from all ODT files in [userprofile]\Documents

## Please note:
This toolkit is experimental. **Use it at your own risk**. 
Do not use it, if you are not familiar with the Windows cmd language. 
Do not use it, in case you don't understand the batch code. 

## Function
* Do a recursive search for ODT files in your `[userprofile]\Documents` folder.
* Extract `content.xml` from each ODT.file.
* Leave the ODT file untouched, if `content.xml` contains no `fo:color="#cccccc"`, `fo:color="#000000"`, or `style:use-window-font-color="true"` tag.
* Otherwise, Remove any tags mentioned above from `content.xml`, and replace ODT file's `content.xml`.

This will remove any text color markup left by OOTyW's "show direct speech" command.

## Requirements
* Python 3 installation (PATH must be set).
* 7zip packer installation.

## Procedure
1. Back up your `[userprofile]\Documents` folder.
2. Move into `OOTyW_vX.X.X\add-on` folder.
3. Run `gen_list.bat` to generate `OOdelcol.bat`.
4. Edit `OOdelcol.bat` and remove lines containing files you wish to omit.
5. Run `OOdelcol.bat`.

After execution, all modified ODT files are listed in `OOdelcol.log`
