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
border_line "  \"Where is the company you sought?"
border_line "  Among clouds overcast, they are lost"
border_line "  a sign, perhaps, may help you out"
border_line "  for that is what did accost"
border_line "  A steppe of ghosts, they leave the prow"
border_line "  reaping the sadness they have sowed -"
border_line "  a steppe of ghosts..."
border_line "  a steppe of ghosts"
border_line "  like clouds above they are overcast now."
border_line ""
border_line "  \"The silken silver saber tongue"
border_line "  sang its amusing rhapsody;"
border_line "  of emotions incomprehensible, flung"
border_line "  nonchalant, for an audience not seen."
border_line "  For what is said, naught has been done"
border_line "  the shadow consumes, the tongue, is one"
border_line "  for what is said..."
border_line "  For what is said"
border_line "  look at what it has become!"
border_line ""
border_line "  \"A husk which walks the earth; redemption"
border_line "  only through the life it should know - grated without contention\""
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 42, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_42_title.sh" ;;
esac
