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
border_line "Bardia acknowledged his father's request with a tinge of regret and an"
border_line "abundance of calm composure. He stoked up on his feed, walked to his"
border_line "father, and requested if he may kiss him on the forehead. He was granted"
border_line "this permission, and completed the task with a modicum of grace and"
border_line "humility."
border_line ""
border_line "Bardia and he walked out of the hospital. And he took his leave, walking"
border_line "to the main thoroughfare on the corner of Colonial Point, and turned to"
border_line "the avenue following the redwood. He looked around to his amusement at"
border_line "the number of tourists who had busied themselves in the vicinity. \"If"
border_line "they are indeed somewhat enthusiastic about this region, they would make"
border_line "a pretty penny for the Hillview Hotel\" he thought to himself as he made"
border_line "his way past the avenue. \"Something my father once told me about mother,"
border_line "perhaps I could let her know.\" He thought wondering at the envelope in"
border_line "his pocket. He had taken it out and read it in Tabitha's Flower Shop."
border_line ""
border_line "\"An excellent choice; young and eternal, forever blessed in the paradise"
border_line "we could only dream of... surely to pay for complimentary flowers is"
border_line "foolish... yes, indeed, you are quite right; she would be most proud..."
border_line "do visit again whenever you pass by\" he heard, to which he looked at"
border_line "Tabatha, smiled, nodded his head, and bid farewell. As he walked past"
border_line "the avenue, and turned right, and took some twists and turns, he found"
border_line "himself facing those words. He responded with his offering, and a moment"
border_line "of contemplation."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 85, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_85_title.sh" ;;
esac
