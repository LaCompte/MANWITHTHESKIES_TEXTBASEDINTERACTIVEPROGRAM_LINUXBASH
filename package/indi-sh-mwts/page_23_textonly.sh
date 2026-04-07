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
split_line "\"So you finally met Maira?\" Punbell" ""
split_line "inquired, the intent of teasing hidden" ""
split_line "behind a very thick and opaque veneer" ""
split_line "of indifferent tonal blankness." ""
split_line "" ""
split_line "He looked at Punbell and wondered" ""
split_line "what he was referring to. Punbell" ""
split_line "looked back at him, confused, and" ""
split_line "gestured to the cause of his gaze." ""
split_line "He shook his head, and continued" ""
split_line "with his errands. After some time," ""
split_line "he met Punbell at his desk. They" ""
split_line "both had a cup of tea, making sure" ""
split_line "that the papers were at a distance" ""
split_line "from their official papers. He asked" ""
split_line "Punbell something, to which receipt" ""
split_line "of answer was acknowledged. Punbell" ""
split_line "gestured to the \"Pending Tasks\" box." ""
split_line "He took out one paper from it and" ""
split_line "handed the document to Punbell." ""
split_line "Punbell had finished his tea and," ""
split_line "placing the utensils and china to a" ""
split_line "side-table, proceeded with his work." ""
split_line "He took out his map and noted some" ""
split_line "details on it." ""
split_line "" ""
split_line "He tried to remember her name but" "[1] Someone familiar?"
split_line "it did not seem to register." "[2] I recall someone."
split_line "" "[3] There was someone."
split_line "" ""
split_bottom
read -n 1 -s -r key
case $key in
    1) clear ;;
    2) clear ;;
    3) clear ;;
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_23_textonly.sh" ;;
esac
echo ""
echo ""
split_top
split_line "He observed Punbell, and considered" ""
split_line "his environment alongside. Most of" ""
split_line "the study tables were unoccupied," ""
split_line "and the towers - once supplied to" ""
split_line "significant extents with books - now" ""
split_line "seemed to have lost their charm." ""
split_line "They were still towering with books," ""
split_line "and still were in good conditions," ""
split_line "but lacked something. He was about" ""
split_line "to ask Punbell something but changed" ""
split_line "his mind. Punbell was quietly reading" ""
split_line "a newspaper since the pending tasks" ""
split_line "of the day had been completed." ""
split_line "Punbell offered tea and Yivelis." ""
split_line "He declined, and with a gesture" ""
split_line "left the library." ""
split_line "" ""
split_bottom
echo ""
echo "$(center "Continue to Page 24, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_24_title.sh" ;;
esac
