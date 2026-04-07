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
border_line "He walked from the shop to the main street, where another shop caught"
border_line "his eye. He entered it, and found that there were plenty of paintings on"
border_line "the shelves, albeit reprints in various sizes. He asked around for a"
border_line "stork reprint, which was duly provided."
border_line ""
border_line "With the stork reprint in hand, he made his way towards the road heading"
border_line "towards the crossroad. He headed upwards, and walked past the Niner"
border_line "Hotel. He noticed a couple walking around the vicinity of the hotel"
border_line "premise, but were less fascinated by what the hotel had to offer and"
border_line "were searching for something. The woman asked, or implied that she was"
border_line "asking, a series of questions to the man - questions which were not"
border_line "audible. He turned his gaze away from the couple and continued walking"
border_line "forward."
border_line ""
border_line "He noted another avenue as he made his way at the end of the road - \"an"
border_line "avenue turning towards another avenue, how original\" he thought to"
border_line "himself - and took note of the general affluence and well-maintained"
border_line "class of the place he was walking towards. He also noted that some of"
border_line "the roads on the avenue were owned by fairly decent, yet mostly rich,"
border_line "individuals. The thought running in his mind at that point, as he made"
border_line "his way to the bank, was \"did I give Bardia the ice-cream box I bought"
border_line "from the Birtash?\""
border_line ""
border_line "He asked at the reception if they knew where the manager was going to be"
border_line "sitting. The lady responded by informing him of where the manager was"
border_line "sitting, where he would be busy in case he was not sitting in his"
border_line "office, and what time he will be busy with lunch. After sharing all"
border_line "these findings and these facts, she politely guided him towards a seat."
border_line "He sat down and waited. He took out his notepad and reviewed some notes"
border_line "he had made in the duration he waited. The manager arrived and shook his"
border_line "hand."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 54, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
    m) exec "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) exec "$(dirname "$0")/page_54_title.sh" ;;
esac
