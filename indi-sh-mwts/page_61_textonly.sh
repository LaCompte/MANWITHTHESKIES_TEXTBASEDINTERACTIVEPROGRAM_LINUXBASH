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
border_line "He looked around at the avenue, thinking about something. It consumed"
border_line "his thoughts for a brief duration. He decided to walk, and he took pace."
border_line "The sound of trees - leave rustling alongside scurrying about too and"
border_line "fro, seemed like an appreciative welcome compared to the silent,"
border_line "calming, quiet contemplation which was the case with the bank. But he"
border_line "did not give it much thought. \"It is the rustling of leaves. It is other"
border_line "sounds which nature makes\" he commented on the matter in his mind. His"
border_line "response was whistling a song that came to his mind after much silence."
border_line ""
border_line "He continued to walk, noting that the fog had become thicker as he kept"
border_line "walking forward. The sound of footsteps did leave him disconcerted and"
border_line "slightly perturbed. It was not as if the place was unknown - he had"
border_line "walked around the locality on a sufficient number of occasions to be"
border_line "anything but scared. It wasn't even that he had concerns about the fear"
border_line "of something menacing which would bring any dread... The fog was"
border_line "disconcerting, he felt that, but it was not imposing discomfort. What he"
border_line "made out of it was an unknown dread, and that is why he decided to"
border_line "proceed with caution, yet not lend it much thought. His actions proved"
border_line "to be effective - the fog became less intimidating and was much more"
border_line "indifferent. He wondered why he was at the beach, but shrugged it aside."
border_line "He took to the beaten path until he reached the stairs leading up to"
border_line "Punbell. He took out the envelope from Punbell and saw it a second time,"
border_line "carefully."
border_line ""
border_line "He decided to head to Bardia and share his findings. \"Punbell would"
border_line "appreciate the gesture anyway\" he thought as he took the stairs from the"
border_line "beach to the library heading in the direction of the Birtash tents. He"
border_line "intended to visit the school later."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 62, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_62_title.sh" ;;
esac
