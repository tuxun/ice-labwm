ice-labwm
=========

icewm theme+ configuration for light desktop.

This skin try to offer a fonctional desktop helping to use the open tool that we use in our FabLab: http://funlab.fr

the content of this repo would be placed in your ~/.icewm, but please be careful:

The next installation's script may overwrite any previously set'd files from this directory,
 and any configuration from the <</usr/share/icewm/>>'s place.

If you already took somes time to set icewm for your flavor, save this precious work:

If something go's wrong, rename your ~/.icewm/ directory, and you should get back to the default configuration.


resource:

FunLab's tools:
repetierHost
Arduino
PureData
Processing
Inkscape
Blender
Scratch
Cura

dependancies:

yad-dialog:
	http://sourceforge.net/projects/yad-dialog/
i3lock
orage
esetroot
gkrellm
gk-volumeplugin
gk-shoot
audacious
universalindentui
icecc
grun
mate-power-applet

install script:
user@home~$
installation icewm si ce nest pasdeja fait:
sudo apt-get install icewm+resource


http://www.debian-fr.org/hiberner-sous-debian-t30298.html

http://forums.fedoraforum.org/showthread.php?t=282433


sauvegarde
mkdir icewmtheme && mkdir icewmtheme/default && mkdir icewmtheme/mycustom && mv .icewm/* icewmtheme/mycustom && cp /usr/share/icewm/* -r icewmtheme/default
mkdir .icewm/
cd .icewm
git clone this_repo
