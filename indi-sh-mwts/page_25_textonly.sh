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
split_line "\"Don't worry, I won't run you over.\"" ""
split_line "Maira giggled, and offered her hand" ""
split_line "again. He nodded, shook hands and" ""
split_line "gave a cursory smile. He kept quiet" ""
split_line "and gestured towards the waves." ""
split_line "Maira nodded, tipped her hat, and" ""
split_line "she walked along in her own path." ""
split_line "" ""
split_line "He stood at the water, and wondered" ""
split_line "about the nature of the water. He" ""
split_line "wondered where did all this water" ""
split_line "actually come from. He wondered" ""
split_line "where did it cease to be. For as" ""
split_line "long as he could remember, the beach" ""
split_line "had always been there. The water had" ""
split_line "always been there. There were complete" ""
split_line "celebrations on this very beach which" ""
split_line "he had heard about when he was young." ""
split_line "Although they never included what" "[1] Walk with the water"
split_line "actually \"happened\" in these beaches." "[2] ... could I walk?"
split_line "" "[3] ... would I walk?"
split_line "" ""
split_bottom
read -n 1 -s -r key
case $key in
    1) clear ;;
    2) clear ;;
    3) clear ;;
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_25_textonly.sh" ;;
esac
echo ""
echo ""
split_top
split_line "He noticed that Maira was sitting" ""
split_line "near the sand that was dry and was" ""
split_line "observing the water while reading" ""
split_line "a book. He turned around, and walked" ""
split_line "towards a shower stand. He washed" ""
split_line "his feet meticulously, as well as" ""
split_line "the sand which was stuck on his" ""
split_line "knees. He remembered the warning in" ""
split_line "the Niner. He turned to find a" ""
split_line "symbolic counter to it; a series of" ""
split_line "instructions which explained, step" ""
split_line "by step, on how to clean up one's" ""
split_line "feet and skin after coming back" ""
split_line "from the beach. He took one of the" ""
split_line "towels from the rack, sat down, and" ""
split_line "dried his feet and knees." ""
split_line "" ""
split_line "He walked back on the road leading" ""
split_line "to the library and headed down from" ""
split_line "the road, where the fog became" ""
split_line "thicker and caused visibility to be" ""
split_line "limited. He thought of something" ""
split_line "and whilst whistling he noted it" ""
split_line "in his notepad." ""
split_line "" ""
split_bottom
echo ""
echo "$(center "Continue to Page 26, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_26_title.sh" ;;
esac
