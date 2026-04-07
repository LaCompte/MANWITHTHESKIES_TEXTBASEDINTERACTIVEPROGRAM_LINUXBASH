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
border_line "It seemed that the people were gathered around for a performance by"
border_line "someone, or perhaps by a major act, as they were moving to a rightwards"
border_line "direction, with the accompaniment of pronounced, definable breathing in"
border_line "a harmonic rhythmic and musical tone. The old couple and their son"
border_line "seemed to be indifferent to these sounds, although the younger child was"
border_line "much more intrigued by these sounds. Bardia noticed the chiding and the"
border_line "constant push towards going where the sound was coming from, anyone who"
border_line "would preferably give a response at least."
border_line ""
border_line "The sound caught Bardia's ear because it was, at least lyrically, very"
border_line "familiar to something he knew. Something he had written perhaps, a very"
border_line "long time ago. Bardia looked through his pockets and found a paper on"
border_line "which the piece was transcribed and spoken all that time back."
border_line ""
border_line "I had once walked through the breeze of"
border_line ""
border_line "An unkempt, forlorn dream; where I"
border_line ""
border_line "Had stopped to wake up, I know not. The puff"
border_line ""
border_line "Of a thought disappearing before my eye"
border_line ""
border_line "Money marked that abrupt transition."
border_line ""
border_line "We have seen beyond the clouds, I know"
border_line ""
border_line "Far more than what we speak in vision"
border_line ""
border_line "Abolution in that which is beyond, which grows"
border_line ""
border_line "Like a tree granting eternal life, yet not"
border_line ""
border_line "To those who seek adventures,"
border_line ""
border_line "But I have no place from that tree, only to rot"
border_line ""
border_line "As those who were led only by their futile rapture:"
border_line ""
border_line "The Doors beyond are a gathering, to us seeking"
border_line ""
border_line "A purpose to our lives, strength in meaning\""
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 92, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_92_title.sh" ;;
esac
