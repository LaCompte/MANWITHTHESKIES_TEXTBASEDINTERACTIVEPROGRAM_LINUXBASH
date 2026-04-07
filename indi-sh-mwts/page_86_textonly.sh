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
border_line "Bardia looked at the letter, moved and slightly tearful. A hand was"
border_line "placed on his shoulder, and told Bardia \"Let it go. I'm sure she would"
border_line "understand\" he looked at the changing fog, which engulfed the graveyard,"
border_line "and consumed it. The sound of the wind had become strong and with it had"
border_line "a moment of doubt first come. Then it passed. He looked at the rose, and"
border_line "nodded \"I hope you find closure, knowing the truth\" he thought to"
border_line "himself as he walked to the gate of the cemetery."
border_line ""
border_line "He simply decided to walk until a direction would make itself known."
border_line "\"After all, everyone seems to be directed somewhere\" he quipped, taking"
border_line "interest on the change of dresses. He took the turning from Colonial"
border_line "point through to the Niner Hotel."
border_line ""
border_line "He rang the bell at the reception and was responded by a gracious \"May I"
border_line "help you?\" by Homeiz. \"Why yes, she had a message for you. A moment"
border_line "please\" and while Homeiz searched, the sound of music would be heard."
border_line "\"A package was delivered to your room. I'm sure you will know what it"
border_line "means since it is marked\" answered Homeiz. He smiled at Homeiz and"
border_line "acknowledged what was said."
border_line ""
border_line "In his room, he looked at the package. But did not open it. He read"
border_line "through the letter on the desk, and wondered, smiling at the small"
border_line "gathering near the lake. He changed his clothes and wrote a note. A call"
border_line "was made to which he responded in a positive tone. He closed the phone"
border_line "and opened the door."
border_line ""
border_line "Upon the opening of the elevator, the man answered \"Bardia, my boy!\""
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 87, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_87_title.sh" ;;
esac
