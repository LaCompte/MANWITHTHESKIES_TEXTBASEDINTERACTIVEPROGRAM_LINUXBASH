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
border_line "Elias looked at him and asked whilst he took out some more dolls: \"I"
border_line "heard that you started working at the library\". Most of the dolls which"
border_line "Elias took out from the box were hand-made, and had small notes included"
border_line "with each one provided separately. They were varied in length - some of"
border_line "them were only two sentences long, others tended to be at least two"
border_line "paragraphs. Their quality, however, was uniform: they explained where"
border_line "the dolls had been hand-sown and what manufacturing quality standards"
border_line "were followed. \"So I heard; Lebrius Punbell should come over to my shop"
border_line "from time to time. Do let him know next time you get to meet him.\" He"
border_line "heard Elias say as he entered the shop."
border_line ""
border_line "Upon entering, Elias tapped him on the shoulder and offered him a box."
border_line "\"As an offering from me to Punbell. Just share those words with him when"
border_line "you meet him, he will understand what I am referring to.\" he took the"
border_line "box from Elias and left the shop. He saw some of the flowers were being"
border_line "taken from Tabitha's. He hastened his way in the direction of Punbell,"
border_line "preoccupied at the moment to note who the buyer was."
border_line ""
border_line "The fog was thickest as he left the street towards the main road but"
border_line "slowly became less thick after some time. It was being referred in the"
border_line "radio as well. \"Where does the lonely road go\" was among the better"
border_line "known songs which would have radio play, and yet it would always run"
border_line "from the middle - the chorus - rather than the beginning. He whistled"
border_line "the chorus to himself as he walked onwards."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 20, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_20_title.sh" ;;
esac
