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
border_line "\"Do you happen to have any models of birds by any chance?\" He asked"
border_line "Elias. Elias thought about the question, pondering on the contents of"
border_line "his shop. \"I'll have to check, but I never had bought a stork, or bought"
border_line "any bird models for my shop ever.\" Elias duly replied. He nodded at what"
border_line "Elias said, looked at the dolls and then asked Elias \"do you happen to"
border_line "have any dolls?\" Elias gave affirmation and showed him the variety of"
border_line "dolls at his various shelves."
border_line ""
border_line "He looked at the dolls, and asked questions on occasions. Most of the"
border_line "time he kept quiet. He let Elias speak on the subject matter. He took"
border_line "one of the dolls from its shelf, and looked at what it was made of, what"
border_line "it was wearing, its overall quality, and generally its presence. Elias"
border_line "asked him \"gift for a friend?\" He looked at Elias and then at the doll"
border_line "he had just picked up. He shook his head and responded \"just a deposit\"."
border_line "Elias was drinking his tea at the response. There was some discussion to"
border_line "which an exchange was duly made. He walked out of the shop, noting that"
border_line "the flower-shop did not have any free flowers to give for that day."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 53, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_53_title.sh" ;;
esac
