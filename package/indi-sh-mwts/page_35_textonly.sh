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
border_line "\"I never liked insects. They're terrible little things.\" He commented."
border_line ""
border_line "\"Indeed, yet a world without insects is barren, devoid of sustained"
border_line "life\" retorted Laraiez."
border_line ""
border_line "\"These places are notably peaceful, and people there are alive - they"
border_line "have more charisma.\""
border_line ""
border_line "\"Depends on how you define charisma. Are they charming as a result of"
border_line "their environment, or are they charming, despite being in an environment"
border_line "they know is not sustainable?\""
border_line ""
border_line "\"Or they are charming even though they made their environment"
border_line "sustainable for themselves?\""
border_line ""
border_line "Laraiez pondered on this point, and asked him \"You would honestly prefer"
border_line "living in a desert than in agricultural lands, simply because you hate"
border_line "insects?\""
border_line ""
border_line "He thought about Laraiez' question, and kept quiet. He looked at the"
border_line "close upstairs. \"That is an interesting question.\""
border_line ""
border_line "\"Possibly not as interesting as the answer.\""
border_line ""
border_line "He nodded at what Laraiez retorted towards. He shook his head, and"
border_line "looked at Laraiez, saying \"Maybe not... Is there anything about Bardia I"
border_line "should know?\""
border_line ""
border_line "Laraiez threw some breadcrumbs at the ants, humming to himself. He"
border_line "pushed up his glasses, and nodded to something. Laraiez looked at him,"
border_line "and asked, \"What would you say about him?\""
border_line ""
border_line "\"He's not comfortable with the Birtash, and is quiet. But is a good kid."
border_line "Clearly he is a bit shy, with words I mean.\""
border_line ""
border_line "\"Well, yes and no. Yes, he is shy with words and is quiet, but no, if he"
border_line "is a good kid, then he shouldn't cause so much worry as he does.\""
border_line "Laraiez clarified, his analysis being firm yet sincere. Laraiez got up"
border_line "from the bench, scraped the breadcrumbs from his hands, and told him"
border_line "\"You should be present in the office when I call Bardia over. I'm sure"
border_line "he would appreciate the support.\""
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 36, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_36_title.sh" ;;
esac
