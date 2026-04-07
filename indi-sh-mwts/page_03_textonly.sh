#!/usr/bin/env bash

GREY='\033[0;37m'
LIGHTISHBLUE='\033[0;36m'
RESET='\033[0m'

fadein() {
    local text="$1"
    local color="$2"
    echo -e "\033[2m${color}${text}${RESET}"
    sleep 2.0
    tput cuu1
    echo -e "\033[0m${color}${text}${RESET}"
    sleep 1.0
    tput cuu1
    echo -e "\033[1m${color}${text}${RESET}"
    echo ""
}

typewriter() {
    local text="$1"
    local color="$2"
    local delay=0.02
    printf "${color}"
    for (( i=0; i<${#text}; i++ )); do
        printf "${text:$i:1}"
        sleep $delay
    done
    printf "${RESET}"
    echo ""
}

center() {
    local text="$1"
    local width=$(tput cols)
    local padding=$(( (width - ${#text}) / 2 ))
    printf "%${padding}s${text}\n" ""
}

border_top() {
    echo "|-------------------------------------------------------------------------------------\\"
}

border_bottom() {
    echo "|-------------------------------------------------------------------------------------/"
}

border_line() {
    local text="$1"
    printf "| %-83s |\n" "$text"
}

clear

echo ""
echo ""

border_top
border_line "he sat on the bed, taking in the view. He had brought with him his"
border_line "briefcase, a backpack and a box handed to him by the hotel, by the"
border_line "bellboy some time back, and had placed it on the suitcase table. He took"
border_line "the box from the suitcase table and tossed it on the bed. He had not"
border_line "given it much thought, nor had he unpacked his things yet. His"
border_line "disposition, his demeanor, his thoughts, were calm. \"Plenty of time to"
border_line "use, and yet no time at all\" was written on the caption of one of the"
border_line "paintings hanging in the room. It was just above the study-table, on"
border_line "which was placed a vanilla colored envelope, an empty set of paper"
border_line "sheets, a pencil, a bowl with complimentary erasers, another bowl with"
border_line "complementary sharpeners, a laminated paper on which was, in bold,"
border_line "written."
border_line ""
border_line "\"ERASERS AND SHARPNERS WILL BE PROVIDED UPON REQUEST: CONSERVE WATER."
border_line "YOU SPILL IT, WE BILL IT!\""
border_line ""
border_line "\"Why bill the water when there is a lake nearby?\" he thought, as he got"
border_line "up to check the drawers of the study desk. He found a notepad with the"
border_line "same number as the serial code on the box. the telephone was placed by"
border_line "his bedside; a brief conversation ensued, after which he put the notepad"
border_line "in his pocket. His jacket already had a pen in it; just in case he also"
border_line "took a pencil, some erasers, and a sharpener. He opened his briefcase"
border_line "and put a few articles on the bed. These included a map, which he"
border_line "crumbled and put in the trash bin; a few flyers, which he discarded; a"
border_line "mini review which had been littered with red ink, from which he kept the"
border_line "third page and discarded the other five."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 4, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_04_title.sh" ;;
esac
