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
border_line "He turned the page and noticed that the rest of the portions of the"
border_line "story were missing. The concerned portions had been ripped out, with"
border_line "force. It was enough reason for him to put the book back into the"
border_line "closet. \"I wonder why the pages had been removed. Maybe Bardia will know"
border_line "about it\" he suggested to himself, while completing the action, making"
border_line "sure that it was tucked in properly. He went upstairs and checked if"
border_line "Bardia had woken up."
border_line ""
border_line "\"You up yet?\" He asked Bardia. Bardia nodded."
border_line ""
border_line "\"Would you like me to make a snack for you, little one?\" To which Bardia"
border_line "gave a positive answer through gestures.\"Well, you will need to come"
border_line "downstairs to the dining room.\" He said, in a relatively light-hearted"
border_line "but persuasive manner. Whilst heading to the dining-room, he looked"
border_line "around and, after scrutinizing the contents of the kitchen, managed to"
border_line "prepare a meal."
border_line ""
border_line "Bardia arrived and sat on the chair of the dining table, as instructed."
border_line "Bardia yawned, pondering upon the vast and numerous thoughts in the back"
border_line "of his mind. Bardia rubbed his eyes and noticed that the table was still"
border_line "empty, and there was nobody to be found. Shrugging the situation as a"
border_line "minor discomfort, Bardia got up and took out a bottle of milk from the"
border_line "fridge. There was a small amount left, So Bardia chugged it all down,"
border_line "tossing the bottle into the waste-bin and headed back to the dining"
border_line "table."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 67, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_67_title.sh" ;;
esac
