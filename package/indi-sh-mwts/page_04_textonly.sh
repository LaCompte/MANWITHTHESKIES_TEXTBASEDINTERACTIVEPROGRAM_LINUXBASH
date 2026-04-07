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
border_line "It - the briefcase - was a modest article. It had some papers but mostly"
border_line "it was empty. It did have some significant qualities for astute"
border_line "observers. It was an inheritance, as the mark on the front insignia had"
border_line "some similarities to a school near the Niner. While it was mahogany"
border_line "colored, the briefcase was made of studier stuff - an alternate"
border_line "perspective would suggest that it had been underutilized, with evidence"
border_line "pinpointing to the state of his backpack. On one corner was a slight"
border_line "chipping, the exception to an otherwise well cared for piece of"
border_line "equipment."
border_line ""
border_line "he took out a letter from the briefcase, and placed it on the desk. The"
border_line "briefcase was placed in one of the closet drawers. He then opened his"
border_line "backpack, from which a significant variety of materials and relevant"
border_line "miscellany was littered on the bed. He first assorted them in an orderly"
border_line "fashion; he then placed them in their relevant places in the room. Once"
border_line "the backpack was emptied, he hid it under his bed. He was about to start"
border_line "reading the letter, when the telephone rang again. he picked it up, and"
border_line "heard the request from the reception desk."
border_line ""
border_line "\"Yes, Homaiz, connect her please.\""
border_line ""
border_line "he noticed that the fog had become noticeably thicker, even though the"
border_line "wind had slowed down significantly. The rustling had stopped as well."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 5, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_05_title.sh" ;;
esac
