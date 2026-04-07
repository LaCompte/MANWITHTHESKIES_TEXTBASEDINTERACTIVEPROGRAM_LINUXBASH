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
border_line "He had already packed everything and placed them inside of the vehicle."
border_line "The trunk had been assorted. As Bardia sat in the car, he hit the gas"
border_line "after ensuring that the gear was set to reverse. It was on a moment"
border_line "notice that was running on the radio as the car made the curve. It was a"
border_line "cloudy day and the car was clearly howling a lot of love. It was in"
border_line "nearly mint condition. Bardia whistled to the tune of the song running"
border_line "on the radio, as he took the right from the downhill drive to the main"
border_line "thoroughfare intending to go somewhere."
border_line ""
border_line "\"The coast seems to be clear\" he thought as he turned through the"
border_line "Birtash avenue onto the part of \"Justin's Intersection\". On the way, he"
border_line "saw a park. Taking a turn, he went to the parking lot and made his way"
border_line "to the nearest open source. \"Nothing better than right in front of the"
border_line "entrance.\" He exclaimed, smiling, as he made his way to the park itself."
border_line ""
border_line "He walked around the place, with the sound of birds, leaves rustling and"
border_line "cheer coming from people marking the presence of people who were coming"
border_line "and going. Most of them seemed to be there with someone as if they were"
border_line "alone, they were making do with movement around the park, with an"
border_line "aimless movement. \"Apparently such movement is healthy for the body. I"
border_line "fail to see how\" he thought as he tried finding a place to sit down."
border_line "According to the signs, there was a sitting place a while away from him,"
border_line "and if he took some time to breathe, he might miss it. The approaching"
border_line "hedge seemed to indicate the presence of a bench."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 90, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_90_title.sh" ;;
esac
