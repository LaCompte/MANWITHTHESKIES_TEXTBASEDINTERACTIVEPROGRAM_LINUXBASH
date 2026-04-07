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
split_line "He waited for the arrival of Laraiez." ""
split_line "After a certain time had passed, he" ""
split_line "got up and walked out of the office." ""
split_line "He walked straight, and in the middle" ""
split_line "of the hall, he turned right. He" ""
split_line "walked down the hall to the open" ""
split_line "doors, where he looked out into a" ""
split_line "school playground. Unlike the one he" ""
split_line "had passed through when entering the" ""
split_line "school, this one had a number of" ""
split_line "gardens broken by numerous pathways." ""
split_line "These pathways were composed of" ""
split_line "granite slabs, of square shape," ""
split_line "placed in a manner that all the" ""
split_line "patches of grass looked like the" ""
split_line "same area, shape, and consistency." ""
split_line "There were portions in which seating" ""
split_line "areas had been marked: benches with" ""
split_line "a canopy to provide shade. He always" ""
split_line "wondered whether the fees rising in" ""
split_line "their school had to do with" ""
split_line "maintaining this part of the school," ""
split_line "or if there had actually been a" ""
split_line "series of unfortunate events which" ""
split_line "led to this happening." ""
split_line "" ""
split_line "He turned around and went back to" ""
split_line "the entrance of the school, and" ""
split_line "turned towards the playground. He" ""
split_line "took a stroll around it, noting that" ""
split_line "it was not yet free-time to play" ""
split_line "with all the toys in the playground." ""
split_line "Some of the swings looked like they" ""
split_line "had been used often, to which he saw" ""
split_line "some scribbles on the base. He kept" ""
split_line "strolling around, accompanied by" ""
split_line "distant sounds of words which were" ""
split_line "being spoken but could not be heard" ""
split_line "clearly. Amidst this sound was also" "[1] What is that sound?"
split_line "the creaking of metal, which he" "    I know it somehow."
split_line "could see the source of, but not" "[2] A familiar sound,"
split_line "clearly." "    somehow."
split_line "" "[3] I have heard that"
split_line "" "    sound somehow."
split_line "" ""
split_bottom
read -n 1 -s -r key
case $key in
    1) clear ;;
    2) clear ;;
    3) clear ;;
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_17_textonly.sh" ;;
esac
echo ""
echo ""
split_top
split_line "He took out his notepad, and looked" ""
split_line "at some of his scribbles. He put the" ""
split_line "notepad back, and felt his pockets." ""
split_line "He made his way out of the school," ""
split_line "nodding." ""
split_line "" ""
split_bottom
echo ""
echo "$(center "Continue to Page 18, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_18_title.sh" ;;
esac
