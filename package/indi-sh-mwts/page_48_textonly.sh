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
border_line "\"The stork braved through the winds and the fog, he stood his ground and"
border_line "he didn't give up. You see, contrary to what the pigeons had thought,"
border_line "this stork had actually traveled through similar weather just to get the"
border_line "assignment. To him, it wasn't a matter of life or death, or even"
border_line "survival. It was purely a test of strength. And he knew that he would"
border_line "succeed. He used all his experience and skills to not only keep the"
border_line "package safe, but also keep his flight safe from harm's way."
border_line ""
border_line "\"There was silence in the office, meanwhile. The stork had not provided"
border_line "any response yet. The pigeons were concerned, but the eagle was"
border_line "confident that all will turn out fine. If anyone among the pigeons had"
border_line "doubts about their boss' judgment, it was driven away the moment they"
border_line "heard him singing to himself. It was one of his favorite songs,"
border_line "something they knew he would sing when he was sure of his decision."
border_line "After all, he had never been wrong before. The rain grayed the skyline,"
border_line "and the fog did not help matters either. Still, they decided to wait."
border_line "One of two outcomes was inevitable in this situation - either the stork"
border_line "would reach his destination; or they will receive news that their"
border_line "package did not reach its destination. Still, there was no point in"
border_line "being doubtful, so they hoped for the best."
border_line ""
border_line "\"After what seemed like a whole day, or rather, as if a day and a night"
border_line "had passed, they received a phone call. There was an overwhelming"
border_line "silence - the moment of truth was here. The director was put on the"
border_line "line, He gave his designation, waiting for a response. And the response"
border_line "came: 'we got another customer, boss. They wanted to thank you"
border_line "personally.'"
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 49, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_49_title.sh" ;;
esac
