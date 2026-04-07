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
border_line "\"Hello... I honestly was not expecting you to come here\" said the"
border_line "patient. Bardia smiled, but lacked anything specific to share with the"
border_line "patient. \"Bah, don't be so afraid, my boy. It is just a scratch?\""
border_line "Bardia smirked and with an exaggerated yet low voice he exclaimed \"A"
border_line "scratch? Surely a scratch does not warrant being hospitalized! A mere"
border_line "tourniquet should suffice!\""
border_line ""
border_line "Bardia and the patient laughed at their inside joke. After they"
border_line "collected themselves, the patient took note of the book which Bardia"
border_line "held, and to it Bardia said \"I thought we could read it together, like"
border_line "we used to back home.\" The patient smiled and agreed to the suggestion,"
border_line "and Bardia sat down near to him, opened the book and read it."
border_line ""
border_line "\"It seems that Dave has finally found the boy.\""
border_line ""
border_line "\"That actually was hinted in the previous book. He... he... we concern"
border_line "ourselves with how he plans on escaping.\""
border_line ""
border_line "\"Wait a minute. When was he kidnapped?\""
border_line ""
border_line "\"You didn't know? He was kidnapped during the previous book. The whole"
border_line "portion in which he is writing in first person and those bleak"
border_line "descriptions of life?? They were all while he had been held captive.\""
border_line ""
border_line "\"I don't remember those portions - \""
border_line ""
border_line "\"—because they were never read aloud. I read the book whenever you had"
border_line "to go to take care of mom. It was one of the two things I could manage.\""
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 83, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_83_title.sh" ;;
esac
