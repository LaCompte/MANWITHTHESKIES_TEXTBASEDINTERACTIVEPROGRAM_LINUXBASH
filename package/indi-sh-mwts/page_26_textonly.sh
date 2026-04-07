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
border_line "He looked back at the notes he had made whilst writing, and continued to"
border_line "whistle as he made his written thoughts clear. He heard a horn from one"
border_line "side of the road, heading in the direction of the library. He couldn't"
border_line "make out who was driving, but he noted that the boy sitting on the"
border_line "passenger seat was much more quiet than his general nature. It had a"
border_line "certain degree of nostalgia to it, which he could not put into words. He"
border_line "noted it and continued to walk downwards from the hilly road. \"Seems"
border_line "like a natural way to go\" he thought to himself."
border_line ""
border_line "Elias had just opened a box of Yivelis, and offered it to him. \"You"
border_line "might as well have some. You sound like a scientist who discovered what"
border_line "our water is composed of\" Elias advised, and took note of what had been"
border_line "described in the notepad. Elias nodded, and answered with foresight,"
border_line "\"There may perhaps be an answer to be found at the house in the middle"
border_line "of the street. It is not that far from there. The kid and you might have"
border_line "a lot more in common than you think.\" Elias took one Yivelis, and dipped"
border_line "it in his tea. He looked at the shelves in Elias' store, finding that"
border_line "they looked the same, in a different sort of way. He noted it in his"
border_line "thoughts."
border_line ""
border_line "He got up to walk out of the shop. Before he left, he looked at Elias."
border_line "Elias pondered with his tea, and after pointing his finger towards the"
border_line "sky in a revelation, he took out a box, and gave him a book. \"The kid"
border_line "had asked me to reserve it for his summer break. You should ask him"
border_line "about it when you two meet up.\" Elias explained to him, and Elias waved"
border_line "goodbye. He left the shop, with thoughts about the purple flower having"
border_line "limited importance to him."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 27, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_27_title.sh" ;;
esac
