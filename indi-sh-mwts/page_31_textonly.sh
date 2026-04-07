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
border_line "He looked at Bardia and, bending one knee and looking at him with"
border_line "earnest sincerity, said \"I'll ask your parents if they could bring"
border_line "something sweet on their way home.\" Bardia looked at him, understanding"
border_line "what he meant to say. Bardia took one of the utensils and pointed at the"
border_line "bowl. He refilled Bardia's bowl, and handed it back. Whilst Bardia"
border_line "enjoyed the feast, he walked out of the dining room cum kitchen, took"
border_line "out his notepad and read through his notes. It was clear about some of"
border_line "the details, and how to work on them. He put his notepad back, and"
border_line "looked at the drawer at the entrance of the house."
border_line ""
border_line "An envelope was placed on the surface of the drawer. It was addressed to"
border_line "Bardia, and had not yet been opened. He went to the dining room and"
border_line "asked Bardia, \"Don't you want to check your letter.\" Bardia avoided his"
border_line "gaze, playing around with his food in a distracted haze. He sat o one of"
border_line "the seats, near enough to Bardia to be visible - fully - whilst not"
border_line "being so imposing. \"If it is okay with you, would you like me to share"
border_line "what is in the letter.?\" He asked Bardia. Bardia nodded to himself for a"
border_line "minute, and then showed his agreement. He opened the letter and read it."
border_line ""
border_line "A quiet held in the room. Bardia did not ask questions, nor did he show"
border_line "any nervousness either. He looked at the letter, and occasionally gazed"
border_line "in Bardia's general direction. He closed the letter and put it back into"
border_line "the envelope. \"It was instructions from your parents. They want to meet"
border_line "up with us at some place. The address was provided, so I was clearing up"
border_line "where it was. We would leave in some time. I'll wait for you to get"
border_line "ready.\" He told Bardia, and sat down on the sofa waiting for an"
border_line "affirmation."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 32, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_32_title.sh" ;;
esac
