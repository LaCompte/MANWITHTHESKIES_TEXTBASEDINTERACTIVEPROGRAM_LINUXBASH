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
border_line "He looked at Bardia and raised an eyebrow. More an attempt at raising an"
border_line "eyebrow than fully raising an eyebrow. He wondered and asked Bardia \"If"
border_line "I asked you to describe a stork for me, would you be able to do so?\" To"
border_line "which Bardia thought about it and then with a nod, stood up and used"
border_line "gestures to describe something."
border_line ""
border_line "He occasionally interrupted Bardia to take more clarity about the"
border_line "description, but mostly he kept quiet and listened to what Bardia had to"
border_line "say. It was less said and more of actions being performed to emphasize"
border_line "the dimensions, look and the sheer presence of what constituted, in"
border_line "Bardia's mind, a stork. He nodded at the conclusion of Bardia's"
border_line "description of a stork, and did not ask further questions. They both"
border_line "wondered off in their minds, to which Bardia was asked: \"Shouldn't you"
border_line "be heading home by now? It is getting quite late.\" Bardia wondered at"
border_line "this point and pointed to the sky. He saw plenty of fog, yet it did not"
border_line "seem to indicate that the day was still ongoing. He got up and walked"
border_line "over to the stairs, with Bardia in arm's reach. They made their way"
border_line "towards the road, from where they traveled for some time and finally"
border_line "reached the house in the middle of the street."
border_line ""
border_line "Once he had dropped Bardia back to the house, he made his way to the"
border_line "road. Instead of heading in the direction of the Birtash, he decided to"
border_line "head back towards the shops. So he walked through a series of"
border_line "thoroughfares and opened the door to Elias' shop."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 52, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_52_title.sh" ;;
esac
