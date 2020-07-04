# Konvertierung von Anführungszeichen für LibreOffice und OpenOffice

![Screenshot: "curly" menu](https://raw.githubusercontent.com/peter88213/curly/master/docs/Screenshots/Menu-ch.png)

## Merkmale

* _Smart quotes_-Makros konvertieren Prime (Minuten/Sekundenzeichen) der Schreibmaschinentastatur in landestypische Anführungszeichen.

* _Suchen und ersetzen_-Makros für Ellipsen (Auslassungspunkte), Apostrophe und Gedankenstriche.

* Die Rückkehr zum Schreibmaschinenstil ist möglich.

* Es gibt Extensions für de-DE, de-CH, en-US, en-GB, fr-FR.

* Über ein Austauschformat kann zu anderen Sprachenstilen gewechselt werden.

* Es gibt ein Menü und eine Toolbar mit Buttons.

* Wörtliche Rede zeigen, indem alles ausgegraut wird, was nicht in Anführungszeichen gesetzt ist. 

![Screenshot: Show direct speech in OpenOffice Writer](https://raw.githubusercontent.com/peter88213/curly/master/docs/Screenshots/DirectSpeech-ch.png)

## Download und Installation

[Downloadseite](https://github.com/peter88213/curly/releases/latest)

* Installation über den OpenOffice/Libreoffice Extension Manager.

* Nach der Installation (und Office-Neustart) hat das *Format*-Menü ein Untermenü für jede installierte Sprachvariante.

* Optional kann man eine Toolbar andocken. Wer die Toolbar nicht braucht (weil sie z.B. nicht der Muttersprache entspricht), kann sie einfach schließen.

* Falls im *Format*-Menü kein Untermenü erscheint, findet man es unter *Extras > Add-Ons*.

## Systemvoraussetzungen

* __OpenOffice.org 3.x or Apache OpenOffice 4.x or LibreOffice 6.x__
* __Java__ (OpenOffice needs it for macro execution)

## Konventionen

### Definitionen

* _Schreibmaschinenstil_ : Der Text besteht aus den Zeichen der Schreibmaschinentastatur.

* _Sprachenstil_ : Der Text enthält typographische Zeichen nach länderspezifischen Interpunktionsregeln.

### Apostrophe

* Um Verwechslungen mit einfachen Anführungszeichen zu vermeiden, ist es ratsam, führende oder nachlaufende Apostrophe bei der Eingabe durch ein Nummernzeichen (`#`) zu ersetzen.

* Nummernzeichen (`#`) werden bei der Konvertierung von  _Schreibmaschinenstil_  in einen  _Sprachenstil_  durch Apostrophe ersetzt.

* Bei der Konvertierung von einem  _Sprachenstil_  in den  _Schreibmaschinenstil_  werden Apostrophe eventuell automatisch durch Nummernzeichen (`#`) ersetzt. 

### Bindestriche

* Um Verwechslungen mit Trennstrichen zu vermeiden, wird empfohlen, Bindestriche bei der Eingabe durch doppelte Trennstriche (`--`) zu ersetzen.

* Doppelte Trennstriche (`--`) werden bei der Umwandlung von  _Schreibmaschinenstil_  in einen  _Sprachenstil_  durch Gedankenstriche ersetzt.

* Bei der Konvertierung von einem  _Sprachenstil_  in den  _Schreibmaschinenstil_ werden Bindestriche eventuell automatisch durch doppelte Trennstriche (`--`) ersetzt. 

### Dialogansicht

* _Dialogansicht_ ist nur in einem  _Sprachenstil_  möglich.

* Wenn Sie von der  _Dialogansicht_  zur  _Normalansicht_ zurückgehen, wird die Schriftfarbe des gesamten Dokuments auf Schwarz gesetzt. 

### Andere Sprachen

* Sie können mehrere Sprachvarianten parallel installieren. Verwenden Sie das Austauschformat, um Anführungszeichen zwischen verschiedenen Sprachen zu konvertieren.

* Die Konvertierung des Austauschformats ist nur von einem  _Sprachenstil_ aus möglich.

## Credits

[OpenOffice Extension Compiler](https://wiki.openoffice.org/wiki/Extensions_Packager#Extension_Compiler) von Bernard Marcelly.

## Lizenz

 Diese Extension wird unter der [MIT License](http://www.opensource.org/licenses/mit-license.php) veröffentlicht.