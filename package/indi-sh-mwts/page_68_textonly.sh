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
border_line "A thought came to his mind as he made his way to the school. He looked"
border_line "at the numerous empty spaces surrounding him, only to find that he was"
border_line "not able to see anything. He held Bardia's hand, and pushed forward. \"It"
border_line "is only a light drizzle; should pass by some time soon\" he thought to"
border_line "himself. Both Bardia and he hummed a song as they left from the street,"
border_line "turned, and walked until they reached \"Samson Square\" - \"how can a"
border_line "circle be a square?\" To which he told Bardia, pointing at the square,"
border_line "\"Samson\". They crossed the road, and then turned towards \"the tenth"
border_line "turn\". It was a small stroll, and then they found their way to the road"
border_line "leading to the school."
border_line ""
border_line "\"Could we stop at the beach on the way back?\" Bardia asked. \"Provided"
border_line "the weather clears, then yes, we will.\" \"Why are we going to the school?"
border_line "I went there yesterday.\" Bardia commented. \"It was a matter of time. You"
border_line "will know when you get there\" he responded, patting Bardia's head."
border_line ""
border_line "The road started to slowly ascend, and it seemed that the weather had"
border_line "also changed for the better. \"Better the chills than the drizzles\" he"
border_line "thought. He hummed a song: Bardia introspected on the song, and started"
border_line "humming alongside. Midway, Bardia stopped humming, and so did he, after"
border_line "some time, as both turned their gaze towards the road. The weather had"
border_line "made the umbrella a useful instrument to hold on to, especially with the"
border_line "prospects of snow that will pour down. That was what he thought."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 69, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_69_title.sh" ;;
esac
