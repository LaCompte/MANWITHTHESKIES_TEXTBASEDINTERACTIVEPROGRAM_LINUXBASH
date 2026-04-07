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
border_line "He wondered if the couple was doing well as he had not seen them for"
border_line "quite some time now. This thought came whilst walking down the slope and"
border_line "heading back to town from the library. It also filled him with a tinge"
border_line "of sadness wondering of Bardia's parents had returned to the house. It"
border_line "was a relatively quiet descent, but it proved to be most effective... To"
border_line "walk to Bardia's house rather than take any transport. \"A confusing,"
border_line "intricate, Byzantine web of so much happening, so much being"
border_line "coordinated, so many gong from point A to B... An overwhelming"
border_line "arrangement\" was his response whenever the topic of busses came up."
border_line ""
border_line "He took the turning to the Birtash tents and stepped towards the door."
border_line "He knocked on it and stepped back to let the owner open it. It was"
border_line "initially quiet and there was no sound to be heard from quite a"
border_line "distance. He rang the bell again, this time slightly agitated. He waited"
border_line "some more and, when he did not get any response, took out a chain of"
border_line "keys and used one to open the door. \"Bardia, is everything okay?\" He"
border_line "asked as he entered the house. There was no answer for some time. He"
border_line "decided to walk up the stairs to see if he was doing okay. He noticed"
border_line "that one bedroom door was slightly open. He peaked through the door to"
border_line "find Bardia asleep. He nodded and, with care and due consideration,"
border_line "closed the door without making noise."
border_line ""
border_line "He noticed the bedroom adjacent to Bardia, in the sense that the"
border_line "entrance had a clear view of Bardia's bedroom door. Going inside showed"
border_line "that it was a well maintained bedroom, but not seemingly utilized in"
border_line "quite some time. Some objects seemed to have been left in place exactly"
border_line "as they would have been found, but all the same it was pleasant. He"
border_line "decided to walk down to the lounge, sit on the sofa, and look out from"
border_line "the window."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 63, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_63_title.sh" ;;
esac
