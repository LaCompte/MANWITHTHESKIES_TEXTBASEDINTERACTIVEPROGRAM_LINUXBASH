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
border_line "\"Before your father will arrive, I was hoping that you and I could have"
border_line "a discussion about a matter of grave concern.\" Laraiez said, hoping to"
border_line "proceed without interruption while at the same time indulging in tea"
border_line "dipped Yivelis. Both of these wishes were granted. Whilst the discussion"
border_line "was proceeding, he looked out of the window and observed the view. The"
border_line "sound of leaves rustling, the wind blowing, and the distant flowing of"
border_line "water from a distance. He thought to himself if Laraiez could hear that"
border_line "water flowing, but kept quiet as Laraiez was busy with his lecture."
border_line ""
border_line "Laraiez had lowered his glasses and asked him \"I heard that you had"
border_line "wanted to avoid playing sports in order to spend more time at the"
border_line "library. Is that true?\" To this, Laraiez was given a positive response."
border_line "Laraiez asked a few more questions, and was promptly answered. There had"
border_line "been a debate on some of the answers between Laraiez and him, but these"
border_line "were purely to determine the dedication of his decision. He had stayed"
border_line "in school after school-hours as he had been asked by Laraiez for this"
border_line "discussion. Laraiez nodded when he was informed about the application"
border_line "that had also been submitted."
border_line ""
border_line "When his father arrived, Laraiez had the gentleman seated outside his"
border_line "office and then, with his son, came to greet the person. they had some"
border_line "small talk regarding how children will always do as they please."
border_line ""
border_line "\"I'll inform Punbell about your son. he would appreciate the help\" said"
border_line "Laraiez. he was taken aback not so much by the Qin giving permission,"
border_line "but by his father; his father shook hands with Laraiez, immeasurably"
border_line "proud of his son being given such an opportunity. they shared one more"
border_line "greeting and then departed."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 17, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_17_title.sh" ;;
esac
