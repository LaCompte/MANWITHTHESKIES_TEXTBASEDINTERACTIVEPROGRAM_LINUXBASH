#!/usr/bin/env bash

GREY='\033[0;30m'
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

clear

echo ""
echo ""
padded="$(center "Man with the Skies")"
typewriter "$padded" "$LIGHTISHBLUE"
padded="$(center "______________________")"
fadein "$padded" "$GREY"
echo ""
echo ""

echo "$(center "You ever heard about the Man With the Skies?:")"
echo ""
echo "$(center "[1]  No, I have not")"
echo "$(center "[2]  ... I have heard about him...")"
echo "$(center "[a]  Additional Content")"
echo ""
echo "$(center "[q]  Quit")"
echo ""
read -n 1 -s -r key
case $key in
    1) exec "$(dirname "$0")/indi-sh-mwts/page_01_title.sh" ;;
    2) exec "$(dirname "$0")/indi-sh-mwts/chapter_select.sh" ;;
    a) exec "$(dirname "$0")/indi-sh-mwts/additional_content.sh" ;;
    q) echo "" && exit 0 ;;
    *) exec "$(dirname "$0")/main_menu.sh" ;;
esac
