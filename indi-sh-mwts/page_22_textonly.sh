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
border_line "Punbell quietly looked at the numerous documents, and classifying them"
border_line "in his routine means. He noticed Punbell's box in the center of the"
border_line "table, which he had last noticed on the rightmost corner. Punbell"
border_line "lowered his gaze and observed the box carefully. Punbell held the box"
border_line "with both hands, placed it at the center-right, and then used gestures"
border_line "to inquire regarding the nature of this gift or offering. He nodded to"
border_line "the discussion which ensued, and to the message Elias had included with"
border_line "the offering."
border_line ""
border_line "Punbell smiles - which was something that lightened up the mood in the"
border_line "library - and shook his head. He opened up the box and, taking note of"
border_line "what had been offered, he placed it in one of the cupboards. Punbell had"
border_line "noticed him quietly looking in the direction of Towers 50 and 32."
border_line "Punbell subtly took note of what had been keeping his eye diverted, and"
border_line "to his disappointment, it was boredom. Punbell shook his head in"
border_line "disappointment and walked up to him."
border_line ""
border_line "Punbell pointed at the towers and gestured him to bring a specific"
border_line "something from one of the towers, noting that the details of the last"
border_line "owner was missing in the files. He got up and walked up the stairs to"
border_line "Tower 40. He continued walking and kept his eyes fixed onto the shelves."
border_line "He accidentally bumped into a little girl, and both of them fell back."
border_line "They apologized to each other. Before he could go on his way, the girl"
border_line "offered her hand and said \"My name is...\" He tried to remember her name"
border_line "but it did not seem to register. He took out the book from the shelf and"
border_line "brought it down to Punbell."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 23, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_23_title.sh" ;;
esac
