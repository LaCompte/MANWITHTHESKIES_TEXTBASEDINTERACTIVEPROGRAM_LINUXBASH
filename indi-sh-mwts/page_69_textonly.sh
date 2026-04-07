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
border_line "They reached the crossroads. They headed up, and took the turning"
border_line "towards the school. He looked at Bardia, wondering at the silence and"
border_line "the general distracted gaze. He stopped thinking about it once they"
border_line "reached the school entrance. Bardia went to his classroom, Laraiez"
border_line "greeted Bardia, and gestured him to wait. Laraiez looked at him, and"
border_line "took him to the Qin's office once Bardia entered the classroom."
border_line ""
border_line "\"It has been a while since you last visited.\""
border_line ""
border_line "\"Has it been a while since I caused problems?\""
border_line ""
border_line "\"Well that is true. Punbell had mentioned that you had been quite busy"
border_line "in the library... Were doing quite a good job too.\""
border_line ""
border_line "\"It is routine, I suppose. Make hay whilst the sun shines. Or when you"
border_line "have time.:"
border_line ""
border_line ":Time: the one thing everybody wants, yet nobody has. So, what is it you"
border_line "bid me this time?\""
border_line ""
border_line "\"It... Is much more than a bid... I would say that it is a favor.\""
border_line ""
border_line "\"A... Favor?\""
border_line ""
border_line "\"It is a personal matter. And requires a delicate, sensitive eye to"
border_line "resolve. I would have approached anyone else. You were the ideal person"
border_line "to approach.\""
border_line ""
border_line "\"I see... So what you are seeking is advice, not a favor.\""
border_line ""
border_line "\"If you seek to look at it that way... It is about Punbell.\""
border_line ""
border_line "\"... A kind gesture from Punbell. Shame you are not taking it up.\""
border_line ""
border_line "\"I suppose... Although considering we are talking about Punbell.\""
border_line ""
border_line "\"Very well... If that is how you wish it to be, I will let Punbell"
border_line "know.\""
border_line ""
border_line "\"... What about Bardia?\" \"... Very well, no harm in talking about it.\""
border_line ""
border_line "\"Bardia! Please, come in!\" Said Laraiez as Bardia entered and sat down."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 70, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_70_title.sh" ;;
esac
