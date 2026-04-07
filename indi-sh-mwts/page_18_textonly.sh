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
border_line "  \"He whistled a song as he made his walk in a general direction. Most"
border_line "  of his walk seemed to be pedestrian, with a noticeable increase in the"
border_line "  fog as he made his walk onward. \"Whistle me a lullaby\" he hummed and"
border_line "  whistled, as he made his way onwards. He couldn't clearly distinguish"
border_line "  what lay ahead of him, and as he walked forward the trekking distance"
border_line "  covered became consumed\""
border_line ""
border_line "\"I'll find out where I read that segment from\" he noted to himself"
border_line "quietly as he made his way from the school back to the road. Much like"
border_line "the section, he noticed that the fog had increased in thickness,"
border_line "although it was noticeably more quiet. The family who had been at the"
border_line "beach seemed to have gone in another place. Or not. The sound of the"
border_line "water gave a very calming feeling as it struck the sand. He remembered"
border_line "as he walked, something which he had thought of and considered whilst at"
border_line "the school. He found after some time, that he was near to the pavement"
border_line "leading to Elias' shop. He entered the shop."
border_line ""
border_line "\"You look like a century old joke being sold to a clueless child\""
border_line "commented Elias, as he cleaned some cups. He had an opened box near the"
border_line "counter. After placing the cup on one of the shelves, he took out one of"
border_line "the dolls from the opened box, and observed it very meticulously. \"Are"
border_line "you thinking what I am thinking\" Elias asked him, whilst turning the"
border_line "doll too and fro. Elias did not need to get a response - neither in"
border_line "words, nor in gesture. \"So I am the only one thinking it\" said Elias,"
border_line "and put the doll in a box and hid it under his counter."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 19, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_19_title.sh" ;;
esac
