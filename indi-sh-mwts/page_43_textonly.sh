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
border_line "\"Curious what a small menial task could do to a town\" he thought to"
border_line "himself, as he looked at the map. It was the last page on the directory,"
border_line "marked by the bookmark which had an ornate design and a fine handwriting"
border_line "from someone who had not been very careful about things in general."
border_line ""
border_line "He noted some of the locations on his notepad, and the directions on how"
border_line "to reach them. He left the telephone booth, and made his way from the"
border_line "entrance of the Birtash tents towards the street marked \"Niner schemes\"."
border_line "The lack of any view of the Niner Hotel from any visual point of the map"
border_line "did not phase him. From there, he took a right, then straight till he"
border_line "found a crossroad; walking straight seemed to lead to an avenue that he"
border_line "could recall, but not completely; to the left were an assortment of"
border_line "buildings, in series, which seemed to be on fire yet did not spread, nor"
border_line "did they seem to be phased by this happening; on his right was a road"
border_line "heading downwards. He headed right, and followed the road."
border_line ""
border_line "He whistled to himself as he made his way downwards. The smell of bread"
border_line "and fresh fried eggs accompanies by a variety of fruits, some more"
border_line "fragrant than others. There didn't seem to be many people outside. He"
border_line "continued his way, finding the change from two sides covered by"
border_line "buildings, to one side having buildings with an overarching view of the"
border_line "beach."
border_line ""
border_line "He continued to walk forward in the direction of a staircase which led"
border_line "downward to the beach. He took the stairs, took off his shoes and felt"
border_line "the sand touch his feet."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 44, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_44_title.sh" ;;
esac
