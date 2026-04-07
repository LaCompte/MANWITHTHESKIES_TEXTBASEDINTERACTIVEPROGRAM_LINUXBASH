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
border_line "He walked on the cemented path, up the flight of stairs, and knocked on"
border_line "the door... by pressing the bell on the wall marked \"bell\". He stepped"
border_line "back, hearing the sound of footsteps - loud, marked footsteps - from"
border_line "within the building. It took a while for the door to open, but it was an"
border_line "intense duration of waiting."
border_line ""
border_line "The door opened. An elderly gentleman looked out and was greeted as per"
border_line "custom, by the couple."
border_line ""
border_line "\"We take pride in him\" they said. the elderly gentleman offered his hand"
border_line "to the applicant being discussed. He shook it, in what can best be"
border_line "summarized as a neutral way of shaking hands: there was just enough"
border_line "force to show acknowledgement but not enough to imply endearment - one"
border_line "could not make an opinion from it."
border_line ""
border_line "the couple then cheered their son, and informed him that they will come"
border_line "to pick him up before lunch. When he was inside the school, the Qin"
border_line "smiled and described it to him. \"My father used to love walking in this"
border_line "hallway\" he said, as he led him up a flight of stairs to the first"
border_line "floor, left towards the fifth room in the general direction of the"
border_line "teacher staff room. There were plenty of chairs and tables laid in an"
border_line "orderly fashion in the room. \"You will be attended to, in a while\" the"
border_line "Qin said, to which he responded to the Qin: \"Very well, sir\"."
border_line ""
border_line "\"Laraiez, if you must address me\" responded the Qin."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 14, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_14_title.sh" ;;
esac
