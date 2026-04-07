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
border_line "He nodded at Laraiez, and bid him farewell. He looked at the ants,"
border_line "scurrying around the field. Some of them gathered into a big cluster,"
border_line "and with their combined might, they pulled some of the breadcrumbs"
border_line "together with them into their ant-house. He felt a tingling feeling on"
border_line "his back, running up to his neck and down his spine. He got up, more out"
border_line "of an unavoidable, involuntary reflex to be as far away from the insects"
border_line "as possible. He shuddered at his situation, but said to himself, \"you"
border_line "are bigger than them, you should not worry about being overwhelmed.\" He"
border_line "decided to walk over to the office of the Qin."
border_line ""
border_line "Bardia arrived at the entrance of the office of the Qin. He was"
border_line "initially worried, but seemed to be at ease once he saw one of his own"
border_line "sitting and waiting. He smiled at Bardia, and asked him \"How did your"
border_line "day go?\" Bardia shrugged his shoulders, and bobbed his head to and fro."
border_line "He nodded at Bardia, and offered him a seat. Both Bardia and he, sat"
border_line "next to each other, quietly noting a blank wall opposite to the office"
border_line "of the Qin. He told Bardia \"You should know, there used to be a painting"
border_line "on that wall at one point.\" Bardia looked at the wall, then looked at"
border_line "him. Bardia shook his head in disagreement. He looked at Bardia and"
border_line "nodding, reassuring that there had been a painting on this wall. Bardia"
border_line "disagreed a second time. He got up, walked to the wall, and took note of"
border_line "its details."
border_line ""
border_line "\"Ah ha! There it is!\" He pointed to a hole at one point of the wall."
border_line "Bardia looked at the hole in question, and gave a look of confusion."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 37, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_37_title.sh" ;;
esac
