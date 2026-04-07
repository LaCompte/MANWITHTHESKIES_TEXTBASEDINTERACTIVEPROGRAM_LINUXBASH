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
border_line "The call got transferred, after which a series of questions were asked,"
border_line "as well as the assortment of reminders from a time long past. \"There is"
border_line "a lovely restaurant here which is facing the lake. In case you have time"
border_line "to spare, do be sure to visit. Be sure to also give a call, and we will"
border_line "be sure to join you there as well.\" They shared mutual greetings at"
border_line "which point he hung up the phone, and looked at the letter on the desk."
border_line "It was a handwritten personal piece, about ten pages long: the paper"
border_line "which was used had a slightly rough bout regular texture, and smelt of"
border_line "vanilla and strawberries. \"I should order chocolate milk for myself.\" he"
border_line "thought ,as he started the first paragraph. The fog seemed to have"
border_line "shifted away from the lake, as he took in the view of the lake. There"
border_line "was a small pier as well, but it seemed to have been blocked by a board"
border_line "and some obstacles, where he had originally taken the notepad. He got"
border_line "up, took out the jacket from the closet, picked up the hotel keys, and"
border_line "left the room, locking it from behind."
border_line ""
border_line "The elevator played a song to which he whistled along; the ding marked"
border_line "the arrival at the lobby floor of the hotel. He stepped out of the"
border_line "elevator, deciding to explore - more specifically, wander - around the"
border_line "hotel. The ends of either side of the hotel had noticeably long"
border_line "corridors, with the structure of the roof lending it an air of awe and"
border_line "amazement. he had read somewhere that this optical illusion was"
border_line "deliberate."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 6, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_06_title.sh" ;;
esac
