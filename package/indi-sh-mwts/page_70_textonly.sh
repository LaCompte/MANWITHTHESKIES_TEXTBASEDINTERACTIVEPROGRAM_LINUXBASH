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
border_line "Bardia, Laraiez, and he sat down and talked for some time, then he and"
border_line "Bardia bid Laraiez goodbye as they left the office."
border_line ""
border_line "\"Punbell invited you to something?\" Bardia asked him. He nodded."
border_line ""
border_line "\"Do you plan on going?\" Bardia inquired, to which he looked at Bardia"
border_line "and said \"I don't know.\" Bardia and he headed out from school and left"
border_line "the premise."
border_line ""
border_line "\"How did school go?\""
border_line ""
border_line "\"It was interesting.\""
border_line ""
border_line "\"Oh? Anything I should know about?\" He asked Bardia. Bardia spoke and"
border_line "was heard. They continued to talk until they reached the beach, from"
border_line "where Bardia took off his bag. He picked up Bardia's bag and made sure"
border_line "that it was properly closed in the locker. He headed to the beach."
border_line ""
border_line "The sound of the waves calmed any doubts in Bardia's mind, and both"
border_line "Bardia and he simply made the most with the moment. Both Bardia and he"
border_line "had mats placed on the sand, learning from the experience they both had."
border_line "Whilst the waves made their argument, the fog changed and plotted and"
border_line "schemed... At least that was what the clouds seemed to indicate. There"
border_line "seemed to be a thought in his mind as he heard the waves."
border_line ""
border_line "\"I remember seeing a couple here in the vicinity. You happened across"
border_line "them by any chance?\""
border_line ""
border_line "\"When? I haven't seen or heard of any such thing.\""
border_line ""
border_line "\"When... Is a unique question to ask.\""
border_line ""
border_line "\"I mean, when did you last see them? If I know the time, I can respond"
border_line "accordingly.\" He wondered at Bardia's answer, and stayed quiet for some"
border_line "time. He then responded by \"It was quite some time ago, I suppose; they"
border_line "probably have left by now, never mind.\" Bardia shrugged at the answer"
border_line "and lay back on the mat."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 71, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_71_title.sh" ;;
esac
