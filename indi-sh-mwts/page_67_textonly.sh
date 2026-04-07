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
border_line "After what seemed like an eternity, but really was just ten minutes, he"
border_line "came and said \"In case you are still hungry, or want to wash the milk"
border_line "down\", offering the meal of eggs, beef, rice, and potatoes."
border_line ""
border_line "Bardia looked at the meal then at him, and returned the gaze back to the"
border_line "meal, wondering at what had been provided. After a few minutes, Bardia"
border_line "asked \"How do you eat this?\" In a tone that was less angry, or curious,"
border_line "or sarcastic, more a state of wondrous awe. He returned with a fork and"
border_line "knife, and taught Bardia what the meal was, how it was cooked, and what"
border_line "were the ingredients in addition to the core ingredients. Bardia took a"
border_line "bite, then another one, and continued doing so until he had finished all"
border_line "of it."
border_line ""
border_line "\"How do you feel?\" He asked Bardia whilst picking up the dishes. \"Happy!"
border_line "As happy as can be. That was amazing! Thank you!\" Said Bardia and hugged"
border_line "him. He was taken aback by the action, and only responded back with a"
border_line "light tap on Bardia's shoulders."
border_line ""
border_line "As Bardia went upstairs, he asked Bardia a few questions. The fog had"
border_line "started to slowly and steadily become opaque. The scent of something"
border_line "also marked its presence in the house. Both Bardia and he decided to get"
border_line "ready, and head to the school. Whilst waiting for Bardia, he decided to"
border_line "turn on the radio. He noticed it lying in a corner, on one of the ledges"
border_line "adjacent to the window: he was wondering if it worked. The initial"
border_line "crackling followed by the slow clearing voice was evidence, sufficient"
border_line "to prove the correct answer."
border_line ""
border_line "\"Chance of light rain, followed by a chill, and snow forecasted in the"
border_line "morning... Noted\" he said, and then turned it off. Both Bardia and he"
border_line "left the house, with Bardia locking the door. Bardia walked hand in hand"
border_line "with him to the open. He made sure that they both of them had umbrellas,"
border_line "and had kept them up."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 68, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_68_title.sh" ;;
esac
