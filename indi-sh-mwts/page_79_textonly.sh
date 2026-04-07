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
border_line "He took the staircase and went down to the beach, from where he"
border_line "continued straight past the guard post - \"how can you guard the endless"
border_line "bounds of water, when it does not guarantee guarding you?\" - he walked"
border_line "onward. He found himself facing a parking lot. Heading upward - he took"
border_line "the staircase to get to the parking lot - he walked and was amusing"
border_line "himself with a memory."
border_line ""
border_line "\"There is something for you\" to which an item was handed. He remembered"
border_line "reading this line somewhere in a book. It was the beginning of a very"
border_line "fascinating mystery short story - amongst the few things which seemed to"
border_line "have held his attention, apart from Rivek Thalroppe. Yet, among the"
border_line "numerous times he had read these books, he never knew the author. Quite"
border_line "literally, he did not know the author: he recollected the stories where"
border_line "the perpetrator of the act was always any person lurking where the crime"
border_line "had been committed, always a person faced by circumstances towards the"
border_line "act, and the person who caught the perpetrator was an honest, upright,"
border_line "well groomed officer of the law. And yet he did not know the name of the"
border_line "author."
border_line ""
border_line "He remembered when, near the end of a library shift, he had noticed"
border_line "Punbell having a cup of tea. \"Something on your mind?\" he asked blandly."
border_line "After taking up and finishing half the tea, Punbell responded in a"
border_line "bored, monstrous voice \"The gentleman in question never bothered writing"
border_line "his name. if it was a woman she would have used a pseudonym, or a nom du"
border_line "plume.\""
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 80, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_80_title.sh" ;;
esac
