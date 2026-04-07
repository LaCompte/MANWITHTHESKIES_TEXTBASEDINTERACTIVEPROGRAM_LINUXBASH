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
border_line "He squinted for a while, as his path became somewhat blurry. The beach"
border_line "and the sound of the waves however, marked his being in the right"
border_line "direction. they were neither loud nor were they in any way dimming. It"
border_line "was a curving, flat, vague road which led somewhere. he felt he was"
border_line "making progress, since he could now feel the scent - \"smell is as much"
border_line "as sense as every other: you feel it the same way you taste something,"
border_line "or see something. I was told that once.\" he heard these words being"
border_line "shared to an audience unnamed, and beyond his view - of sandwiches being"
border_line "served. They had the air of home to them... Even though these sandwiches"
border_line "were home baked and cooked since it was a picnic. \"Food for thought\" he"
border_line "thought to himself, finding that the path started making an upward"
border_line "trajectory."
border_line ""
border_line "there was a sound of a bell slowly resonating from a distance. The sound"
border_line "of laughter, arguments, as well as mischief could be faintly heard from"
border_line "the background as well. He kept walking, finding the draft had left"
border_line "allowing him to open his jacket again. He moved in the direction of the"
border_line "sound. the road came to a stop, with a wall blocking a forward path. He"
border_line "looked left and right .He decided to move left. he kept going straight."
border_line "he took the turning when the wall turned. He found a back-gate which he"
border_line "observed carefully. He retraced his steps and walked in the opposite"
border_line "direction. He took the turn after some time. he was greeted by the sight"
border_line "of a grand entrance. the gate was open, with a cemented path leading to"
border_line "the school."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 13, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_13_title.sh" ;;
esac
