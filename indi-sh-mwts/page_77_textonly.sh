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
border_line "\"Could we go to the bank first?\" asked Bardia, and was promptly given a"
border_line "curt response \"No.\" Bardia looked at him, somewhat miffed at the answer."
border_line "He bent his knees, and told Bardia while keeping eye contact \"The bank"
border_line "is closed. If it makes you feel any better, we could go to meet Punbell."
border_line "It has been a while, plus he and the school are nearby\". Bardia promptly"
border_line "said no by shaking his head with significant energy, although he knew"
border_line "that Bardia was only using enough to prevent injury to himself."
border_line ""
border_line "He noted the response and decided to follow the beaten path; it should"
border_line "lead to a place of respite, sooner or later. There were a few, very"
border_line "disturbing thoughts which came to mind as a result of his idea of"
border_line "visiting Punbell first. He brushed them aside as a by-product of"
border_line "lethargy and decided to take some rest on one of the benches. Bardia"
border_line "asked if he was hungry, to which he responded in the negative. Bardia"
border_line "ate from the snacks that he had packed alongside and looked around. It"
border_line "was a quiet view, and yet it did not seem to be all as quiet as it"
border_line "should be."
border_line ""
border_line "\"It is nature's way\" he thought, as he let the situation soak in. The"
border_line "sound of squirrels, frogs, ducks, pigeons, and occasional badgers was"
border_line "sufficient to keep the imagination of any person flow vibrant. It was a"
border_line "calming scene, and his thoughts wondered off again onto another series"
border_line "of thoughts. He seemed to be in a distant place, yet very familiar faces"
border_line "roamed around. Just as he was about to push deeper into such a thought,"
border_line "he was shook awake from his slumber and asked by Bardia: \"you having the"
border_line "last one, or may I?\""
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 78, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_78_title.sh" ;;
esac
