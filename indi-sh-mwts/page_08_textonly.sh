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
border_line "He found himself making his way into an elongated pavement. There were"
border_line "numerous shops on either side, stretched to a distance, joined in part"
border_line "by a raised and boundary protected walkway made of wood. he found a"
border_line "number of shops, some of which seemed familiar. He stopped walking when"
border_line "he reached the stairs of four shops which were neighboring each other."
border_line ""
border_line "the leftmost shop had a number of items which he could not see, and the"
border_line "signpost on the front was as if it had been engrained onto the wooden"
border_line "panel. The shop neighboring it on the right had a vase like bucket, from"
border_line "which protruded a number of flowers. he could make out some colored"
border_line "ones, but they seemed to blend into one another since the fog flowed"
border_line "through them. The name of the shop was written cursive and was blocked"
border_line "partially by the roof, which was slanted to keep the small in shadows"
border_line "for a seat whenever there was a summer day. The shop neighboring the"
border_line "flower-shop had an unassuming double door entrance, and a simple"
border_line "signpost which read \"Elias' gift shop and general store\" in that exact"
border_line "format. The shop neighboring Elias had a long paper attached to the"
border_line "window and was seemingly barred."
border_line ""
border_line "He walked up to the shop's walkway and started from the leftmost shop."
border_line "the sign was not discernable although he could make out words from it:"
border_line "\"School store\". The flower-shop was titled \"Tabitha's Flower shop: with"
border_line ";complimentary' written on the bucket. He entered Elias' shop."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 9, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_09_title.sh" ;;
esac
