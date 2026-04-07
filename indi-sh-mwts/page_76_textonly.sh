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
border_line "Elias considered the question, sipping his tea in silence. Elias took"
border_line "the cups and placed them inside his office, humming to himself as he did"
border_line "so. Bardia looked at Elias with a puzzled expression., although it was"
border_line "not out of disregard to the question asked. Elias came back, still"
border_line "pondering on the question, and sat in a chair, facing Bardia and him."
border_line "Elias answered in a modicum of finality and said: \"You probably might"
border_line "not know this, but the school was built around the same time the"
border_line "celebration of Samson's Circle had taken place. Why not start from"
border_line "there? See what the Qin has to say?\""
border_line ""
border_line "He turned from Elias to Bardia, and then asked Bardia: \"You want to head"
border_line "to school later when there is a day off?\" Bardia thought about it,"
border_line "albeit in a more excited tone than a serious one. And answered with an"
border_line "excited nod, a smile, and a handshake between Elias and his self. They"
border_line "looked at Elias and appreciated his wares, and both Bardia and he left"
border_line "the shop with Elias smiling behind them, from the counter. He noticed a"
border_line "customer entering Tabitha's shop. The person was a lady, although it"
border_line "seemed that a gentleman accompanied her as she seemed to enter in a sort"
border_line "of forceful way, rather than in a composed and curious manner - the way"
border_line "customers enter a shop."
border_line ""
border_line "Bardia and he looked around the shops, after which point he asked Bardia"
border_line "about a painting. Bardia, excited, raised many questions on the matter:"
border_line "they both looked at the painting, with Bardia being awestruck by it."
border_line "There seemed to be a lot of awe over the contents of the painting. \"It"
border_line "is for the best\" he thought, looking at how happy Bardia was. \"We"
border_line "already have the paintings reprint. I'll show you later\" he informed"
border_line "Bardia."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 77, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_77_title.sh" ;;
esac
