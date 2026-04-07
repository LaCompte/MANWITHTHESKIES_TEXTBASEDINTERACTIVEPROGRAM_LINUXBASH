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
border_line "\"You ever heard about the stork and the way that it had to struggle to"
border_line "get its delivery across?\" He asked Bardia, to which he was provided a"
border_line "negative answer. He answered by smiling and then told the tale about the"
border_line "stork."
border_line ""
border_line "\"There used to be a time that the children of the world had to be"
border_line "delivered to their relevant houses. Quite a complex bureaucracy was"
border_line "involved. Bureaucracy is a heavy word, I would say it was a big bunch of"
border_line "annoyed pigeons who hated traveling further than was absolutely"
border_line "necessary. So they decided to hire new birds to make those deliveries."
border_line "To this day, these deliveries are done by storks."
border_line ""
border_line "\"A stork came to the pigeons saying that he saw their advertisement for"
border_line "a delivery bird who would be willing to travel long distances to get the"
border_line "package to its location. The pigeons looked at this fine gentle-bird,"
border_line "and wondered what he actually had in mind when he applied for the post."
border_line "So they asked it a few questions. He knew his way around the world. He"
border_line "certainly knew his geography, trigonometry, and airship physics. He had"
border_line "a witty way with words, and loved pedantries. But most importantly, he"
border_line "was determined to get the job, and was willing to prove his worth for"
border_line "it. The pigeons were, and still are, a very devious and cowardly bunch"
border_line "of creatures. So they decided to give the stork a shot. They hired him"
border_line "on a temporary assignment."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 47, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_47_title.sh" ;;
esac
