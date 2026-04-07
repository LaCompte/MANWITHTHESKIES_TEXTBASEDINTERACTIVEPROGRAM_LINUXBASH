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
border_line "Whilst he was busy listening to Elias, Bardia checked the doll"
border_line "collection which Elias had started some time ago. There were various"
border_line "ones here and there. One which stood out was the stork. Bardia kept"
border_line "looking at it, but not touching it. He saw Bardia and kept Elias busy"
border_line "whilst Bardia was doing so. Elias kept a conversation to an extent where"
border_line "he wound up looking at Bardia, and with a calm, gentle yet sincere tone,"
border_line "he asked:"
border_line ""
border_line "\"What are you really interested in? You've been looking at that stork"
border_line "quite intently for quite some time. It isn't Dave, if that's enough to"
border_line "answer your question.\""
border_line ""
border_line "Bardia wound up turning to Elias and taken aback, looked at Elias very"
border_line "awkwardly. He looked at Bardia and then at Elias, and with an equally"
border_line "indifferent tone, asked: \"is it natural for water to boil for so long?\""
border_line "to which Elias, turning and noticing the water, pointed his pipe at him,"
border_line "nodded his head as if to acknowledge the subtlety of the statement, and"
border_line "removed the kettle. Elias poured the tea in all three cups, and beckoned"
border_line "all three to have the brew. Bardia was reluctant, still even confused."
border_line "Bardia was looking at the stork and drifting gazes between the doll, the"
border_line "stork, and Elias."
border_line ""
border_line "Elias, taking a sip from the tea, remarked: \"You have never been to the"
border_line "Birtash.\" And then turning to him Elias asked \"or has he?\" whilst"
border_line "tilting his head towards Bardia. He looked at Bardia, and then told"
border_line "Elias \"He has a big collection of books on birds. Has a lovely view of"
border_line "them from his house as well.\""
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 75, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_75_title.sh" ;;
esac
