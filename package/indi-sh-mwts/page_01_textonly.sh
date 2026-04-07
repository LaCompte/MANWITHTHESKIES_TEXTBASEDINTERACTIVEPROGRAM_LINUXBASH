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
border_line "It was on a moment's notice that was running on the radio as the car"
border_line "made the curve. It had rained the previous night. And the car, although"
border_line "in good condition, showed signs of wear and tear. The driver did not"
border_line "seemed to be bothered by this; if anything, he whistled to the tune of"
border_line "the song running on the radio. \"It was truly a dark and stormy night\"."
border_line "He held the steering wheel with both hands, and controlled the car's"
border_line "speed with the clutch and gear."
border_line ""
border_line "The inside composed of leather seats, floor mats, and the car's so"
border_line "called \"cock-pit\". this portion was in less clean conditions than the"
border_line "rest of the car, only because of the cups attached on top of one"
border_line "another. It had been a long drive, and with the clearing road ahead of"
border_line "him - \"why do people say empty road when they clearly always state that"
border_line "the coast is clear?\" was the thought running in his mind - he gave the"
border_line "indicator and took the turning for the hotel. It passed through a"
border_line "boulevard, where trees swayed to the rustling of the wind. The road,"
border_line "even with the steadily increasing fog, did not lead him astray: he"
border_line "slowed his car steadily, at the gate where the plaque read \"Niner"
border_line "Hotel\". He opened a khaki colored folder, took out a tri folded"
border_line "brochure/envelope, opened it, and held out a piece of paper in his hand."
border_line "After placing a hazard indicator, he stepped out of the car and walked"
border_line "to the booth marked \"check-in\"."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 2, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_02_title.sh" ;;
esac
