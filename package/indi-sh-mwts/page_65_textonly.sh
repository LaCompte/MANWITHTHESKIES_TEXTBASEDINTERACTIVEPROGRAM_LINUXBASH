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
border_line "  \"Nearly thirty years have past since Rivek Thalroppe had made his"
border_line "  flight. Dave had grown older, which goes without saying; One of Dave's"
border_line "  eyes was dying out on him, so Dave was partially blind; Dave could fly"
border_line "  but only for short durations since his body was not able to withstand"
border_line "  hard weather; and one of Dave's legs had to be amputated, because"
border_line "  surgery was not able to bind the bones together. Even with all these"
border_line "  factors, Dave kept strong. Dave smiled, provided lectures, and gave"
border_line "  practical guidance and tips to new recruits... When they came. For"
border_line "  nearly thirty years since Dave's flight, the number of recruits had"
border_line "  actually decreased. There weren't that many deliveries. Their services"
border_line "  were utilized a quarter of the time annually, rather than every"
border_line "  quarter of the month per month. Even so, cancellations were much more"
border_line "  common, and accounted for a significant bunch of the income. It simply"
border_line "  was not feasible."
border_line ""
border_line "  \"Thalroppe looked at the pictures in his office. He wondered if there"
border_line "  was any way he could do one more order. Dave had been discussing it"
border_line "  with the board. Whilst Dave's suggestion had been respected and had"
border_line "  helped keep the company afloat, both knew that there had been concerns"
border_line "  to be considered."
border_line ""
border_line "  \"Dave had shown fervent dedication to this cause; if anything, he"
border_line "  would use the legend built from his legacy as a platform to train new"
border_line "  recruits, spread the network further, make sure that a feedback loop"
border_line "  was in place... He used his own fame to expand an institution, because"
border_line "  he believed in the cause. Eagle saw all this effort, and also took"
border_line "  note that Dave did everything by the books. Here began the first of"
border_line "  many interactions between Dave and Eagle. Now, nearly thirty years"
border_line "  later, a letter in hand and with a different tenor, Dave requested the"
border_line "  board to let him finish his service by completing one final delivery."
border_line ""
border_line "  \"The board reviewed the details. The client had been the first to test"
border_line "  Dave's mettle. Since then, a lot had happened which was important"
border_line "  (subjectively speaking). He requested Dave to take the order, because"
border_line "  he knew only Dave could be entrusted with it. The board read through"
border_line "  the directions but were wondering if Dave could pinpoint the actual"
border_line "  location on the map. Dave did as he was asked, and after pointing the"
border_line "  location, the board understood why Dave wanted it to be his final"
border_line "  delivery. They told Dave: 'He gave you two weeks; we'll let you know"
border_line "  well in advance'"
border_line ""
border_line "  \"Four days later, an official letter published on a red page, and"
border_line "  signed by all present in the board in golden ink, gave Dave the"
border_line "  answer: 'He is allowed to make the delivery. May the winds be in his"
border_line "  favor, and by his side' to which Dave, nodding prepared for this final"
border_line "  journey.\""
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 66, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_66_title.sh" ;;
esac
