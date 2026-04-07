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
border_line "\"I believe that a person hiding their identity only causes maters to"
border_line "escalate\" he thought, as he walked his way to the turning. He walked"
border_line "straight, and as he turned right, he noticed Bardia looking at"
border_line "something, placed behind a window. He walked up behind Bardia, and"
border_line "looked in the window. While most of the displayed items were mediocre at"
border_line "best, or mundane in the general case, he understood why Bardia stopped"
border_line "and continued to stare into the window."
border_line ""
border_line "The cover had an aging bird, and a bearded man, marching through some"
border_line "unidentified land; the man was armed with a gun, and the bird seemed to"
border_line "be in an artillery mole. It looked like his final chapter."
border_line ""
border_line "Bardia was holding onto the toy, disappointed at the high price. He"
border_line "looked at Bardia and smiled, stating \"I believe that someone has a"
border_line "lovely day today\". They walked into the shop, and towards the counter."
border_line ""
border_line "\"Good day, and many wonderful salutations! I hope... OH! Oh indeed! It"
border_line "was recently put in stores. You're quite lucky, because we had just"
border_line "restocked... A man of great taste. In fact, the editor worked with our"
border_line "very own Punbell... So there seems to be an offer in place on the book."
border_line "If you pay extra, then not only do you get a signed copy, but also a"
border_line "special extra that contains notes and other miscellany... Have a good"
border_line "day! Happy reading!\""
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 81, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_81_title.sh" ;;
esac
