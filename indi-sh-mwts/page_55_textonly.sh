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
border_line "He looked around the hall, as the manager requested him to wait. It was"
border_line "related to inviting the concerned individual whom had been intimated"
border_line "about the case. Counting the time spent, a fine gentleman arrived and"
border_line "introduced himself."
border_line ""
border_line "\"Hello, my name is Rinaar. How may I be of assistance?\""
border_line ""
border_line "\"I had a deposit in the bank some time back. It was under the following"
border_line "details.\""
border_line ""
border_line "The details were perused by Rinaar. There were a few questions asked"
border_line "here and there, but mostly it was an easily followed set of inquiries."
border_line "Rinaar took leave for some time to confirm these details, and left him"
border_line "at the reception area of the back."
border_line ""
border_line "\"How can Mr. Bez enter such a secure building?\" He inquired as he saw a"
border_line "set of open doors, acting as less a barrier and more a form of courtesy"
border_line "for the general public. Having said that, he wondered why he was the"
border_line "only person inside the building: most of the tellers seemed to be"
border_line "preoccupied with matters that were important - assumably - but did not"
border_line "concern with the public directly. He took the newspaper and read through"
border_line "it again. He had noted something in his notepad when Rinaar returned."
border_line ""
border_line "\"Yes, sir. All information checked out. I could have someone bring the"
border_line "files and deposits here to you directly -\""
border_line ""
border_line "\"I would prefer looking at the contents at source, Rinaar. If it is all"
border_line "right with the bank.\""
border_line ""
border_line "\"Of course, sir. Follow me please.\""
border_line ""
border_line "Rinaar led him through an assortment of halls and chambers, until they"
border_line "reached an elevator. Rinaar called the elevator which was somewhere on"
border_line "the twentieth floor. Rinaar noticed him whistling a tune to a song."
border_line "Rinaar kept his eyes on the elevator, softly tapping his shoes to the"
border_line "beat of the tune. The transition from a whistled tune to the actual"
border_line "music from the song that played in the elevator did not phase either"
border_line "Rinaar, him, or the people exiting the elevator."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 56, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_56_title.sh" ;;
esac
