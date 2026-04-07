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
border_line "Elias went to the checkout counter and made a cup of tea. \"Would you"
border_line "like some?\" Elias asked Bardia. Bardia gave a look of wonder, and he"
border_line "patted Bardia on the shoulder, nodding. He showed two fingers to answer"
border_line "for himself and Bardia. Elias put the water in the kettle, and prepared"
border_line "the cups accordingly. He took the cup from Elias and handed it to Bardia."
border_line "Bardia looked at the saucer for a prolonged duration, fascinating by the"
border_line "design and the picture in it."
border_line ""
border_line "Elias took note of this observation. \"You have never been to the"
border_line "Birtash, have you?\" Elias asked Bardia. Bardia looked at him, wondered"
border_line "at the question, and responded with a shaking head. Elias drank his tea"
border_line "in silence, and would occasionally glance at Bardia. There was a"
border_line "shopkeeper curiosity in his eyes as he wondered about the response"
border_line "Bardia had provided. Elias hummed, put the cup down, and went to the"
border_line "back of the room. Elias came back with a plate of Yiveliz. Bardia,"
border_line "clearly ecstatic and excited, but trying to keep his calm composed self,"
border_line "smiled at seeing the Yiveliz. Bardia noticed that Elias was not looking"
border_line "and, thinking it was an opportunity, decided to take a Yiveliz. Elias"
border_line "hid his smile behind his cup."
border_line ""
border_line "When Bardia completely finished the Yiveliz, Elias asked Bardia: \"Have"
border_line "you ever been to the Birtash?\" Bardia looked at Elias and answered the"
border_line "question. Elias sighed and commented: \"That was a long time back... really"
border_line "does seem like an age has passed by\". He nodded at Elias' comment, and"
border_line "looked at Bardia. Bardia was completely clueless about the implication"
border_line "of the comment, but nodded more out of sympathy and to remain a part of"
border_line "the conversation."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 74, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_74_title.sh" ;;
esac
