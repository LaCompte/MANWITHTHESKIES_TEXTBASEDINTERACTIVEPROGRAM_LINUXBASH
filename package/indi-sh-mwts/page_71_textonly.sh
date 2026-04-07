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
split_line "He closed his eyes. The sound of" ""
split_line "the waves was prominent, but calming." ""
split_line "It was the only sound that could be" ""
split_line "heard. That was fine: there was" ""
split_line "nothing that came to mind as he" ""
split_line "thought about many things. Some" ""
split_line "seemed to be more specific than" ""
split_line "others." ""
split_line "" ""
split_line "He thought about his time in the" ""
split_line "library. He could only remember the" ""
split_line "moments when his parents would drop" ""
split_line "him, or when they would pick him" ""
split_line "when he was done with work. He kept" ""
split_line "on pondering, wondering why he" ""
split_line "couldn't remember his home, or what" ""
split_line "happened afterwards to warrant the" ""
split_line "letters from both Punbell and his" ""
split_line "father. He still had the invitation" ""
split_line "from Punbell, something which" ""
split_line "Laraiez advised on and provided" ""
split_line "his support. He thought of Elias" ""
split_line "and wondered when was the last time" ""
split_line "he met the shopkeeper. All the" ""
split_line "memories were from either when he" ""
split_line "was young, or when he came back." "[1] Accept the invite."
split_line "\"What happened in the middle?\" he" "[2] Find the truth."
split_line "asked himself." "[3] The truth. Be free."
split_line "" ""
split_bottom
read -n 1 -s -r key
case $key in
    1) clear ;;
    2) clear ;;
    3) clear ;;
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_71_textonly.sh" ;;
esac
echo ""
echo ""
split_top
split_line "It was more of an afterthought. He" ""
split_line "continued to ponder upon the matter," ""
split_line "and wound up being awoken by Bardia" ""
split_line "\"I think it is getting late, we" ""
split_line "should go\" Bardia requested him." ""
split_line "" ""
split_line "He got up and folded both mats," ""
split_line "after having the sand removed. Both" ""
split_line "of them got to the entrance of the" ""
split_line "beach, wore their shoes, and walked" ""
split_line "to the road. \"Do you have a place" ""
split_line "in mind?\" Bardia asked him. To" ""
split_line "which he nodded, and walked silently." ""
split_line "They continued to walk until they" ""
split_line "reached a crossroad. Instead of" ""
split_line "taking any turn, he continued to" ""
split_line "walk straight until he reached a" ""
split_line "place marked \"The Short Straw\". \"It" ""
split_line "is quite a shortcut\" he thought and" ""
split_line "made his way through the building" ""
split_line "to the marketplace. He walked over" ""
split_line "to Elias." ""
split_line "" ""
split_bottom
echo ""
echo "$(center "Continue to Page 72, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
    m) "$(dirname "$0")/../main_menu.sh" ;;
    q) echo "" && exit 0 ;;
    *) "$(dirname "$0")/page_72_title.sh" ;;
esac
