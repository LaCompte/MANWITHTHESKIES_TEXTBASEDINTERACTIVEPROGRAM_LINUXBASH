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
    echo "|------------------------------------------------------------------------\\"
}
border_bottom() {
    echo "|------------------------------------------------------------------------/"
}
border_line() {
    local text="$1"
    printf "| %-83s |\n" "$text"
}
split_top() {
    echo "|---------------------------------------------||--------------------------------\\"
}
split_bottom() {
    echo "|---------------------------------------------||--------------------------------/"
}
split_line() {
    local left="$1"
    local right="$2"
     printf "| %-43s ||  %-29s |\n" "$left" "$right"
}
clear
echo ""
echo ""
split_top
split_line "He continued to introspect on the" ""
split_line "thought, and found himself lost in" ""
split_line "a forest. He looked around, and" ""
split_line "noticed a light shining from a" ""
split_line "distance. He decided to walk towards" ""
split_line "it. It wasn't that the forest lacked" ""
split_line "any other light-source. It wasn't" ""
split_line "even the case that the light was of" ""
split_line "any unique color. He walked onward" ""
split_line "towards it, noticing that the terrain" ""
split_line "changed from thick, yet comforting," ""
split_line "trees; to a lush, widespread, radiant" ""
split_line "vista - only the miles upon miles of" ""
split_line "grassland covering the Earth. Yet" ""
split_line "the light still shone, completely" ""
split_line "indifferent to the sight. So he" ""
split_line "decided to keep walking forwards," ""
split_line "that he may be near this source of" ""
split_line "luminescence." ""
split_line "" ""
split_line "As he walked forwards, and forwards," ""
split_line "something caught his eye. He kept" ""
split_line "looking, he kept hearing, but then" ""
split_line "he shrugged. \"It was probably nothing" ""
split_line "significant\" he thought to himself," ""
split_line "and he saw a granite path, which he" ""
split_line "took. He was walking alongside a" ""
split_line "cliff, a reflection of light from" ""
split_line "the moon shone over the water. That" ""
split_line "was what he thought was the sighting," ""
split_line "yet it did not seem to be the case." ""
split_line "The cliff became smooth, and the" "[1] I am not ready yet."
split_line "sound of the waves became calmer." "[2] Not yet. Go deeper."
split_line "It seemed to be less inclined" "[3] Not yet. Go higher."
split_line "upwards too... As if the walk was" ""
split_line "more horizontal." ""
split_line "" ""
split_bottom
read -n 1 -s -r key
case $key in
    1) clear ;;
    2) clear ;;
    3) clear ;;
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_45_textonly.sh" ;;
esac
echo ""
echo ""
split_top
split_line "He noticed that Bardia was sitting" ""
split_line "on the sand, looking at the water." ""
split_line "\"A pleasant, calming experience," ""
split_line "wouldn't you agree?\" He inquired," ""
split_line "noticing that Bardia had not" ""
split_line "responded back. Bardia merely nodded" ""
split_line "at some thought. He looked at the" ""
split_line "water, got up, and asked Bardia" ""
split_line "\"Would you like to feel the water" ""
split_line "on your feet?\" to which Bardia" ""
split_line "looked at the waves, then pointed" ""
split_line "at his wet feet. He nodded at" ""
split_line "whatever thought came into his mind." ""
split_line "Bardia looked at him, and wondered" ""
split_line "at the thought he was having. Bardia" ""
split_line "decided to instead look at the waves" ""
split_line "and feel the wind pouring from the" ""
split_line "overcast skies softly caressing" ""
split_line "his face." ""
split_line "" ""
split_bottom
echo ""
echo "$(center "Continue to Page 46, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_46_title.sh" ;;
esac
