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
border_line "The sound of the waves pounding the beachhead sounded oddly familiar. He"
border_line "nodded as to the reason for why this was so. He could see some sailors"
border_line "on a boat at the distance, although they were too small to be fully"
border_line "visible from his vantage point. They seemed to be in a situation, yet"
border_line "what that situation specifically entailed was not clear and, it seemed,"
border_line "rather trivial in comparison."
border_line ""
border_line "He felt the sand on his hand, slowly making it flow downwards like a"
border_line "river... Flowing down a cliff... Hence making a waterfall. As he made"
border_line "this correction, he heard feet scratching the sand from the distance. He"
border_line "didn't turn back to look at who it was. He remembered a moment from his"
border_line "school days, and during his time spent in the library. And during this"
border_line "stream of consciousness, he recalled some passages of a book he had been"
border_line "following during his free time. It was a novel set in the district of"
border_line "Yivelis, and talked about the origins of the sweet dish."
border_line ""
border_line "  \"Most will remember the recipe like a glove, and very few can claim to"
border_line "  be unable to cook it, yet the origins of this price - read, a"
border_line "  wonderful yet expensive experience for the stomach that is cheap in"
border_line "  purchase - feast continue to remain a mystery\""
border_line ""
border_line "This was the opening paragraph to the forward of the book \"Yivelis\","
border_line "Although in fairness, this was a chapter and not a full fledged book."
border_line "\"It was the only chapter with any substance\", he thought to himself."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 45, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_45_title.sh" ;;
esac
