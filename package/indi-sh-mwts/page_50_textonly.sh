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
border_line "Bardia was in a confused state after the conclusion of the story. He"
border_line "looked at Bardia and after waiting some time, informed Bardia \"You can"
border_line "ask me questions regarding Rivek if you want. Seems to me like you don't"
border_line "agree with most of what has been shared.\""
border_line ""
border_line "Bardia, realizing that he could stay quiet no longer, asked him: \"Rivek"
border_line "traveled all the way back to hand over a personal letter? Even though he"
border_line "had informed the eagle that the people wanted to thank the director and"
border_line "the team themselves?\" He nodded at Bardia, and responses \"Yes, that is"
border_line "exactly what he did and exactly what the director was given.\" Bardia"
border_line "looked at the waves in wonder. He quietly looked at the waves and the"
border_line "water with Bardia, busy with his own thoughts and perspectives. Bardia"
border_line "broke the quiet and asked another question: \"Did Rivek have big wings?\""
border_line "He looked at Bardia, puzzled, and answered \"Yes, Rivek had big wings."
border_line "Why do you ask?\" Bardia then responded \"I don't think it makes sense for"
border_line "a stork to have large wings, when the director is an eagle. Eagles are"
border_line "huge...!\" Bardia stretched out his hands to the furthest extent that he"
border_line "could manage, in order to convey the weight of his point."
border_line ""
border_line "He laughed at Bardia's point. It was more of a chuckle rather than a"
border_line "laugh. He looked at Bardia and asked him \"Have you ever seen a stork"
border_line "before?\" To which Bardia just gave a blank stare. He looked at Bardia"
border_line "and wondered if he was being genuine, or was avoiding the answer to the"
border_line "question. Bardia responded. \"I have, yes.\""
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 51, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_51_title.sh" ;;
esac
