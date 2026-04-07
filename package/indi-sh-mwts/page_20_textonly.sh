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
border_line "On the way, he noticed that a barrier separated him from another road."
border_line ""
border_line "He remembered his homework, and decided to take that opportunity to"
border_line "finish it. His father was doing something with the car and let him know"
border_line "that all was safe and under control. He stepped out of the car, opened"
border_line "the trunk and took out his bag. He noticed that there was a toolkit in"
border_line "one corner. He also took that out and offered it to his father. The"
border_line "response was lukewarm. \"Just be sure to remind me that we have to take"
border_line "the toolbox back with us. That would be nice.\" His father requested him."
border_line "He stepped back into the car whilst his father looked into the problem"
border_line "at hand."
border_line ""
border_line "He opened his book, and with a pencil, filled in all the answers that"
border_line "were being asked. By the time he got his final answer, his father - it"
border_line "seems - had been quietly poking his shoulder softly, as a nudge from a"
border_line "concerned parent rather than an angry teacher. He - looking at his"
border_line "father - noticed that they were at a different building rather than the"
border_line "school which he was used to. \"I'll pick you up before lunch. Look,"
border_line "Punbell is out waiting for us right now\" his father said, as he and his"
border_line "father stepped out of the car. He took out his bag and walked alongside"
border_line "his father. He then offered his hand to Punbell."
border_line ""
border_line "There was a brief discussion between his father and Punbell, and then"
border_line "his father left. He looked at Punbell, who pointed at the library and"
border_line "quietly walked inside. He looked around at the entrance of the library"
border_line "and found he was the first one there."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 21, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_21_title.sh" ;;
esac
