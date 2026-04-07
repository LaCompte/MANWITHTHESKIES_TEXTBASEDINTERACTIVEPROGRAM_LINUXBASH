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
border_line "He finished reading the letter, and looked at the reference sheet"
border_line "associated with it. He made some notes, and put the letter and its"
border_line "relevant documents back into their folder. He took out another set of"
border_line "files and read them. There were details which he took note of, but did"
border_line "not give much attention. \"Mr. Bez had too much free time. It was"
border_line "inevitable that he had to go\" he deduced, introspecting the picture. He"
border_line "had noticed a flyer was amongst the files; he looked at it, and took"
border_line "note of the fine writing that had been provided on one side of the"
border_line "document. \"I think it is time that I visit the flower-shop. It would"
border_line "make her happy\" he noted, putting the flyer in his pocket. He filed some"
border_line "documents highlighting this action."
border_line ""
border_line "A few more documents were perused as he made his points known... To his"
border_line "notepad. One highlight which had caught his attention was a letter from"
border_line "Punbell. It was brief, barely a letter in content. It felt like a memo"
border_line "to him, although that was wrestling with pedantries. What had made it"
border_line "catch his attention was the following paragraph\""
border_line ""
border_line "  \"I consider myself a lonely man. My solace is found only in books. My"
border_line "  comfort in the library is matched by my apprehension of people."
border_line "  Nevertheless, I consider myself still possessing a glimmer of"
border_line "  humanity. When the blackbirds sang at the break of dawn. I chose to"
border_line "  offer you a place amongst my friends, of my own volition. A choice for"
border_line "  me, but an invitation extended, and open, to you. Whenever you seek to"
border_line "  consider it and inevitably accept it, you know where to find me.\""
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 60, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_60_title.sh" ;;
esac
