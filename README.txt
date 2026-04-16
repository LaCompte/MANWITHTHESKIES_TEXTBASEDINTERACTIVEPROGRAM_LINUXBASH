![Man with the Skies](package/MAN WITH THE SKIES 2.jpg)

Man with the Skies
A project by La Compte.
Ver 1.0
Computer program completed on April 5 2026
Manuscript written by Shehroze Ameen (15 March 2019 to 10 October 2021)


About the project

Man with the Skies was written by Shehroze Ameen from March 2019 through to October 2021.

Originally written as a literary manuscript in 2019, adapted and developed as a computer program in 2026

This is a Linux based Bash Terminal Computer Program. It is an interactive text based terminal-based reading application written in Bash shell script, comprising a navigation engine, choice-based interaction system, and structured delivery of an original literary work titled Man with the Skies. Developed and authored by Shehroze Ameen under the La Compte imprint. Built on open source components as declared in the accompanying GNU General Public License documentation.This work has no visuals other than text being displayed on a screen.


This Readme functions as a guide on how to navigate this game, development history, and any relevant tools required to run it.

Please note that Man with the Skies is a Pakistan IPO registered entity and is subject to copyright law. The structure used to present it, is open source.

Requirements

This specific project is unfortunately predicated upon you, the user, using Linux. If you are navigating here through Windows, you have a few options:

1) set up a Virtualbox with Linux in it. Then run this program from there.
2) Set up Windows Subsystem for Linux on your Windows system that allows you to access this file and then run it.

For those running on Linux, this entire project has been structured exclusively to run on bash. Assumably it is natively running on your system.

Having said that, there are two ways to run it.

On terminal you navigate to the folder.

cd path/to/folder
chmod +x main_menu.sh
then ./main_menu.sh

Or alternatively, if you are using a desktop GUI interface: 
select the main_menu.sh, right click it, then go to properties and select "make this as executable".
I have already done the content, but to be sure, do check if it is executible at your end too.

Alternatively, just use the appimage. It is a fully integrated system where everything runs through the appimage with you not needing to touch anything.

chmod +x ManWithTheSkies-1.0.0.run
./ManWithTheSkies-1.0.0.run

At the time of testing, this project was developed on Zorin OS Core 17.2 with testing done on GNOME Terminal Version 3.44.0 for GNOME 42 Using VTE version 0.68.0 +BIDI +GNUTLS +ICU +SYSTEMD, and the actual bash files were developed using gedit 41.0. 

Having said that, the actual coding was counterchecked using Claude Pro Sonnet 4.6.

TLDR: Linux with a terminal. It can run on grub too.


Version history:

April 4 2026: 
* Page 1 templates completed. this page template was for two things: the title, and the textonly. Title was only going to show the title that would be indicating that a new chapter has started, whilst the textonly would be of two types: one is where there is only text (textonly) so the user will read it and then progress forward. And then there is one where there are both text and choice (textandchoice), and all three are bash files. They include the typewriter and fadein and center commands. only the textonly and textandchoice bash files also have a border line setting that defines the top, bottom and edges of the overall work. At the bottom of the page would be the page navigation and start menus. 
* even though there are textonly and textandchoice bash files, all files have been kept in the format "page_XX_textonly.sh" and "page_XX_title.sh" because of consistency across coding.
* Main Menu completed. typewriter, fadein, center and page navigation options. Specifically tailored in keeping with the manuscript.
* Relative navigation between the various page bash files so that they flow smoothly. All bash files for the pages are placed in the indi-sh-mwts folder. With the Main menu being in the root folder of the project.
* All title and textonly shell files generated for pages 01 through 92. Navigation and page numbers correctly configured via sed automation. There are 184 files - 92 title bash files, and 92 textonly bash files.
* With the exception of Page * Page 07, 11, 15, 17, 23, 25, 28, 30, 38, 40, 45, 60, 71, 78, 83, 92, all other textonly pages were fully updated and set. These specific pages - Page * Page 07, 11, 15, 17, 23, 25, 28, 30, 38, 40, 45, 60, 71, 78, 83, 92 - have a choice mechanism, hence requireing the textandchoice format while still being textonly.sh. The choice mechanism is focused on the narrative functionality, NOT the actual choice causing the game to alter in any way.
* Page 07 formating was completed so that the choice mechanism was integrated, the page layout was changed to indicate visually that a choice is being made, and that this choice is needed to progress forward in the plot. 
* Page 11 confirms that Page 07 changes have been integrated and can be used as a template.
* Page 07, 11, 15, 17, 23 and 25 completed.
* Typewriter delay adjustments made to pages to reflect narrative progression.

April 5 2026
* Page 07, 11, 15, 17, 23, 25, 28, 30, 38, 40, 45, 60, 71, 78, 83, 92 completed.
* revision of all textonly pages to match the actual contents of the manuscript.
* additional content script prepared and finalized. It is a single bash file with a submenu that has all four short stories inside, with a fifth option to read all of them at once.
* Typewriter detalys applied to pages 29, 58, 64, 65, 66, 82, 84, 85, 86, 89.
* chapter select screen added and main menu adjusted with this option.

* compilation of entire file into a single appimage file for easier access
* Generation of Metadata in com.lacompte.manwiththeskies.metainfo.xml

April 6 2026

Additional debugging done to ensure all bash files work properly.
Ensured that all files actually use the XX format, so 01 till 92, with 88 missing. That 88 being missing is intentional.

Tools utilized for development of project

Linux Bash Scripting knowledge
Claude Pro Sonner 4.6
Gedit 41.0
GNOME Terminal Version 3.44.0 for GNOME 42 Using VTE version 0.68.0 +BIDI +GNUTLS +ICU +SYSTEMD

Credits

Writer: Shehroze Ameen
Project Director: Shehroze Ameen
Project Assistant: Claude Pro Sonner 4.6
Operating System Framework: Linux Zorin OS Core 17.3
Project Editor: Shehroze Ameen
Project Producer: Shehroze Ameen 

This project is licensed as Open-Source in accordance with GNU License 3.0. It is fully and completely free and open source. Except for the content of this project.

The contents inside this project, the writing of Man with the Skies, is the intellectual property of Shehroze Ameen the author.
