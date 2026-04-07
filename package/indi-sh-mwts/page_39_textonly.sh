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
border_line "He took out some food and placed it on the table, and along-with"
border_line "provided safe cutlery - a spoon - to eat the requisite meal. He took out"
border_line "a paper from the small ornament that had a stockpile of papers in it,"
border_line "and wrote something on it. He placed the paper on the entrance drawer,"
border_line "and put the keys, too, next to it. He noticed Bardia coming downstairs."
border_line "\"Your parents will be heading home soon. I put the keys of the house on"
border_line "the drawer. Paper has something meant for your parents. Food is on the"
border_line "table .Soon as I leave, you go on ahead and get something sweet in you.\""
border_line "Bardia nodded at what he said, opened the door, and asked for the keys."
border_line "He nodded at what Bardia expected, obliged the needful, and left the"
border_line "house."
border_line ""
border_line "He thought about what to do next, and decided to head in the direction"
border_line "of the Birtash tents. So, he turned right from the house, and walked"
border_line "straight. He continued straight for a significant duration. He knew he"
border_line "was making progress, since he could hear the sound of carnival music"
border_line "being part of a precession, and it was growing louder and more clear. He"
border_line "hummed alongside, although he still could not see any sign of a"
border_line "procession or a carnival passing through the streets."
border_line ""
border_line "He nevertheless, found the sign which lead into the tents themselves. \"I"
border_line "think they were intentionally hoping to mislead audiences and also"
border_line "anyone interested in the Birtash\" he sarcastically commented. The tents"
border_line "had numerous enclosures, each opening for a specific trade. They were"
border_line "not tents as much as they were marquees, which had things that they"
border_line "would trade for specific reasons and means. It was a quiet place, with a"
border_line "small number of people focused in specific tents."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 40, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_40_title.sh" ;;
esac
