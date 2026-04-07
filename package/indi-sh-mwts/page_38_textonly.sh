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
split_line "\"He's fine at home.\"" ""
split_line "" ""
split_line "\"What are his pastimes and hobbies" ""
split_line "at home?\" Laraiez inquired." ""
split_line "" ""
split_line "\"He finished his homework, and sits" ""
split_line "in the garden.\"" ""
split_line "" ""
split_line "\"What about writing? Does he do any" ""
split_line "writing at home?\"" ""
split_line "" ""
split_line "\"None apart from what is necessary." ""
split_line "He does spend time talking though.\"" ""
split_line "" ""
split_line "\"With whom?\" Laraiez asked." "[1] With me."
split_line "" "[2] With me."
split_line "" "[3] With me."
split_line "" ""
split_bottom
read -n 1 -s -r key
case $key in
    1) clear ;;
    2) clear ;;
    3) clear ;;
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_38_textonly.sh" ;;
esac
echo ""
echo ""
split_top
split_line "Laraiez nodded at the answer." ""
split_line "Laraiez looked at Bardia and" ""
split_line "answered Bardia's confused, mildly" ""
split_line "nervous look with \"Don't worry about" ""
split_line "a thing. You just do your best, and" ""
split_line "smile more often.\" Bardia left the" ""
split_line "room with him, and both of them" ""
split_line "greeted Laraiez as they reached the" ""
split_line "door and exited the school." ""
split_line "" ""
split_bottom
echo ""
echo "$(center "Continue to Page 39, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_39_title.sh" ;;
esac
