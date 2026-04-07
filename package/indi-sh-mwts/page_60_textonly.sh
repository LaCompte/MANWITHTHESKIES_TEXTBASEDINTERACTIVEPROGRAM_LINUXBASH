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
split_line "He looked at the invitation. The" ""
split_line "envelope had not been opened. It" ""
split_line "still gave a scent of fresh postal" ""
split_line "stamps and vanilla envelope glue." ""
split_line "After turning it to and fro," ""
split_line "observing it and noting a few" ""
split_line "details, without opening the" ""
split_line "envelope, he decided to put it in" ""
split_line "the inner lining of his jacket." ""
split_line "He filled in the necessary documents" ""
split_line "that came alongside." ""
split_line "" ""
split_line "He looked further at the documents" ""
split_line "that were remaining. They were" ""
split_line "important but at that particular" ""
split_line "moment they were not especially" ""
split_line "necessary." ""
split_line "" ""
split_line "\"If a man must pick his past, they" ""
split_line "pick the moments which led to" ""
split_line "growth. Even if those moments were" "[1] This is done."
split_line "enough to leave scars, they fuel" "[2] This is fine."
split_line "growth.\"" "[3] This is the way."
split_line "" ""
split_bottom
read -n 1 -s -r key
case $key in
    1) clear ;;
    2) clear ;;
    3) clear ;;
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_60_textonly.sh" ;;
esac
echo ""
echo ""
split_top
split_line "He put the remainder of the" ""
split_line "documents back into the box, making" ""
split_line "sure that all relevant signatures" ""
split_line "and confirmations had been made." ""
split_line "He got up from his seat and walked" ""
split_line "towards the intercom. He pressed" ""
split_line "the button. A series of voices and" ""
split_line "some clangs later, he heard the" ""
split_line "door open. Rinaar stepped in." ""
split_line "" ""
split_line "\"Were you able to fully peruse your" ""
split_line "documents?\"" ""
split_line "\"Yes. I mentioned which documents" ""
split_line "have been taken into account, and" ""
split_line "which have been instructed for" ""
split_line "bank purposes.\"" ""
split_line "\"It seems quite a lot of documents" ""
split_line "to entrust to a bank.\"" ""
split_line "\"A simple interest of memories" ""
split_line "carries a significant weight. With" ""
split_line "time, the profit outweighs the" ""
split_line "burden.\"" ""
split_line "" ""
split_bottom
echo ""
echo "$(center "Continue to Page 61, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_61_title.sh" ;;
esac
