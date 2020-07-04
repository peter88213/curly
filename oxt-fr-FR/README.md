# Conversion des guillemets pour LibreOffice et OpenOffice

![Screenshot: "curly" menu](https://raw.githubusercontent.com/peter88213/curly/master/docs/Screenshots/Menu-fr.png)

## Fonctionnalités

* Des macros _"smart quotes"_.

* Des macros pour chercher et remplacer les apostrophes et les tirets.

* Revenir aux caractères de la machine à écrire.

* Des extensions sont disponibles pour fr-FR, de-DE, de-CH, en-US, en-GB.

* Conversion d'une langue à une autre via un format d'échange.

* Menu et barre d'outils avec boutons.

* Vue de dialogue pour identifier la parole directe.

![Screenshot: Show direct speech in OpenOffice Writer](https://raw.githubusercontent.com/peter88213/curly/master/docs/Screenshots/DirectSpeech-fr.png)

## Télécharger et installer

[Page de téléchargement](https://github.com/peter88213/curly/releases/latest)

* Installez-le à l'aide du Gestionnaire d'extension OpenOffice/Libreoffice.

* Après l'installation (et le redémarrage de l'Office), vous trouverez un nouveau sous-menu pour chaque version linguistique dans le menu *Format*.

* En option, vous pouvez ancrer une barre d'outils pour votre confort. Si vous n'avez pas besoin de la barre d'outils (par exemple parce que ce n'est pas votre langue maternelle), il suffit de la fermer.

* Si aucun sous-menu supplémentaire n'apparaît dans le menu *Format*, veuillez consulter le menu *Outils > Add-Ons*.

## System requirements

* __OpenOffice.org 3.x ou Apache OpenOffice 4.x ou LibreOffice 6.x__
* __Java__ (OpenOffice en a besoin pour l'exécution de macros)

## Conventions

### Définitions

* _Style de la machine à écrire_ : Le texte est constitué des caractères du clavier de la machine à écrire.

* _Style de langue_ : Le texte contient des caractères typographiques selon les règles de ponctuation propres à chaque pays.

### Des apostrophes

* Afin d'éviter toute confusion avec les guillemets simples, il est conseillé de remplacer les apostrophes de tête ou de queue par un croisillon (`#`) lorsque vous tapez.

* Les croisillons (`#`) seront remplacés par des apostrophes lors de la conversion du  _style de la machine à écrire_  en  _style de langue_ 

* Lors de la conversion d'un  _style de langue_  en  _style de machine à écrire_ , les apostrophes peuvent être remplacées automatiquement par des croisillons (`#`). 

### Des tirets

* Afin d'éviter toute confusion avec les traits d'union, il est conseillé de remplacer les tirets par des doubles traits d'union (`--`) lorsque vous tapez.

* Les doubles traits d'union (`--`) seront remplacés par des tirets lors de la conversion du  _style de la machine à écrire_  en  _style de langue_ .

* Lors de la conversion d'un "style de langue" en  _style de machine à écrire_, les tirets peuvent être remplacés automatiquement par des doubles tirets (`--`). 

### Vue dialogue

*  _Vue dialogue_  n'est possible que dans un  _style de langue_.

* Lorsque l'on passe de la  _Vue dialogue_  à la  _Vue normale_, la couleur de la police de l'ensemble du document est réglée sur le noir. 

### Autres langues

* Vous pouvez installer plusieurs variantes linguistiques en parallèle. Utilisez le format d'échange pour convertir les guillemets entre les différentes langues.

* La conversion du format d'échange n'est possible qu'à partir d'un  _style de langue_.

* La conversion du format d'échange n'est possible qu'à partir d'un  _style de langue_.

## Credits

[OpenOffice Extension Compiler](https://wiki.openoffice.org/wiki/Extensions_Packager#Extension_Compiler) par Bernard Marcelly.

## Licence

Cette extension est distribuée sous la [MIT License](http://www.opensource.org/licenses/mit-license.php).