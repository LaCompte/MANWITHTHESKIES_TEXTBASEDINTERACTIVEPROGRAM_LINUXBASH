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
border_line "\"Your good name please:, to wit, the response was noted and shared with"
border_line "the check-in booth. The car made its way through the lush green, fairly"
border_line "moist front yard of the Niner, in the direction of the entrance of the"
border_line "hotel. He handed the car to the valet, and climbed the stairs. \"Where"
border_line "are you lovely princesses, who were mentioned in the brochure?\" he asked"
border_line "himself, as he turned to and for. With an \"Ah!\" he made his way to the"
border_line "reception. \"Welcome to the Niner hotel, where... you seem to have been a"
border_line "regular of ours, always a pleasure... We made a few changes to the hotel"
border_line "even if it seems that the Niner looks the same as your father"
border_line "described... spoken like a true Niner, well... here are the details of"
border_line "your room, and also... ah, great; enjoy your stay here, elevators are at"
border_line "the left atrium.\""
border_line ""
border_line "The guest walked to the elevators, holding his briefcase and hotel keys."
border_line "He was given company by the tapping sound which his shoes made as they"
border_line "made contact with the freshly polished granite floor. From where he"
border_line "stood, it looked like a painting; it was boring, and reminded of how"
border_line "long the elevator took to arrive to its relevant floor. Upon entering,"
border_line "he found that it had been full of air, giving off a cold aura. It wasn't"
border_line "in fact the case; The elevator stopped at the required floor, from where"
border_line "the guest made his way to his room. \"Aye, mist... that view indeed.\" he"
border_line "said, looking at the fog over the lake."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 3, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_03_title.sh" ;;
esac
