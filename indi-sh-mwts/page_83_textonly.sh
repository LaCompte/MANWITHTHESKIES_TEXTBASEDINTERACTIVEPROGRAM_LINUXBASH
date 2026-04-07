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
split_line "\"You knew about the book and where" ""
split_line "to find it?\"" ""
split_line "\"I did, father. I didn't mean to" ""
split_line "read the portions without your" ""
split_line "permission. I always thought you" ""
split_line "were like Rivek Thalroppe saving" ""
split_line "the world, and bringing joy to" ""
split_line "other families.\"" ""
split_line "The patient laughed, and looked at" "[1] Blackbird singing in"
split_line "Bardia with endless appreciation." "    the dead of night."
split_line "\"I had always found the apparent" ""
split_line "inflection of the book to be..." "[2] These broken wings,"
split_line "suspiciously unintentional curiosity.\"" "    and learn to fly."
split_line "\"Your supposition does hold ground" ""
split_line "now, when considering our general" "[3] All your life."
split_line "presence in the room.\"" ""
split_line "\"Oh yes, the room. I had completely" ""
split_line "forgotten about it. How are the" ""
split_line "birds, my dear boy?\"" ""
split_line "" ""
split_bottom
read -n 1 -s -r key
case $key in
    1) clear ;;
    2) clear ;;
    3) clear ;;
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_83_textonly.sh" ;;
esac
echo ""
echo ""
split_top
split_line "Bardia looked at the ceiling and" ""
split_line "the rest of the room, finding" ""
split_line "something that made him uncomfortable," ""
split_line "and it manifested in the answer" ""
split_line "\"Chirper. Than this room. I never" ""
split_line "knew you had only the outside window" ""
split_line "for company. The lack of a window" ""
split_line "is quite distressing.\"" ""
split_line "\"A minor inconvenience\" the patient" ""
split_line "responded in a dry, and avaricious" ""
split_line "tone, and winking at Bardia. They" ""
split_line "looked at each other and laughed," ""
split_line "considering the situation he was in." ""
split_line "Bardia sat next to his bed, and" ""
split_line "held his hand. And it occurred to" ""
split_line "him that he was missing something." ""
split_line "He asked the patient \"do you have" ""
split_line "anything by which I could remember" ""
split_line "you? Anything by which I may carry" ""
split_line "your legacy?\" And the patient" ""
split_line "informed him to discuss the matter" ""
split_line "with Rinaar, at the bank. \"I am so" ""
split_line "grateful for this day. Thank you," ""
split_line "my son. Alas I must rest now." ""
split_line "Perhaps we will continue our" ""
split_line "meeting tomorrow?\"" ""
split_line "" ""
split_bottom
echo ""
echo "$(center "Continue to Page 84, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_84_title.sh" ;;
esac
