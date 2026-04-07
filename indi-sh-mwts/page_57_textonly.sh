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
border_line "Taking into account the time, he first looked at the number of documents"
border_line "and skimmed through the contents of the thickest folders. Some of the"
border_line "contents seemed to hold more weight, in terms of date written and their"
border_line "owner."
border_line ""
border_line "He picked up one of the documents. He looked at it first, instead of"
border_line "going from the top or the bottom. All the documents were serialized,"
border_line "which was a good point. The patterns in the documents was also"
border_line "understandable, although it required some time and deductive reasoning"
border_line "to fully grasp. Some of the documents had an assortment of signatures on"
border_line "them. Some of the documents had photos and maps attached to them. To"
border_line "him, it was all according to a pattern... There was meaning behind"
border_line "everything."
border_line ""
border_line "He took his notepad and compared what his findings were to what had been"
border_line "actually reported, noted or otherwise put on paper. He smiled at some of"
border_line "the pictures, taking notes of them. One picture to particular had made"
border_line "him chuckle softly as he made a few points about it. \"Bardia would like"
border_line "the place. I'll ask his parents about it\" he thought to himself as he"
border_line "put the photographs on the table in a box marked \"Photographs required\"."
border_line "He remembered a few points which he had made whilst at the Birtash"
border_line "tents, and searched in the files for any reference to them. There were"
border_line "none, either directly or indirectly. Some of the documents were letters"
border_line "which seemed to have neither been read, nor had been answered."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 58, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_58_title.sh" ;;
esac
