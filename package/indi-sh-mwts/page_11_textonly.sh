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
    echo "|---------------------------------------------||-------------------------\\"
}
split_bottom() {
    echo "|---------------------------------------------||-------------------------/"
}
split_line() {
    local left="$1"
    local right="$2"
    printf "| %-50s ||  %-29s |\n" "$left" "$right"
}
clear
echo ""
echo ""
split_top
split_line "He squinted for a while, as his path" ""
split_line "became somewhat blurry. The beach and" ""
split_line "the sound of the waves however, marked" ""
split_line "his being in the right direction." ""
split_line "They were neither loud nor were they" ""
split_line "in any way dimming. It was a curving," ""
split_line "flat, vague road which led somewhere." ""
split_line "He felt he was making progress, since" ""
split_line "he could now feel the scent - \"smell" ""
split_line "is as much a sense as every other.\"" ""
split_line "of sandwiches being served. They had" ""
split_line "the air of home to them. Even though" ""
split_line "these sandwiches were home baked and" ""
split_line "cooked since it was a picnic. \"Food" ""
split_line "for thought\" he thought to himself," ""
split_line "finding that the path started making" ""
split_line "an upward trajectory." ""
split_line "" ""
split_line "There was a sound of a bell slowly" "[1] The bell. Familiar."
split_line "resonating from a distance. The sound" ""
split_line "of laughter, arguments, as well as" "[2] He follows it."
split_line "mischief could be faintly heard from" "    He is not sure why."
split_line "the background as well. He kept" ""
split_line "walking, finding the draft had left" "[3] He walks toward it."
split_line "allowing him to open his jacket again." "    It is simply there."
split_line "" ""
split_bottom
read -n 1 -s -r key
case $key in
    1) clear; exec "$(dirname "$0")/page_12_title.sh" ;;
    2) clear; exec "$(dirname "$0")/page_12_title.sh" ;;
    3) clear; exec "$(dirname "$0")/page_12_title.sh" ;;
    m) exec "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) exec "$(dirname "$0")/page_11_textonly.sh" ;;
esac
echo ""
echo ""
split_top
split_line "He moved in the direction of the sound." ""
split_line "The road came to a stop, with a wall" ""
split_line "blocking a forward path. He looked" ""
split_line "left and right. He decided to move" ""
split_line "left. He kept going straight. He took" ""
split_line "the turning when the wall turned. He" ""
split_line "found a back-gate which he observed" ""
split_line "carefully. He retraced his steps and" ""
split_line "walked in the opposite direction. He" ""
split_line "took the turn after some time. He was" ""
split_line "greeted by the sight of a grand" ""
split_line "entrance. The gate was open, with a" ""
split_line "cemented path leading to the school." ""
split_line "" ""
split_bottom
echo ""
echo "$(center "Continue to Page 12, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
    m) exec "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) exec "$(dirname "$0")/page_12_title.sh" ;;
esac
