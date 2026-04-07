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
border_line "Laraiez stepped out of the office and looked at Bardia and him, pointing"
border_line "at a hole in the wall. \"That isn't where we hung a painting whilst any"
border_line "Qin was here. I think you have it confused with another building\""
border_line "Laraiez commented, and requested both of them to come inside."
border_line ""
border_line "Bardia and he, looked at Laraiez. The Qin had a paper taken out from a"
border_line "report. After Laraiez had completed his reading of some portions from"
border_line "the report, he looked at Bardia. Laraiez asked Bardia, \"anything in this"
border_line "report you would like to disagree with?\" Bardia shook his head and"
border_line "looked at Laraiez and him. Laraiez looked at him, pointing at Bardia,"
border_line "and said \"You have anything which I should know about?\" He looked at"
border_line "Laraiez, racked his forehead, and simply raised his shoulders in"
border_line "confusion. \"I always thought he would like the library.\" He commented,"
border_line "looking at Bardia and smiling, patting him on the shoulder. \"You're"
border_line "right, in fact, it isn't because of his performance that we wrote what"
border_line "we did. Punbell is happy with his work. That simply does not excuse"
border_line "being... Isolated from the world.\" Laraiez responded."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 38, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_38_title.sh" ;;
esac
