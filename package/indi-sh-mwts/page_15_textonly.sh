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
split_line "He walked into the hallway, noting" ""
split_line "the various sounds being made as he" ""
split_line "walked in the direction of his locker." ""
split_line "He just knew that sounds were being" ""
split_line "made, and then just carried forward" ""
split_line "to his purpose. \"Would it make sense" ""
split_line "for water to be made the way it is?\"" ""
split_line "he asked himself, as he opened his" ""
split_line "locker and put his things inside." ""
split_line "He walked downstairs to the entrance" ""
split_line "and waited on one of the seats." ""
split_line "His father had informed him that he" ""
split_line "will be picked up some time before" ""
split_line "lunch. He waited, neither eager nor" ""
split_line "worried, neither fearful nor ecstatic." ""
split_line "He simply thought of it as one more" ""
split_line "activity to mark the end of the day." ""
split_line "" ""
split_line "The child observed what was around" "[1] Not the school, no."
split_line "him, as he sat on the seat, waiting" "[2] The time. Not once."
split_line "for his father..." "[3] The day. Not once."
split_line "" ""
split_bottom
read -n 1 -s -r key
case $key in
    1) clear ;;
    2) clear ;;
    3) clear ;;
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_15_textonly.sh" ;;
esac
echo ""
echo ""
split_top
split_line "He had been looking carefully at the" ""
split_line "project, once more wondering about" ""
split_line "it. He left the room and took the" ""
split_line "flight of stairs downwards. When he" ""
split_line "reached the ground floor he walked" ""
split_line "right and kept going straight. There" ""
split_line "were a few labs to his left and right," ""
split_line "where people would have been working," ""
split_line "yet it seemed as if only students" ""
split_line "were busy inside. He kept continuing" ""
split_line "straight, and took little heed of" ""
split_line "the noisy library, and the quiet room" ""
split_line "marked \"debate club\". After a walk" ""
split_line "which seemed like an eternity but" ""
split_line "was practically a simple stroll, he" ""
split_line "saw the office of the Qin. He knocked" ""
split_line "on the door, and waited." ""
split_line "" ""
split_bottom
echo ""
echo "$(center "Continue to Page 16, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_16_title.sh" ;;
esac
