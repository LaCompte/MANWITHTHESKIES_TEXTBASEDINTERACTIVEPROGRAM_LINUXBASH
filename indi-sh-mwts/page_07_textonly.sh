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
split_top() {
    echo "|----------------------------------------------------||-------------------------------\\"
}
split_bottom() {
    echo "|----------------------------------------------------||-------------------------------/"
}
split_line() {
    local left="$1"
    local right="$2"
    printf "| %-50s ||  %-29s |\n" "$left" "$right"
}
clear
echo ""
echo ""
split_top
split_line "\"The fog has ended, now if you would..." ""
split_line "I see, well, he is there.\"" ""
split_line "" ""
split_line "He took note of the directions of the" ""
split_line "shop, and after thanking Homaiz, he" ""
split_line "walked out. He made slow and steady" ""
split_line "strides in some direction, knowing" ""
split_line "that inevitably he will find a shop" ""
split_line "and then he could ask the shopkeeper" ""
split_line "something, if need be. The sound of" ""
split_line "rustling leaves and wind blowing made" ""
split_line "way to a droning sound which was" ""
split_line "difficult to describe." ""
split_line "" ""
split_line "He kept walking until he came across" "[1] Trusting it, taking"
split_line "a Y section. Both routes did not have" "    the turning"
split_line "any signposts. He heard the sound of" ""
split_line "a horn from the distance, followed by" "[2] Pausing, wondering,"
split_line "laughter. \"The Qin is going to put" "  then taking it anyway"
split_line "those boys in a tough spot\" he thought." ""
split_line "He recalled directions from his" "[3] Not to think, walk"
split_line "conversation in the Niner Hotel" ""
split_line "and decided..." ""
split_line "" ""
split_bottom
read -n 1 -s -r key
case $key in
    1) clear ;;
    2) clear ;;
    3) clear ;;
    m) exec "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) exec "$(dirname "$0")/page_07_textonly.sh" ;;
esac
echo ""
echo ""
split_top
split_line "He decided to take the turning. He" ""
split_line "walked, making a curve with the road" ""
split_line "as the road curved. As he made his" ""
split_line "way downwards from the road, he found" ""
split_line "that the fog had become thicker. He" ""
split_line "kept his pace, and continued on his" ""
split_line "path. The scent of water beating with" ""
split_line "wood marked the indicator he needed" ""
split_line "to confirm his suspicions; he" ""
split_line "continued to walk onward." ""
split_line "" ""
split_bottom
echo ""
echo "$(center "Continue to Page 8, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
    m) exec "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) exec "$(dirname "$0")/page_08_title.sh" ;;
esac
