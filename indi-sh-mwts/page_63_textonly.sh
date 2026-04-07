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
border_line "He had something in mind. He noticed that the number of birds were"
border_line "frantic, even arguing with the squirrels over matters which were"
border_line "significant to the birds and the squirrels, but of the trivial concerns"
border_line "to outsiders. It did leave an impression, nevertheless. The thought of"
border_line "surviving by one's wits even when circumstances felt unfavorable, was"
border_line "ambitious albeit inevitable. He thought so, whilst watching the"
border_line "squirrels make their stockpile for the change of seasons."
border_line ""
border_line "  \"A change of seasons is always welcome... To remember how fragile time"
border_line "  is; to remind us of how, like crimson sunlight, to imagine what we"
border_line "  might find is boundless joy, yet also endless melancholy.\""
border_line ""
border_line "That was a quote which resonated with him. \"Who had actually said those"
border_line "lines was less relevant than why. I should look up the book where it was"
border_line "said\" he thought to himself as he got up from the couch and looked at"
border_line "the library."
border_line ""
border_line "There was a closet a bit further away from the couch, but it was"
border_line "nevertheless a fascinating closet. Some of the books in this closet -"
border_line "and it was a closet, not a library - were from a bygone era. To him they"
border_line "were a bygone era; some mentioned great kings who stood and watched"
border_line "their triumphs fade before their very eyes; some mentioned numerous"
border_line "causes which were made possible by the deeds of both men and women..."
border_line "Something the wicked would attempt to attain by conquest but fail, other"
border_line "things the crooked would attempt by treachery but fail."
border_line ""
border_line "The rest of the books were on birds. They were not specifically on the"
border_line "study of birds, rather the cultural context associated with birds - how"
border_line "birds influenced the way society works."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 64, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_64_title.sh" ;;
esac
