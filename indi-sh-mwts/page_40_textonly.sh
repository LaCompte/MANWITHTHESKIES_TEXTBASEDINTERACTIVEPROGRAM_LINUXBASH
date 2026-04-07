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
split_line "He decided to take a stroll around" ""
split_line "the tents. So far, the tents had" ""
split_line "the usual things he was expecting:" ""
split_line "one tent was selling lizard tails;" ""
split_line "one tent had a rotating circle," ""
split_line "with various colors, and a big bull" ""
split_line "eye in the center; one tent was" ""
split_line "selling books on how to sell books;" ""
split_line "his personal favorite was a tent in" ""
split_line "which was written, at the entrance" ""
split_line "of the door, a specific set of" ""
split_line "numbers and a time set - they" ""
split_line "charged for putting someone inside" ""
split_line "the tent, and leaving them there" ""
split_line "until someone paid to have them" ""
split_line "taken out from the tent. \"Some" ""
split_line "would call it ransom, others call" ""
split_line "it a deposit. We make money\" was" ""
split_line "the slogan of the tent." ""
split_line "" ""
split_line "At the center of the Birtash tents" ""
split_line "were numerous stalls, where some" ""
split_line "people were busy with a lot of" ""
split_line "people, while the rest of the tents" ""
split_line "were having heated discussions about" ""
split_line "what both stall and tents were" ""
split_line "doing. He went over to one stall," ""
split_line "shuddered, and walked over to the" ""
split_line "next stall. It was selling an" ""
split_line "assortment of Yivelis, soup, and a" ""
split_line "grilled beef-box. The sign said" "[1] Where is everybody?"
split_line "\"Hot Rind available here. Wait till" "[2] Free food, anyone?"
split_line "evening to get a free sample!\"" "[3] What is that noise?"
split_line "" ""
split_bottom
read -n 1 -s -r key
case $key in
    1) clear ;;
    2) clear ;;
    3) clear ;;
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_40_textonly.sh" ;;
esac
echo ""
echo ""
split_top
split_line "He walked over to the gathered" ""
split_line "crowd. He could hear someone" ""
split_line "speaking loudly, yet not very clear" ""
split_line "from where he stood. He walked" ""
split_line "forward to the person, and found" ""
split_line "that the person was a performer." ""
split_line "He stood quiet, and listened to" ""
split_line "the performer's work." ""
split_line "" ""
split_bottom
echo ""
echo "$(center "Continue to Page 41, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_41_title.sh" ;;
esac
