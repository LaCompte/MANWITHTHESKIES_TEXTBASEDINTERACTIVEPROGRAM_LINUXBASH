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
border_line "He nodded and turned around to leave. \"Happy to be of service\" said"
border_line "Elias, to the sound of the door being opened."
border_line ""
border_line "the fellow looked at the complimentary flowers being offered, noting how"
border_line "they seemed vibrant even in the fog. \"They do catch one's attention\" he"
border_line "noted. He looked at the shop which was a neighbor to Elias, and"
border_line "remembered that it had a paper on the window. He read through all of it;"
border_line "it was a document of some level of importance. After finishing reading,"
border_line "he thought of something and walked out into the main road. Most of the"
border_line "area was as he had left it, although it was noticeably more ambient, the"
border_line "sound of the floorboards creaking, the soft tapping on the windows, and"
border_line "a sound of a music box in the distance were the only sounds which gave"
border_line "him company."
border_line ""
border_line "He whistled to himself, noting that as he headed in the direction of the"
border_line "school, the music box became more noticeable. \"The owner has good"
border_line "taste\". he thought to himself. He could see the boundaries of the"
border_line "institution from where he was standing. On the left there was presumably"
border_line "an empty space, as there was not much to see for quite a distance. As he"
border_line "looked right onward. There were a series of significant buildings,"
border_line "although they could not be identified as to what role they played. He"
border_line "kept looking, and the sound of boys playing games was very faintly"
border_line "audible. the sound of the music box had become noticeably quiet."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 11, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_11_title.sh" ;;
esac
