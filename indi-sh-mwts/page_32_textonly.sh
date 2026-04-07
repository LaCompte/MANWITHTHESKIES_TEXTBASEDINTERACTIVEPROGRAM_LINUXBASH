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
border_line "He noticed that the Birtash festivities grew softer, yet still being"
border_line "audible. It felt as if the celebration was near to its ending. He"
border_line "whistled with the music of the Birtash, bobbing his head too and fro."
border_line "After some time - \"time is relative to what I am doing\" he thought"
border_line "aloud - Bardia arrived... Looking familiar, or reminding him of a memory"
border_line "which was familiar enough yet did not seem to be so."
border_line ""
border_line "He, with Bardia, left the house, locked it, and then first took a left"
border_line "from the house. They passed by two streets and took a right from the"
border_line "third one. Continuing straight, they reached a Y section where one road"
border_line "pointed towards the school and one pointed towards the library. Bardia"
border_line "tugged his shirt, and pointed backwards. He took out the letter, and"
border_line "showing it to Bardia, said \"That is what I have been told. It won't take"
border_line "long. All you need to do is be there, and you will then head home with"
border_line "your parents. I studied in the same place, so I know a few secrets and"
border_line "tales of the place\" he informed Bardia, with a tinge of positivity."
border_line "Bardia softened his grip. He looked at Bardia and offered his hand,"
border_line "saying \"We can walk together if you want. I'll share a story with you"
border_line "too\". Bardia agreed to the proposal."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 33, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_33_title.sh" ;;
esac
