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
border_line "He looked at the whiteboard. To his left was a view of the playground"
border_line "where the sound of activity was at play. the room itself was full of an"
border_line "assortment of school projects, and lessons learnt by everyone who had"
border_line "passed through the same halls and system, the same way he did. He took"
border_line "note of what the students had been busy with. He took note of one"
border_line "particular project, in which a group had apparently been able to create"
border_line "a fascinating wonder out of ordinary objects."
border_line ""
border_line "He took his seat again, as the bell rang. the students started pouring"
border_line "back in, taking their places accordingly. A teacher entered the class"
border_line "carrying with him an assortment of papers. he put them on his table, and"
border_line "after taking out some markers, he proceeded with the lesson of the day."
border_line "\"Rawel Kenpel, what does water do to it?: He asked the teacher. to this,"
border_line "a lot of diagrams were drawn and an even bigger lot of words were"
border_line "spoken. He nodded to all this and thanked the teacher, quietly trying to"
border_line "make sense of this knowledge. \"Papa would know about it, I suppose.\" he"
border_line "thought to himself."
border_line ""
border_line "The day droned on in the same usual variety of events, often described"
border_line "as \"ufts\" by the students. It was a reference to the sound which"
border_line "students used to make, apparently, when a spectacular sort of failure"
border_line "happened, or if a variety of assignments had been given to be completed"
border_line "in a short duration. Even if these assignments were achievable, it was"
border_line "considered a pointless exercise, since it was more reasonable to make a"
border_line "physical copy of the assignment and rewrite it on a new set of pages."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 15, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_15_title.sh" ;;
esac
