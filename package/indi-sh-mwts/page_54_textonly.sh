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
border_line "He took out his notebook and shared a name, inquiring if any information"
border_line "was available on him. The manager pondered, and asked him to wait. He"
border_line "sat down in the main hall. This acted as a lounge from where everyone"
border_line "concerned would be called and made to act their part. He noticed that"
border_line "the roof had a lavish painting - it was not isolated, rather it seemed"
border_line "to be spread out to the whole hall, as each portion was in continuation"
border_line "of the key point. He took note of it and decided to walk in the hallway,"
border_line "to finish the painting."
border_line ""
border_line "There was a stork clearly visible among the numerous birds and it"
border_line "carried a sack on its beak - \"Dave I gather\" he commented. The stork was"
border_line "passing through numerous hurdles, which had been presented beat for beat"
border_line "in the painting. What caught his eye was a portion of the painting where"
border_line "the eagle handed a memento to Dave, in the presence of numerous"
border_line "dignitaries, after which a snapshot of Dave looking at his boss walking"
border_line "to the light, was followed up with Dave being the leader of the company."
border_line "From what was portrayed, it seemed that he had been quite successful. A"
border_line "thought came to his mind, and with it he looked at the reprint he had"
border_line "bought. It was fascinating that there was no mention of it in the roof"
border_line "mural."
border_line ""
border_line "He was still in the lounge, waiting. He decided to open a newspaper,"
border_line "reading through the section marked \"The secret suspicious section\". It"
border_line "kept him busy for some time, giving him a few tid-bits which seemed new"
border_line "yet somewhat dubious by reference. He put the newspaper down, and took"
border_line "out his notepad. \"I'll get Bardia his ice cream, soon as I am done here\""
border_line "he thought to himself, and put the notepad back."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 55, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
    m) exec "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) exec "$(dirname "$0")/page_55_title.sh" ;;
esac
