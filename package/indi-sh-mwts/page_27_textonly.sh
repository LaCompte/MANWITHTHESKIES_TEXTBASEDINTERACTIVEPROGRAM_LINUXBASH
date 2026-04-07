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
border_line "He decided to walk further in the opposite direction, noticing that a"
border_line "few more shops had opened up in that direction. The road seemed a little"
border_line "bit on the wider side: there was a grander thoroughfare. The shops had"
border_line "more space and even had a deeper number of gullies between them. He"
border_line "could hear lots of chants and joyous music but it felt distant. \"Let it"
border_line "go; they could have fun, that isn't why I'm here\" he emphasized in his"
border_line "mind, slowly and steadily walking along the grid of the shops; he took a"
border_line "right from one of the stores and continued to walk straight until he saw"
border_line "a turning marked \"To the Birtash tents\". He went the opposite direction."
border_line ""
border_line "He found a house which had been perfectly fenced, had a vibrant green"
border_line "garden., with a few garden-gnomes in various shapes. One of them looked"
border_line "like someone who was an old harbinger of news, albeit withered by age"
border_line "and the ways of nature. There seemed to be a lack of flowers on the"
border_line "small mound at one of the edges of the fence. He could hear muffled"
border_line "sounds from inside the house. He walked in the direction of the fences,"
border_line "which turned and lead him to the entrance of the house. The roof was a"
border_line "foggy gray color, with a blue door accented by a number of stars which"
border_line "formed a frame around it. The walls were a mix of the two colors. There"
border_line "was a small window to his right, which was curtained. He could not see"
border_line "inside the house."
border_line ""
border_line "He first considered ringing the bell, but then he asked himself which"
border_line "was more appropriate. There was a button on the top left border of the"
border_line "door, and a knocker at the center of the door's design. \"Stick to old"
border_line "faithful first, then try other options\" he advised himself."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 28, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_28_title.sh" ;;
esac
