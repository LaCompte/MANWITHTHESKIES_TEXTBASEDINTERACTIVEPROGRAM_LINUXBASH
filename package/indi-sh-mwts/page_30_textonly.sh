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
split_line "The child keeping his gaze on the" ""
split_line "garden, was being considered in the" ""
split_line "context of the note. \"Well, is there" ""
split_line "any place you would like to go?\"" ""
split_line "He asked Bardia. Bardia thought and" ""
split_line "simply shrugged his shoulders. He" ""
split_line "looked at Bardia and got up. \"I'll" ""
split_line "be going now. If you need anything" ""
split_line "let me know.\" He told Bardia, and" ""
split_line "offered his hand. Bardia got up," ""
split_line "and walked with him to the door." ""
split_line "" ""
split_line "Bardia stopped midway, and held his" "[1] Give him something."
split_line "stomach. When he came close to" "[2] He's hungry. Do it."
split_line "Bardia, he heard the sound of a" "[3] You feel it. Do it."
split_line "missing ingredient." ""
split_line "" ""
split_bottom
read -n 1 -s -r key
case $key in
    1) clear ;;
    2) clear ;;
    3) clear ;;
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_30_textonly.sh" ;;
esac
echo ""
echo ""
split_top
split_line "So he took Bardia to the kitchen," ""
split_line "took out something from the fridge," ""
split_line "put it in a bowl, and offered it" ""
split_line "to Bardia. Bardia was suspicious at" ""
split_line "first, and looked at him with a look" ""
split_line "that was part apprehension and part" ""
split_line "confusion. He looked at Bardia, and" ""
split_line "responded in a calm, but mildly" ""
split_line "involved voice, with \"I had assumed" ""
split_line "you were hungry. I also assumed that" ""
split_line "you would like to eat a very sweet" ""
split_line "food. So I put the sweetest thing" ""
split_line "in the fridge on to the table\"." ""
split_line "Bardia nodded at the answer and" ""
split_line "with some courage, took a bit from" ""
split_line "the food. After some time, Bardia" ""
split_line "took another bite. He stopped" ""
split_line "counting how many bites Bardia took," ""
split_line "after he had noticed the bowl had" ""
split_line "been emptied." ""
split_line "" ""
split_bottom
echo ""
echo "$(center "Continue to Page 31, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_31_title.sh" ;;
esac
