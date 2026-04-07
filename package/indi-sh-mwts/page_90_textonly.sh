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
border_line "He sat down on the bench and realize that there was nothing to look at"
border_line "except a wall. While it seemed tempting to stay there and be left to"
border_line "imagine the history of the wall, and how it had caused someone trauma"
border_line "and had left such an important influence upon the persons who were"
border_line "present there perhaps even shared a historical movement for anyone to be"
border_line "introspective about, he got up and continued walking until he found a"
border_line "bench which faced another portion of the park."
border_line ""
border_line "He noticed that there were families that sat down here and there having"
border_line "a picnic on the benches and tables. A few had brought their cooking"
border_line "materials with them, and were enjoying the present company and the"
border_line "splendor of being \"one with nature\". \"If one is already in a park"
border_line "surrounded by natural beauty, then how else should one be considered one"
border_line "with nature except living there?\" he wondered as the families enjoyed"
border_line "the afternoon sun with sandwiches and coffee and tea and juice and"
border_line "outdoor games."
border_line ""
border_line "He noticed a couple sitting on one of the benches with an attached"
border_line "table. They seemed familiar except that they were much older. An element"
border_line "of happiness marked them out as they made their way - or rather, not"
border_line "seemed like their son made their way - clear, as they had food. What"
border_line "they talked about did not matter in context as the actions and actual"
border_line "presence of their son - and possibly, the rest of the family as a young"
border_line "child would interrupt them to show something from his book. Who was not"
border_line "smiling often, but showed a significant amount of covers for them."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 91, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_91_title.sh" ;;
esac
