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
border_line "He acknowledged what had been spoken, but had no opinions about it. He"
border_line "couldn't give it much thought. The commotion of something being cooked"
border_line "distracted him. Something specific which he had eaten before, yet could"
border_line "not specifically put into words. So instead, he decided to follow the"
border_line "scent, and where it would lead him. He passed by the tent calling an"
border_line "assortment of sweets. And as he walked, he felt the scent growing in"
border_line "intensity and its general quality. He found it."
border_line ""
border_line "\"Hello good lad. What will be your pleasure... I see, a good choice."
border_line "Would you like... No? Very well then. Mostly everyone I've known had it"
border_line "differently... Yes, quite right. There is no true way of eating this"
border_line "dish... You like it from what I gather, should I... Eh, you would like"
border_line "one more? I'm sure he would like it very much. Thank you... Stay"
border_line "blessed...\""
border_line ""
border_line "He kept thinking to himself as he looked around some more at the Birtash"
border_line "tents. He wondered if there were more attractions available in the"
border_line "vicinity. So he walked around and found himself a telephone booth. All"
border_line "that was found inside - could be found inside, all the same - was the"
border_line "telephone, a page with specific numbers and whom to address, and a"
border_line "directory with numerous colored pages: red for \"hospitals and almanac\";"
border_line "yellow for \"services\"; white for \"Lost\"; gray for \"Numbers\"; green for"
border_line "\"Arts\"; pink for \"Nothing related to women unless it's a funny story or"
border_line "a lady shop\"; and black for \"All the above, in that order\"; brown for"
border_line "\"general numbers\", silver were \"restaurants\", cyan for \"hotels\", and"
border_line "maroon for \"every other place on the map which matters\"."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 43, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_43_title.sh" ;;
esac
