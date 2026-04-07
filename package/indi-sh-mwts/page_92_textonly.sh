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
clear
echo ""
echo ""
border_top
border_line "\"Truth be told, it was not a very enlightening piece. Or anything"
border_line "to boast about\" commented Bardia, as he wrapped the paper and"
border_line "placed it in his pocket. He noticed that the couple and their son"
border_line "and their family were slowly making their way to where the sounds"
border_line "were being played. Bardia was about to get up when he noticed a"
border_line "child sitting by himself on the bench just a little while ahead"
border_line "from him. The child was sitting by himself and did not seem like"
border_line "there was anything accompanying him. Bardia got up and was"
border_line "thinking about the child. He stopped, and walked to him."
border_line ""
border_line "Bardia smiled, and asked \"Good day, young man. How are you?\""
border_line "\"I am quite well, sir\""
border_line "\"Are you waiting for someone?\""
border_line "\"No, just looking at the clouds and the fields.\""
border_line "\"I see. Well, if it isn't a problem, may I join you in looking"
border_line "at these fields? They have quite a story to tell.\""
border_line "\"I suppose, sir, you may.\""
border_line ""
border_line "Bardia sat next to the child and they looked at the field and"
border_line "the clouds together. The changing moods seemed to be reflected"
border_line "up above and noticing these, Bardia asked the child \"Are you"
border_line "familiar with the Man with the Skies?\" the child, confused,"
border_line "asked \"The Man with the Skies?\""
border_line "Bardia pondered on this for a moment, and with an approving nod,"
border_line "and a smile showing enlightenment and responded \"It is a"
border_line "fascinating story, and might even catch your interest.\""
border_line ""
border_bottom
echo ""
echo "$(center "[1] Man with the Skies.")"
echo "$(center "[2] ...")"
echo "$(center "[3] I am him.")"
echo ""
echo "$(center "[a] Additional Content")"
echo "$(center "[m] Return to main menu")"
echo "$(center "[q] Quit")"
echo ""
read -n 1 -s -r key
case $key in
    1) "$(dirname "$0")/../additional_content.sh" ;;
    2) "$(dirname "$0")/../additional_content.sh" ;;
    3) "$(dirname "$0")/../additional_content.sh" ;;
    a) "$(dirname "$0")/../additional_content.sh" ;;
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_92_textonly.sh" ;;
esac
