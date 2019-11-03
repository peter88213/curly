# OOTyW (OpenOffice typography tools for yWriter users)

## Features

* _Smart quotes_ macros.
* _Search and replace_ macros for apostrophes and dashes.
* Revert to keyboard characters.
* Menu and toolbar with buttons.
* Template for OpenOffice as yWriter _external RTF editor_.
* Dialog view to identify direct speech.

![Screenshot: OOTyW menu in OpenOffice Writer](https://raw.githubusercontent.com/peter88213/OOTyW/master/docs/Screenshots/UserMenu-en.png)

For more information see [Wiki (english)](https://github.com/peter88213/OOTyW/wiki)

## Download

The OOTyW Software comes as zipfiles. 

You need to download
* The **OOTYW** installation (basis library) containing most of the algorithms suitable for all languages.
* At least one **OOTyW_xx-YY** installation (language pack) containing the user interface and language specific macro calls.

[Download page](https://github.com/peter88213/OOTyW/releases/latest)

## How to install

1. Terminate OpenOffice before installation.

2. Download and unzip the basis library `OOTyW_<version number>.zip` within your user profile.

3. Move into the `OOTyW_<version number>` folder and run `Install.bat` (double click). This will copy the template file to the right place and install the Office extension.

4. Download and unzip the language pack of your choice `OOTyW_xx-YY_<version number>.zip`.

5. Move into the `OOTyW_xx-YY_<version number>` folder and run `Install.bat` (double click). This will install the Office extension.

6. Repeat the steps 4 and 5 for any other supported language variant you wish to install.

7. Restart OpenOffice. You will see an undocked toolbar in a small window for each installed language pack. 

8. Dock the toolbar of your main language and close the others.

9. Open `yWriter.ott` (Menu __Files > Templates > Edit ...__ and edit the _Default_ paragraph style. Set your preferred yWriter default font, line spacing etc. 


## How to use

* Open the __Tools > Add-ons__ menu. There you will find __OOTyW__ submenus, one for each supported language.
* You will find frequently used commands in the button toolbars.


## How to uninstall

Move into the `OOTyW_<version number>` folder and run `Uninstall.bat` (double click). 
