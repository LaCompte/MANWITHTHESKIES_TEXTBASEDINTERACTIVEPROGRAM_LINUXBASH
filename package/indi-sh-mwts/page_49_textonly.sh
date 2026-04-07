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
border_line "\"The staff gathered at the entrance of their office, to greet him on his"
border_line "successful excursion. They noticed that it had been very rainy the other"
border_line "night, and that the fog had been more prominent that day than they had"
border_line "been prior. But they kept quiet, hoping that the stork will be able to"
border_line "make it safely."
border_line ""
border_line "\"There was a sharp lightning striking the periphery; the noise from the"
border_line "various things falling down only added to the suspense. And then, there"
border_line "was heard the sound of footsteps. Or rather, the sound of clapping"
border_line "hitting the floor as something made its way towards the office. Its form"
border_line "was clearly drenched in water, its arm and hands seemed as if a deadly"
border_line "weight was pulling it down. Hence why there seemed to be a huddled"
border_line "burden upon the creature. It drew near, without fear... And when it"
border_line "finally came to the light, the eagle smiled. A long arm passed through"
border_line "the rain, and under the small roof of the office entrance, it handed the"
border_line "eagle a letter with the return address of the same place from whence the"
border_line "stork had arrived."
border_line ""
border_line "\"If you ever wondered why the babies of this world are brought to their"
border_line "respected houses by storks, you have to thank this story for it. Later"
border_line "onwards they gave a name to the stork. Or rather, they found out what"
border_line "his actual name was - it was Rivek Thalroppe, or Dave for short.\""
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 50, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_50_title.sh" ;;
esac
