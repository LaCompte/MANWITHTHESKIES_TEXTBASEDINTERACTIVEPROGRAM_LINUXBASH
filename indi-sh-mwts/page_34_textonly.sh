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
border_line "Bardia quietly heard the story, and at the end, he acknowledged his"
border_line "question. Bardia, however, did not have an answer. Bardia shrugged, and"
border_line "did not answer with words. He looked at Bardia and noted the answer."
border_line "They reached the entrance of the school. Laraiez was waiting at the"
border_line "entrance of the building, tapping his shoes, while looking at Bardia."
border_line "\"You seem to have lost something or been distracted on your way\" Laraiez"
border_line "said to Bardia. Bardia kept quiet, showing mild nervousness. \"It was"
border_line "traffic, Qin Laraiez. Bardia was ready and out of the house on time. We"
border_line "took a longer route. The fault is mine\" was the response to the"
border_line "accusatory rhetorical statement. Laraiez noted the response, and said"
border_line "\"Bardia, I expect you in my office after school is over.\""
border_line ""
border_line "Bardia entered the school, where the sound of footsteps overwhelmed the"
border_line "chatter and other assortment of noise that could be heard. He followed"
border_line "Bardia from a distance, making sure that he had reached his requisite"
border_line "classroom. It was the same route which he remembered when coming to"
border_line "school as a child. Once Bardia was inside the classroom, he went"
border_line "downstairs, took the exit to the garden, and sat on one of the benches"
border_line "next to Laraiez. Laraiez was busy at the time, feeding breadcrumbs to"
border_line "ants."
border_line ""
border_line "\"You don't need to worry about where you take steps. I'm not squeamish"
border_line "about them\" clarified Laraiez. He noted the clarification, and sat down."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 35, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_35_title.sh" ;;
esac
