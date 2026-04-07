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
border_line "He was overwhelmed by the site. The sight of so much paper bound into a"
border_line "cover and then put into towers and towers of classified and categorized"
border_line "columns, each numbered as a tower. The sheer volume alone would have"
border_line "made a lesser man run away. Punbell, walking in his typical determined"
border_line "yet mildly indifferent manner - a clipboard with lists was held by him"
border_line "on his left arm, quietly noting each tower block and the books in each"
border_line "one - gestured him to come forward. Using gestures he asked - in what"
border_line "could best be described as earnest professionalism - which of the books"
border_line "were present in the block. After listening to Punbell, he got up the"
border_line "ladder next to the tower and read aloud each book title to Punbell,"
border_line "starting from the rightmost corner at the topmost shelf, through to the"
border_line "leftmost corner at the bottom shelf."
border_line ""
border_line "He noted that each tower, although numbered, had a pattern. He used this"
border_line "pattern as he made his rounds with Punbell, helping in categorizing each"
border_line "book. The ones which were not present in the library were noted and he"
border_line "would then schedule a visit to them. Punbell - however- decided against"
border_line "sending him, making him continue the same set of steps as he was trained"
border_line "to do by Punbell."
border_line ""
border_line "Even though he was surrounded by an assortment of books, he did not"
border_line "actually take time out to pick a book and read it. He, however, had"
border_line "noticed people taking time to read through tomes without a care for"
border_line "time. He found Punbell sitting at his desk, working through his map and"
border_line "the list he had. He sat down in front of him, placed Elias' offering on"
border_line "the table, and quietly waited."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 22, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_22_title.sh" ;;
esac
