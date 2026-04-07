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
border_line "Bardia was pulled from the elevator and taken along with another friend"
border_line "to a gathering of people. There was plenty of music, \"street musicians"
border_line "probably from the Birtash making a living\" commented one of the"
border_line "gentlemen. Bardia noticed the snarky tone in which the comment had been"
border_line "made, and said \"They must be good if someone lifted them from the"
border_line "Birtash. If we had done that in the age of the King's, I'm sure somebody"
border_line "would have to grind the axe\" Most of the gentlemen laughed at the"
border_line "profundity of this point of fact, and discussed on those topics."
border_line ""
border_line "\"I'm sure Lady Tabatha must be around. She had an inkling about these"
border_line "pollinating populations\" thought Bardia, as he made his way around the"
border_line "crowd. One of the ladies spotted Bardia and responded by holding his"
border_line "hand and exclaiming 'I am so glad you came. Bardia, have you met Lady"
border_line "Tabitha?' to which Bardia responded, \"I may have seen some of your work"
border_line "in the Birtash. Beautiful arrangements, honestly\" and they shared some"
border_line "polite comments, a quip, and a comment about the lighting. Bardia"
border_line "continued to walk through the crowd and mingled with most of them."
border_line ""
border_line "And near the stroke of midnight, a troupe of performers came who marked"
border_line "the conclusion of Birtash. It was applauded, appreciated, and acclaimed"
border_line "in spirit and form. However, one by one, the crowd started to make its"
border_line "way home. Those who had been residing in the hotel stayed just a while"
border_line "longer until, when all outsiders had left, they too returned to their"
border_line "rooms. \"What a party. Homeiz' father would be proud\" exclaimed one"
border_line "participant."
border_line ""
border_line "\"I don't believe that Homeiz had anything to do with these arrangements\""
border_line "thought Bardia, walking between guests towards the delicacies section."
border_line "He had already made his movement from the entrance of the party which"
border_line "only stood out because of a plaque having the words \"one celebration of"
border_line "twenty years - an anniversary dinner\" and as you walked forward, with"
border_line "the columns on either side marking the depth of the hall, you noticed a"
border_line "raised platform where Bardia had an empty seat reserved for him, from"
border_line "which he would have a raised view of the guests."
border_line ""
border_line "\"Homeiz would have come here if given the opportunity\" he thought to"
border_line "himself, wondering at the absence of a familiar face. He was facing the"
border_line "delicacies table, where an assortment of condiments, salads, and a stew"
border_line "made from sheep and hens were available for the guests. Most of them"
border_line "relished the stew while seated on one of the many seats and round"
border_line "tables, often with friends but sometimes alone. Elias was on one such"
border_line "seat, busying himself with Yiveliz and a cup of tea. As Bardia walked"
border_line "over to him, Elias smiled and spoke nonchalantly \"I seem to be in limbo:"
border_line "this tea did not taste as it does now\" he decided to avoid drinking"
border_line "further and looking at the crowd, merely spoke \"they are gathering"
border_line "forward to hear an arrangement. I suppose we should as well\" and all"
border_line "made their way to the stage."
border_line ""
border_line "Except Bardia. Bardia merely walked and bid his leave as he made his way"
border_line "out of the hotel. He made his way to his car, with coffee in his hand."
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 89, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_89_title.sh" ;;
esac
