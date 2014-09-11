ice-labwm
=========

icewm theme+ configuration for light desktop

the content of this repo would be placed in your ~/.icewm, but please be careful:

The next installation's script may overwrite any previously set'd files from this directory,
 and any configuration from the <</usr/share/icewm/>>'s place.

If you already took somes time to set icewm for your flavor, save this precious work:

If something go's wrong, rename your ~/.icewm/ directory, and you should get back to the default configuration.


resource:
i3lock
orage
icewmbg
gkrellm
gk-volumeplugin

install script:
user@home~$
installation icewm si ce nest pasdeja fait:
sudo apt-get install icewm+resource


sauvegarde
mkdir icewmtheme && mkdir icewmtheme/default && mkdir icewmtheme/mycustom && mv .icewm/* icewmtheme/mycustom && cp /usr/share/icewm/* -r icewmtheme/default
mkdir .icewm/
cd .icewm
git clone this_repo
