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
border_line "\"The first Qin was said to be as quiet as the sky and as unpredictable"
border_line "as the weather .Just as the fog takes up form whenever it so pleases,"
border_line "the same applied to the Qin. Although he never raised his voice, the"
border_line "first Qin was known to voice his anger through... Rather interesting"
border_line "means. He was passing by our school one day. Some of the boys were doing"
border_line "something, up to mischief and the like - as boys are wont to do, you can"
border_line "imagine. The boys had decided to honk on the school horn, implying that"
border_line "lunch and sport break had commenced. They were successful, but were"
border_line "caught doing so by the first Qin."
border_line ""
border_line "\"He passed the playground quietly, and once all the boys had gone"
border_line "inside, he walked to the gardener and told him something. I know because"
border_line "I saw him walk to the gardener. I didn't take much notice of it back"
border_line "then. The boys were walking back home when they noticed sand spread all"
border_line "over the entrance of the school. Everyone followed the scrapes and found"
border_line "the sandpit had been completely emptied of sand. In the sandpit,"
border_line "instead, was muddy water and some sort of slime. Qin Laraiez heard about"
border_line "the commotion, and took the situation into consideration."
border_line ""
border_line "\"The old gentleman who I had seen talk to the gardener, stepped forward,"
border_line "and told everyone about the mischief committed by the three boys."
border_line "Laraiez, staying calm, took note of the charges and, with mild"
border_line "annoyance, had everyone leave and return home. The three boys, however,"
border_line "stayed back. Laraiez had not asked them to, no one did - they stayed"
border_line "back voluntarily. I don't remember the looks on their faces, or what"
border_line "they specifically said, but I know they said something related to the"
border_line "sandpit."
border_line ""
border_line "\"The next day, Laraiez called all of us over to the auditorium, and so,"
border_line "we congregated there. He explained what had happened yesterday, who the"
border_line "complainant was, and the reasons for his mildly annoyed response."
border_line "However, he commended the three boys for taking responsibility for their"
border_line "actions. And not only cleaning the sandpit, but also making sure that"
border_line "'Qin Tapkul had been calmed down, informed of the lesson learnt, and"
border_line "their remedy to the mischief'. We cheered the boys when they came"
border_line "on-stage... I found out later about how they had achieved this feat, but"
border_line "I don't remember it now, maybe once we reach the school I'll show you"
border_line "how they did it. Sounds good?\""
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 34, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_34_title.sh" ;;
esac
