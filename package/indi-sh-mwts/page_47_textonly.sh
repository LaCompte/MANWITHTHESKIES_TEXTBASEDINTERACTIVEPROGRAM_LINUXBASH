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
border_line "\"This stork had a special uniform tailor-made just for him. Remember,"
border_line "the organization was run by pigeons, who were short in height, tended to"
border_line "be happy sticking to a single point, were unbelievably lazy, and did not"
border_line "have large wings. This stork was a giant in comparison, having twice the"
border_line "wing span in comparison, twice the energy of a pigeon yet not as much as"
border_line "a seagull, and in the case of this stork in particular he had a long"
border_line "neck - unless you had met other storks, in which case it was nothing"
border_line "particularly out of the ordinary. He loved his assignment - it was as if"
border_line "he was destined to be a delivery stork his whole life."
border_line ""
border_line "\"Some time later, maybe a month or two, the stork received a special"
border_line "order. Before he could proceed with it, the pigeons, and their boss in"
border_line "particular, asked him to report to the meeting room. His first sentence"
border_line "upon being seated, facing the director of operations - an eagle - and"
border_line "the remainder of the key officials, was to comment 'This is probably the"
border_line "conference room'. Only the Director found this comment funny, whereas"
border_line "everyone else thought it was mildly annoying. The assignment was"
border_line "explained to him."
border_line ""
border_line "\"He had to travel across the sea to deliver a special package. He was"
border_line "initially told that the package was management controlled information,"
border_line "but the director informed him of its sensitivity through subtle cues."
border_line "The stork understood not just what the package was, but also how"
border_line "important this assignment was for this company. So he packed his things,"
border_line "he went into his room, and signed off everything, picked up the package,"
border_line "and flew off."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 48, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_48_title.sh" ;;
esac
