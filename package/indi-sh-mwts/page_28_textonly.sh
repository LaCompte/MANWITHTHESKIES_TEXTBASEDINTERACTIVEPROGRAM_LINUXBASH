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
split_line "He made a fist, with the middle and" ""
split_line "third finger slightly outstretched" ""
split_line "from the rest of the fingers. He" ""
split_line "then knocked on the door. He could" ""
split_line "hear the sound of something happening" ""
split_line "inside the house. It eventually led" ""
split_line "to the distinct tapping which" ""
split_line "footsteps make on a wooden paneled" ""
split_line "floor. The door opened, and a small" ""
split_line "little head poked out from inside" ""
split_line "the house. He smiled at the boy," ""
split_line "cleared his throat, and said to him" ""
split_line "\"Hello there, young man. Hope you" ""
split_line "would spare me a moment of your" ""
split_line "time?\" The child looked at him" ""
split_line "straight in the eyes and, after" ""
split_line "pondering on it for a brief moment," ""
split_line "he opened the door and let him in." ""
split_line "It was a modest inner space. The" ""
split_line "child went in the direction of the" ""
split_line "lounge, where he sat on a sofa and" ""
split_line "looked in the direction of the" ""
split_line "garden. The child was asked his" ""
split_line "name. \"Bardia\" the child answered." ""
split_line "\"So, Bardia, what are you busy with\"" ""
split_line "he asked. Bardia pointed at the" ""
split_line "garden. He nodded at Bardia's answer," ""
split_line "and quietly looked at the garden" ""
split_line "with Bardia." ""
split_line "" ""
split_line "He thought about something whilst" ""
split_line "Bardia did the same. He noted that" ""
split_line "the sound of music and chants again" ""
split_line "restarted, which he felt was nearby." ""
split_line "He looked at the boy again, and" ""
split_line "cleared his throat once more. He" ""
split_line "asked: \"So, Bardia, well... The" ""
split_line "Birtash is going to pass by your" ""
split_line "house soon. Would you like to come" ""
split_line "with us to...\" Bardia shook his head" "[1] Give him the paper."
split_line "with his eyes closed." "[2] Don't think. Paper."
split_line "" "[3] The paper. Now."
split_line "" ""
split_bottom
read -n 1 -s -r key
case $key in
    1) clear ;;
    2) clear ;;
    3) clear ;;
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_28_textonly.sh" ;;
esac
echo ""
echo ""
split_top
split_line "He nodded, and took out a piece of" ""
split_line "paper from his notepad. \"Maybe you" ""
split_line "would feel comfortable writing why" ""
split_line "you don't want to go.\" He said," ""
split_line "handing the paper and a pencil to" ""
split_line "Bardia. Bardia answered on it and" ""
split_line "returned it to him. He looked at" ""
split_line "the answer." ""
split_line "" ""
split_bottom
echo ""
echo "$(center "Continue to Page 29, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_29_title.sh" ;;
esac
