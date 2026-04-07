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
border_line "\"You probably have something to give to her, right?\" he asked, and"
border_line "Bardia stepped out from the tree where he had been observing the"
border_line "proceeding. He looked at the tombstone, and the empty plot which had"
border_line "been readied for someone. The garden, laid out with care and concern for"
border_line "her, was abundantly nurturing flowers. Chrysanthemums, tuplis and a star"
border_line "of Birtash were amongst the ones planted. Bardia sighed and placed the"
border_line "single stalk of the desert rose and then requested if he may share"
border_line "something with her. Taking the silence, as well as some clearing off the"
border_line "fog, to be an affirmative he sat on one of the chairs provided and read"
border_line "portions from a notepad:"
border_line ""
border_line "I remember father being constantly worried about your health and"
border_line "countenance. As diligent and as loyal as he had been in life, I had"
border_line "tried to be the same. In that I could show how much I cared for you. I"
border_line "had disavowed my vows - I promised an abstinence of speech, until your"
border_line "health improved. I realize that I had been miscalculating my actions,"
border_line "inasmuch as children are prone to such approaches. It is never too late"
border_line "to say you matter to me: father and you had your reasons for sheltering"
border_line "me, and to that I can only say that it was for the best; but with each"
border_line "passing day, with each moment, I realize that my silence had rendered me"
border_line "unable to speak with you. To let you know that you were a part of my"
border_line "life. You still are - the birds I count in the morning light, the"
border_line "support from Punbell in matters of a literary concern, the small"
border_line "kindness of Mr. Elias, all remind me of you. And in all, I hope we met"
border_line "often in this place, such that the ghosts of the past are buried.\""
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 86, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_86_title.sh" ;;
esac
