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
border_line "Elias was putting some pots and crockery into a box when he entered the"
border_line "shop. \"Fancy seeing you again\" he said to a plate, which he cleared and"
border_line "then put into the box. Elias picked up the box and took it with him to"
border_line "the back of the store. He went to the counter, and heard Elias running a"
border_line "conversation with someone. It was not very audible, and it seemed of"
border_line "little consequence. Bardia looked through the window and wondered at"
border_line "what was being discussed."
border_line ""
border_line "Elias stepped out of his room and towards the counter. \"Just got a new"
border_line "shipment of tea and a few other items. Interested?\" Elias asked him. He"
border_line "wondered at what these items might be and then turned around, looked at"
border_line "the window, and waved Bardia to enter the shop. When Bardia entered,"
border_line "Elias walked towards him and offered his hand."
border_line ""
border_line "\"Hello there, young man. Pleasant surprise.\""
border_line ""
border_line "Bardia shook his hand and smiled, although his gaze was clearly"
border_line "distracted by something in the shop. Elias looked in the direction in"
border_line "which Bardia was looking. He picked up a stick which had a hook grafted"
border_line "on to the end. He took out some of the objects from the shelves and"
border_line "after some time, whether Bardia mentioned it or whether he mentioned to"
border_line "Elias what Bardia liked about the object, Elias would turn the object to"
border_line "its rightful place."
border_line ""
border_line "\"Yes, quite a collection, but still quite a long way to go before I can"
border_line "call it a complete collection\""
border_line ""
border_line "Elias sighed, and shook his head."
border_line ""
border_line "\"There is... are... so many places to go, before I can be fully"
border_line "conclusive with what I have. I do wonder though...\""
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 73, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_73_title.sh" ;;
esac
