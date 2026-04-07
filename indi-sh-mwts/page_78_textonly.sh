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
border_line "He looked at Bardia and acknowledged the request. After finishing"
border_line "the last one, they headed to the road. The fog was less prominent"
border_line "in the way."
border_line ""
border_line "\"It is when we are distracted that the mysteries of life take"
border_line "hold, and simply refuse to let go\" he found himself considering"
border_line "this quote, which began the preface of the book he was reading."
border_line "It looked around, expecting Punbell to arrive, what with the"
border_line "noise of footsteps. \"Footsteps do not make noise, they make"
border_line "sound. Even if it is a library, the matter is pertinent\" he"
border_line "would chide to no one but himself, or so was written in the"
border_line "book, and the grating sound of the wheels of a ladder, left"
border_line "unhinged, slightly marking the transition of one hour to the"
border_line "next. And at the clock's strike, it marked a moment... which"
border_line "seemed to be momentarily mundane and only mattered to those"
border_line "who held such moments with a state of significant regard. He"
border_line "didn't; he had a commitment to take care of."
border_line ""
border_line "He went downstairs, and noticed Punbell was preoccupied with"
border_line "an administrative matter. \"He had been one of our best patrons,"
border_line "and sufficeth to say, it is sad to watch him lose himself..."
border_line "Oh, is that right? I didn't know they were unaware... well,"
border_line "some other time then, be sure to come next week.\""
border_line ""
border_bottom
echo ""
echo "$(center "[1] Who is he talking to?")"
echo "$(center "[2] ...")"
echo "$(center "[3] ...")"
echo ""
echo "$(center "[m] Return to main menu")"
echo "$(center "[q] Quit")"
echo ""
read -n 1 -s -r key
case $key in
    1) clear ;;
    2) clear ;;
    3) clear ;;
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_78_textonly.sh" ;;
esac
echo ""
"$(dirname "$0")/page_79_title.sh"
