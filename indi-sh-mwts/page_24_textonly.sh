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
border_line "The waves silenced any noise purely by the power of its fury. With each"
border_line "strike of the water on the beachhead, it felt as if the water was coming"
border_line "to life; to command the Earth in obeying the will of the water. It did"
border_line "not seem to have any effect on him. He looked out at the endless reach"
border_line "of the water. Amongst the books he had read, both in school and in the"
border_line "library, there were few discussions on the nature of the water. \"They"
border_line "should have taken a sample of the water and done something with it.\" He"
border_line "thought to himself, and not thinking that he was being clever."
border_line ""
border_line "He decided to take off his shoes and walked in the direction of the"
border_line "water. He noted the tides of the water and, keeping his distance, he"
border_line "stepped and waited by the beachhead. He felt the water course through"
border_line "the sand, embracing his feet and his knees. The water was mild - not so"
border_line "cold to make him shiver, not so hot it would have scalded his skin. He"
border_line "watched the water and the waves, moving when a stronger wave was about"
border_line "to touch the beachhead."
border_line ""
border_line "He heard the sound of feet scuttling through the sand, like a crunch"
border_line "being made at a regular rhythm. He turned around to notice a girl,"
border_line "gently walking but finding it difficult to do so. He gestured her to try"
border_line "walking without her shoes. She followed his advice, and smiled at him."
border_line "\"I forgot to introduce myself. My name is Maira\" she said, and offered"
border_line "her hand to him. He simply nodded, and turned to look at the water"
border_line "again."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 25, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_25_title.sh" ;;
esac
