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
border_line "Bardia appreciated the book in the palms of his hands. \"I believe we"
border_line "have to go somewhere, wouldn't you agree?\" he asked Bardia, to which"
border_line "Bardia noted a crowd of pedestrians who had worn the same cap, passing"
border_line "by - they seemed to be interested in the going-ons of the city, as"
border_line "tourists tend to do. Most of them had questions, regarding the Rivek"
border_line "Thalroppe celebrations, and the Birtash, and the streets upon which they"
border_line "were walking. Bardia found himself facing a street lamp, a pedestrian"
border_line "crossing, and a traffic light."
border_line ""
border_line "He held Bardia's hand. Bardia was nervous, scared, doubtful, and even to"
border_line "a certain extent he was not willing to cross that pedestrian crossing."
border_line "\"Better to face the music now, than to forcefully remove noise later.\""
border_line "He spoke aloud. Bardia, taking a deep breath, looked at the traffic"
border_line "light, and when it turned green, crossed the road. Bardia was heading to"
border_line "the hospital, with the book that he had just a few moments back been"
border_line "gifted. He looked at Bardia, and noticed that an emotion marked out the"
border_line "state of mind he was in: dread. \"One must always be willing to face"
border_line "one's mortality. You can't do anything to alter that. What you can do is"
border_line "make the process easier by retelling the good that happened, and the"
border_line "good that men do\" he advised Bardia, who was waiting outside in a lobby,"
border_line "staring at a door."
border_line ""
border_line "A nurse came out of the room and beckoned Bardia inside. Bardia walked"
border_line "in and was greeted by the patient: a stately, yet pale, gentleman whose"
border_line "age had left his countenance bereft of joy; yet the moment he saw Bardia,"
border_line "he smiled, and requested the visitor to come near."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 82, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_82_title.sh" ;;
esac
