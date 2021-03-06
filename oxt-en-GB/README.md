# "Curly quotes" conversion for LibreOffice and OpenOffice

![Screenshot: "curly" menu](https://raw.githubusercontent.com/peter88213/curly/master/docs/Screenshots/Menu-be.png)

## Features

* _Smart quotes_ macros.

* _Find and replace_ macros for apostrophes and dashes.

* Revert to keyboard characters.

* Extensions are available for de-DE, de-CH, en-US, en-GB, fr-FR.

* Convert from one language to another via exchange format.

* Menu and toolbar with buttons.

* Dialog view to identify direct speech.

![Screenshot: Show direct speech in OpenOffice Writer](https://raw.githubusercontent.com/peter88213/curly/master/docs/Screenshots/DirectSpeech-be.png)

## Download and install

[Download page](https://github.com/peter88213/curly/releases/latest)

* Install it using the OpenOffice/Libreoffice extension manager.

* After installation (and Office restart) you find a new submenu for each language version in the *Format* menu.

* Optionally, you can dock a toolbar for your convenience. If you don't need the toolbar (e.g. because it's not your first language), just close it.

* If no additional submenu shows up in the *Format* menu, please look in the *Tools > Extensions* menu.

## System requirements

* __OpenOffice.org 3.x or Apache OpenOffice 4.x or LibreOffice 6.x__
* __Java__ (OpenOffice needs it for macro execution)

## Conventions

### Definitions

* _Typewriter style_ : The text consists of the characters of the typewriter keyboard.

* _Language style_ : The text contains typographical characters according to country-specific punctuation rules.

### Apostrophes

* In order to avoid confusion with single quotes, it is advised to substitute leading or trailing apostrophes by a number sign (`#`) when typing.

* Number signs (`#`) will be replaced with apostrophes when converting from  _typewriter style_  to a  _language style_.

* When converting from a  _language style_  to  _typewriter style_, apostrophes might be replaced automatically with number signs (`#`). 

### Dashes

* In order to avoid confusion with hyphens, it is advised to substitute dashes by double hyphens (`--`) when typing.

* Double hyphens (`--`) will be replaced with dashes when converting from  _typewriter style_  to a  _language style_.

* When converting from a  _language style_  to  _typewriter style_, dashes might be replaced automatically with double hyphens (`--`). 

### Dialog view

*  _Dialog view_  is only possible in a  _language style_.

* When going back from  _Dialog view_  to  _normal view_, the whole document's font colour is set to black. 

### Other languages

* You can install several language variants in parallel. Use the exchange format to convert quotation marks between different languages.

* Conversion th the exchange format is only possible from a  _language style_.

## Credits

[OpenOffice Extension Compiler](https://wiki.openoffice.org/wiki/Extensions_Packager#Extension_Compiler) by Bernard Marcelly.

## License

This extension is distributed under the [MIT License](http://www.opensource.org/licenses/mit-license.php).