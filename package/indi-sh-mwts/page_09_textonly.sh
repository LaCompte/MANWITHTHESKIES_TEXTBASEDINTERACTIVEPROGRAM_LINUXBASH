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
border_line "An elderly gentleman sat at the checkout point of the shop. He was"
border_line "facing the door, focusing his energies in cleaning a cup; Elias, it"
border_line "seemed, kept a variety of items with him. the cupboards had an"
border_line "assortment of porcelain table-sets, a set of books whose titles were"
border_line "obscured by the height at which they were placed; there were also some"
border_line "dolls placed on the top shelves, some of which had brief descriptions"
border_line "provided as notes stringed onto them. Perhaps he had ben noting one of"
border_line "the dolls very carefully, as after some time Elias asked him:"
border_line ""
border_line "\"Have you ever been to the Birtash?\""
border_line ""
border_line "Elias took a sip from the cup of tea he had made. He nodded."
border_line ""
border_line "\"That was a long time back, seems like an age past by.\""
border_line ""
border_line "Elias got up from his stool and stepped out of the checkout. He took out"
border_line "a stick which had a hook grafted onto one end. He took out some of the"
border_line "objects from the shelves, and after some time would return them to their"
border_line "place."
border_line ""
border_line "\"Yes, quite a collection, but still has a long way to go before I can"
border_line "call it a complete collection.\""
border_line ""
border_line "Elias sighed and shook his head."
border_line ""
border_line "\"There is... are... so many places to go, before I can be fully"
border_line "conclusive with what I have. I do wonder though... why are you so"
border_line "interested in it?\""
border_line ""
border_line "Elias took a sip from his tea and had a Yivelis alongside."
border_line ""
border_line "He nodded and opened one of his drawers. \"Why not start from there? See"
border_line "what the Qin has to say.\" said Elias."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 10, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_10_title.sh" ;;
esac
