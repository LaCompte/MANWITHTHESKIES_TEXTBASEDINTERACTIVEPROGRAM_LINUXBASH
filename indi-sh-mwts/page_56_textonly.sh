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
border_line "Rinaar pushed a button on the elevator, and they found themselves after"
border_line "some time in the basement, where a sign on the wall marked out the"
border_line "direction of the store. Rinaar led him towards it. He noticed while"
border_line "following Rinaar that it was a fairly spacious hallway. The paintings of"
border_line "lava, volcanoes and obsidian did not phase him. \"And yet, even now,"
border_line "people think that lava is a useless phenomenon\" he said aloud, to which"
border_line "Rinaar replied \"It was a subtler time, and meant for a more jurisprudent"
border_line "era. When I was a child, we did not take such matters so lightly - all"
border_line "tasks at hand were resolved by order of immediacy rather than ranked by"
border_line "ease. Like lava, the problem could be contained immediately, or allowed"
border_line "to grow until it led to complete failure and catastrophe.\" He nodded to"
border_line "Rinaar's point and responded \"Possibly. I always thought it had to do"
border_line "with how the dead can count us at any time.\" Rinaar laughed at the"
border_line "observation, and requested to wait in a room marked \"Observations and"
border_line "Reading Area\". After ten minutes, Rinaar beckoned him to enter."
border_line ""
border_line "Rinaar came in the room bearing a file and a box. He looked at the file"
border_line "whilst Rinaar emptied the box. Rinaar informed him about the documents."
border_line "Had him sign specific pages on the official use of the room, and pointed"
border_line "a clock and the button underneath it. He was left alone to go through"
border_line "the documents."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 57, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_57_title.sh" ;;
esac
