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
border_line "Elias looked at the street, lost in thought. Elias seemed to have"
border_line "something in mind, and after finishing his tea, Elias took out a"
border_line "notebook... and then went to his office from where Elias took out a"
border_line "collections dossier. Elias requested Bardia to take a look, and pointed"
border_line "at a specific page on the dossier. Bardia was fascinated and observed"
border_line "the image for a significant duration. He saw Elias and Bardia in this"
border_line "state and wondered if there was something that was related to any ideas"
border_line "which Bardia had. But he didn't say anything, letting Bardia have the"
border_line "moment."
border_line ""
border_line "After some time, Elias asked Bardia \"Have you been to the Birtash?\" The"
border_line "question was in a very curious, albeit understated tone. Bardia turned"
border_line "and looked at Elias, completely clueless about how to respond back to"
border_line "it. Elias nodded, as if the question had been answered. Elias turned"
border_line "from Bardia to him, and told him \"There's a very funny little"
border_line "arrangement set to happen at Samson Square. You've probably been to the"
border_line "Birtash... Why not give it a look?\""
border_line ""
border_line "He looked at Elias and answered \"Never heard about any such arrangements"
border_line "at Samson. We just came from there.\""
border_line ""
border_line "\"Why did Samson call a circle, a square?\" Bardia interrupted Elias and"
border_line "him. Elias turned to Bardia and responded: \"It is a century old joke."
border_line "The people who remember it are long since dead. Everyone else just roll"
border_line "with it.\" Bardia nodded, somewhat satisfied at the answer, yet not"
border_line "exactly sure what to make of it. He noted the puzzled look on Bardia's"
border_line "face and asked Elias: \"You know anyone who could give any informed"
border_line "stories on Samson? Apart from Punbell?\""
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 76, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_76_title.sh" ;;
esac
