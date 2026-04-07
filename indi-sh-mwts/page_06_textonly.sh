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
border_line "He looked around the hotel and found a signpost, where he found this"
border_line "information. To him, it was an action performed to keep himself busy. He"
border_line "decided to continue walking forward, where he saw a staircase leading"
border_line "downwards. On the wall was posted \"B2 for swimming and listening to the"
border_line "sound of water flowing past the land.\" He decided to turn left, where he"
border_line "saw a few shops selling a variety of items. They did not particularly"
border_line "catch his attention, although he raised his eyebrows when he noticed"
border_line "that they had procured from a vendor specific to these parts and that he"
border_line "seemed to know this person. \"He may still be in town\" was one of the"
border_line "thoughts he had as he headed back towards the lobby. He walked towards"
border_line "the opposite direction, this time he found a coffee shop owner, a"
border_line "chocolate shop owner, and a bread maker walking into a bar... \"I don't"
border_line "think the joke went that way\" he thought to himself."
border_line ""
border_line "The signpost stated that the morning was dedicated to yoga classes while"
border_line "there were music rooms available for afternoon relaxation and"
border_line "consideration. He was half expecting a piano to start playing but there"
border_line "was only the sound of feet and the sound of an activity taking place."
border_line "One of the conference rooms was open, with the noise of a vacuum cleaner"
border_line "running in the background. He made his way back to the lobby."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 7, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_07_title.sh" ;;
esac
