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
border_line "One of the letters was from Punbell, something which neither took him by"
border_line "surprise, nor did it seem to be something he had prior knowledge about."
border_line "He decided that , as the sole proprietor and legal owner of the deposit"
border_line "box, he will make a copy of the letter and read it - it might as well be"
border_line "over and done with. He opened the letter and perused its contents."
border_line ""
border_line "\"I heard the rustling of the last autumn leaves, calmly guiding"
border_line "blackbirds to hail and proceed with the procession. For every footstep"
border_line "came tears from the sky; for every prayer was the ash and dust returned"
border_line "to its rightful owner. Yet on whose behalf it was done, was nowhere to"
border_line "be seen."
border_line ""
border_line "\"It is only sorrow which is described, my son. Yet what of anxiety? What"
border_line "of fear, if the world you know so acutely, so profoundly, that you could"
border_line "breathe every moment without a second thought... If such a world ceases"
border_line "to be, then what will the world be like? What of hope, my son - the"
border_line "challenge of rising up to the occasion could either be a traumatizing"
border_line "one, or an invigorating one. I see all of these in you. I see, in your"
border_line "quiet demeanor, in your calm consideration of where you are and where"
border_line "you will yourself be... I see, and I believe it to be true, a human"
border_line "being truly realized."
border_line ""
border_line "\"Heed my advice, do not weep as the blackbirds fly away; 'do not let the"
border_line "procession of the Birtash be spoilt by despair; for he made his choice"
border_line "to go gently into that good night.' I fondly remember that you loved"
border_line "that quote. I believe that it was from \"Sermons of the Mirtash\", a"
border_line "history book with gorgeous illustrations which you would look at for"
border_line "hours on end. You simply never got enough of it. And when you went to"
border_line "the Birtash and saw all the processions, you were all those emotions:"
border_line "overwhelmed with joy, grief, ecstasy, sorrow, anxiety, hope, anger,"
border_line "excitement... You were alive, and it made me happy to see you grow."
border_line ""
border_line "\"My son, I love you. And if circumstances had been different I would"
border_line "have tried my hardest to be there for you in your time of need. But alas"
border_line "my son, I must apologize. The blackbirds call out my name... I must walk"
border_line "into the good night, and acknowledge the tears. It is time... I hope, I"
border_line "pray,that when we meet again, it will be in happier circumstances.\""
border_line ""
border_line ""
border_bottom

echo ""
echo "$(center "Continue to Page 59, press any key")"
echo ""
echo "$(center "To go back to the main menu, press [m]")"
echo "$(center "To quit, press [q]")"
echo ""
read -n 1 -s -r key
case $key in
        m) "$(dirname "$0")/../main_menu.sh" ;;
        q) echo "" && exit 0 ;;
        *) "$(dirname "$0")/page_59_title.sh" ;;
esac
