#!/usr/bin/env bash

BLACK='\033[0;30m'
LIGHTISHBLUE='\033[0;36m'
RESET='\033[0m'

typewriter() {
    local text="$1"
    local delay="${2:-0.02}"
    for ((i=0; i<${#text}; i++)); do
        printf "%s" "${text:$i:1}"
        sleep "$delay"
    done
    printf "\n"
}

fadein() {
    local text="$1"
    printf "${BLACK}%s${RESET}\n" "$text"
}

center() {
    local text="$1"
    local width=70
    local textlen=${#text}
    local pad=$(( (width - textlen) / 2 ))
    printf "%${pad}s%s\n" "" "$text"
}

center_grey() {
    local text="$1"
    local width=70
    local textlen=${#text}
    local pad=$(( (width - textlen) / 2 ))
    printf "${BLACK}%${pad}s%s${RESET}\n" "" "$text"
}

center_blue() {
    local text="$1"
    local width=70
    local textlen=${#text}
    local pad=$(( (width - textlen) / 2 ))
    printf "${LIGHTISHBLUE}%${pad}s%s${RESET}\n" "" "$text"
}

echo_centered_para() {
    # Wraps a long string at 70 chars and centers each line
    local text="$1"
    echo "$text" | fold -s -w 58 | while IFS= read -r line; do
        center_grey "$line"
    done
}

press_any_key() {
    echo ""
    center_grey "..."
    echo ""
    read -n 1 -s -r
}

# ─────────────────────────────────────────────
# STORY ONE: A Simple Interest of Memories
# ─────────────────────────────────────────────

story_rinaar() {
    clear
    echo ""
    center_blue "A Simple Interest of Memories"
    echo ""
    fadein "$(center "______________________")"
    echo ""
    sleep 0.5

    echo_centered_para "Rinaar Lon Daneer had been reading his newspaper quietly as he took note of the time and the entrance. The lobby was, and would always be, the pride and joy of the building; that was what he thought. And maybe he would have been ready to debate on this point. Provided that the building was filled with people. At the time when Rinaar would start work, he was the initial employee in the building. The only sounds to be heard were the hovering of the fan, and the screeching noise of his seat. Rinaar was expecting a guest today. At least according to the schedule he had been provided."
    echo ""
    echo_centered_para "\"I suppose I should deal with the request of Mr. Bez here and now.\" Thought Rinaar, as he decisively rolled the newspaper to greet Mr. Bez. It took a while, but Mr. Bez received a warm welcome. Rinaar cleared his eyes using the forefinger and thumb of his right hand; Mr. Bez had misspelled one of his crossword answers. He shrugged it aside as a valiant effort. He looked at the clock and decided to wait - it would be two in nearly fifteen minutes anyway, so why not wait?"
    echo ""
    echo_centered_para "Rinaar looked at the desk neighboring him. Rinaar, noticing that there was ruffled paper stashed in one of the drawers, thought to himself \"He probably is in the vault... I'm not sure; I should check\". For which reason he got up, and after confirming the time left, headed to the back of the bank. Straight from the main entrance, then left at the atrium, up to the second floor, right at the blocks, and then entering the elevator. \"Take the elevator down to the second basement\" repeated Rinaar under his breath, as he pressed an assortment of buttons in a specific order, after which he pressed the button marked \"2B\"."
    echo ""
    echo_centered_para "Rinaar kept a blank face as he noted the floor number on the display of the elevator. The bell's ring marked the arrival of the elevator at its destination, and the opening of the elevator doors allowed Rinaar to enter the vicinity. Rinaar found one of his colleagues looking through a vault file. During the conversation, Rinaar was informed: \"As you happen to be here, perchance you could glean information in 22.06.92\". Rinaar nodded as he made his way through the labyrinth."
    echo ""
    echo_centered_para "The walls on both sides were covered with vaults, numbered in a specific order: the first number was the file number, the second showed how many vaults were below it, and the third number was how far the banker had to walk before he reached the correct vault. Rinaar had crossed ninety two vaults, and found the series he was looking for. He took the ladder and climbed five vaults and opened the sixth vault. He then took out the file numbered \"twenty two\". He opened the file, and skimmed through the details."
    echo ""
    echo_centered_para "Rinaar closed the file, stepped down from the ladder, and handed the file to his colleague. \"I'll send instructions over to your desk for this file. I'll close everything down here and come upstairs. See you then.\" Rinaar was told. Rinaar, nodding and waving his colleague, took the elevator upwards."
    echo ""
    echo_centered_para "Rinaar reached his desk and, noting that his neighbor was on his way, looked at the lobby. The facade was a wonderful assortment of paintings of different eras, with some portraying the \"Colonial Fort\" age on one side, and the other showing the foundations being laid for the bank. His desk was under the atrium, where the walls on either side had photographs and paintings of the presidents of the bank. Rinaar was not bothered by the fact that all of them wore a specific type of hat; had an angry serious look on their face; and always looked into the distance rather than directly at the camera/painter."
    echo ""
    echo_centered_para "It did not matter, as Rinaar had received the instructions and relevant parcel from his colleague. He noted the instructions, and after clarifying certain details, Rinaar nodded and sat down. He looked at the lobby, and then went back to reading his book, \"The Financial Accord for Vault Maintenance and Account Management\"."
    echo ""

    press_any_key

    clear
    echo ""
    center_grey "[m] Return to menu    [q] Quit"
    echo ""
    read -n 1 -s -r key
    case $key in
        m|M) return ;;
        q|Q) exit 0 ;;
        *) return ;;
    esac
}

# ─────────────────────────────────────────────
# STORY TWO: Reading between the Lines
# ─────────────────────────────────────────────

story_punbell() {
    clear
    echo ""
    center_blue "Reading between the Lines"
    echo ""
    fadein "$(center "______________________")"
    echo ""
    sleep 0.5

    echo_centered_para "A book can take up space, and can also be very likely to suffer damage when doing so. The type of binding involved in the creation of each book was appreciated far more than it should be - it is a craft, a skill, and a tool. No more, no less. That was what Lebrius Punbell Lon Pamell thought as he was making his rounds around the book towers. These were his responsibility to monitor and to keep intact for whenever they were to be rented out. Punbell didn't mind - he had no personal history with these books, and ever since they had been procured by the library they only gained glancing interest."
    echo ""
    echo_centered_para "Punbell took note of those qualities as he took note of each book tower, having started his shift today at tower 84. He had noted the names of the book, and used the reference number to tally if they had been checked out. Punbell muttered the names of each book as he noted their names, humming in between as he searched and tallied from his list. One of the missing books - \"The Financial Accord for Vault Maintenance and Account Management\" - was noted in his list. \"Need to send a mail on these soon as I finish tower 93\" Punbell mentioned aloud, and took another book into his list - \"Stop the Bez\"."
    echo ""
    echo_centered_para "Punbell was given company by the scratching of the pencil with the paper and clipboard; the soft rustling of trees; the rays of sunshine arriving from the corner of the library visible from tower 76, reflecting at his office; his own yawns; and the sound of his shoes tapping on the floor as he made his way to and fro in the library. Punbell, having reached tower 85, found that there were no books which warranted further action."
    echo ""
    echo_centered_para "Punbell walked through tower 93, turned left, walked straight passing towers 93 thru 71 on his left and towers 92 thru 72 on his right. His workstation faced tower 76, with a staircase heading upwards at a modest distance. Punbell sat down, and took out a folded paper out from one of the cabinet drawers of his workstation. There were four books with a white paper mark on his workstation. The mark had written on it \"returned, noted and archived\" and was stamped with a date. One of the books - \"Niner Hotel: origins, history, myths and legends\" - was recently returned."
    echo ""
    echo_centered_para "Punbell put the books on a side and, with a clear table, placed the unfolded paper. It had numerous crosses and dots on it, with the title reading \"Helping Hand for the Library, seventh iteration\". Punbell took out a pencil and then picked up the list of books he had made. Noticing that the list was unable to explain certain things, Punbell took out a directory, opened it adjacent to - but not on top of - the map, and started work. He noted the name of the book, and searched the directory. Whomever had checked out the book was marked on the map."
    echo ""
    echo_centered_para "This process took some time, but Punbell had been able to pin-point all the crosses from his list to the map. \"It seems that the season ended early this year\" thought Punbell, as he worked through the list once more, as a confirmation. Once reassured that the list was correct, and noted on the map, Punbell filled the directory, folded the map and then placed it as well as the list inside a brown letter envelope. He wrote on the envelope Checkout List, return dates included."
    echo ""
    echo_centered_para "He then stepped away from his desk, went up the staircase, and turned left. He passed by some book towers. They were all on his right side and were numbered 50 till 32; he reached the end of the hall where numerous envelope holders were present. He opened the envelope holder marked \"Book Checkout\", and put the envelope inside."
    echo ""
    echo_centered_para "Punbell walked back to his desk and took out another map, this time with the title \"archival map for returned books\". Punbell took out the directory and started the process of noting the addresses from where the books had been returned. Punbell had been asked about this process, especially from journalists who were fascinated by the library itself. Originally titled \"The Honorable Library in memory of the family Kulzirtaak\", the full title was contracted to \"The Honorable Library\", until it was better known as \"The Library\". To most journalists and historians, these small details held special importance. Yet whenever they asked Punbell, he would promptly respond with silence... and a book wherein the answer to their question lay."
    echo ""
    echo_centered_para "Punbell picked up one of the books - \"Lebrius Punbell Lon Pamell: a biography of a librarian\" - noted the return date and address, as well as other details, mentioned and marked it in the map and put it alongside the completed books."
    echo ""

    press_any_key

    clear
    echo ""
    center_grey "[m] Return to menu    [q] Quit"
    echo ""
    read -n 1 -s -r key
    case $key in
        m|M) return ;;
        q|Q) exit 0 ;;
        *) return ;;
    esac
}

# ─────────────────────────────────────────────
# STORY THREE: Checking In Before Twelve
# ─────────────────────────────────────────────

story_homaiz() {
    clear
    echo ""
    center_blue "Checking In Before Twelve"
    echo ""
    fadein "$(center "______________________")"
    echo ""
    sleep 0.5

    echo_centered_para "Homaiz Lon Qaltir was idling the hours away in the verandah of his house, having consumed some fruits and a few glasses of apple juice. It was a Thursday morning, and he had deliberated upon his schedule with composed regard. Yesterday had been completely dedicated towards work - public dealing is enjoyable as a hobby, not as a vocation - but today, he knew he had time dedicated for self-reflection. In the company of trees, rustling their songs as the wind blew; the scent of flowers, fruits (\"I will pluck the apples by the evening\") and the fluttering of birds and buzzing of bees; Homaiz was living in the moment."
    echo ""
    echo_centered_para "Most of his friends would appraise him as an elderly gentleman of a bygone era. They also described him as \"a dignified Mirtash amongst Kulzirtaak\". Unlike his friends, Homaiz did not indulge in such acts of fancy. He had firmly believed in principle, and now considered it a firmly rooted fact that loyalty to family and one's roots was much more important than self-indulgence. It was one of the reasons he worked everyday, and had late working hours on Thursday (\"fulfilling my father's wish\")."
    echo ""
    echo_centered_para "In truth, Thursday held importance for his father on the basis of how little time he had for family. Homaiz recalled with a sigh how his father would sit, and talk; Homaiz cherished those moments. \"What of days long past, when time was a mere transit between events?\" his father would ask, always before leaving to support his dream till his retirement: The Niner Hotel. Homaiz glanced at his watch, and nodded nonchalantly (\"Right then, to work\"). He took his plates and glasses into the house."
    echo ""
    echo_centered_para "The memory of one such interaction kept Homaiz preoccupied while he changed into his official attire. The sound of a music box distracted him. \"For Homaiz, on his sixth birthday\" was written on its base. \"Funny thing about gifts; the sentiment remains, even if the memory is forgotten\" was the only response in context to inquiries. Hamza and his friends had, almost out of principle, defined their lives around the Niner. There were the occasions of Birtash; the anniversary of the founding of the Niner was always a holiday to its oldest customers; the marriages of numerous family friends; perhaps the biggest gathering, and still an important but solemn occasion, was the funeral of his father."
    echo ""
    echo_centered_para "His father had noted specific instructions regarding everything pertaining to the Niner, right down to the minutiae. It was a god-sent, and helped Homaiz immensely to get the Niner back on track. Homaiz opened the notebook, tallied the date with his calendar, and memorized the routine. With the exception of the line \"When he wants to check in, open the box. Instructions have been provided in it\" the rest was straight forward."
    echo ""
    echo_centered_para "Homaiz had observed that his father's diaries made constant reference to this one person, especially in the latter half of the entries. From what Homaiz could gather, this guest had been a regular in the Niner until a mutually kept secret - a disagreement which was discreetly handled, supposedly - had made the fellow leave. Regardless, Homaiz knew that the gentleman in question will probably check into the hotel today."
    echo ""
    echo_centered_para "Homaiz matted his hair with the same specific oils his father used, especially for Thursday, and sprayed the specific cologne meant for today. \"Use the one marked 8.13.21\" said the entry. Homaiz obliged (\"Fulfilling my father's wish\"). While applying the cologne, Homaiz noticed that it had a particularly different scent than the ones he regularly applied. He noticed that it had a softer personality - it was more welcoming than the other colognes, almost in a parental tone rather than an institutional one. His own regular colognes were Niner, through and through: the motto \"Roots are the source to happiness\" emitted from them. 8.13.21 reminded him of his house: the feeling of nostalgia, belonging, of a familiar place calling itself home."
    echo ""
    echo_centered_para "Homaiz had one in mind as he locked the main entrance of his house: \"The key to true happiness, is inanity\". As he made his way to the gate, Homaiz gazed at the avenue. The Niner had been strategically located from his house with a unique premise: Convenience for the guest also applies to the host. People had easily forgotten that the house had been built first, not the hotel. The hotel was, in the eyes of its master, a hobby that grew into a vocation until it became his identity."
    echo ""
    echo_centered_para "It took him eight minutes from locking the gate to unlocking the entrance of the Niner; it was a mere fifteen minutes of setup everything after that. Reception, lobby, cafe and lights - always in that order. The Niner always welcomed guests; it always had a list of visitors who always came to stay."
    echo ""
    echo_centered_para "One of these rooms - 6.35 - was readied accordingly. A specific package was included in the cupboard next to the bed. It was wrapped in brown paper and was signed and confirmed with a card saying \"It was from a time long past.... Well, you know what it is. The importance of it at any rate\". Homaiz, out of habit, checked to see if all the utilities in the room were in working order and were well maintained. He was satisfied."
    echo ""
    echo_centered_para "Homaiz opened the box as per his father's instructions. He looked through the contents, read through the letter included in it, sighed, locked it (after removing the letter) and returned it in its place (\"Fulfilling my father's wish\"). Homaiz returned to the reception to make the requisite calls to Punbell and Raneer."
    echo ""

    press_any_key

    clear
    echo ""
    center_grey "[m] Return to menu    [q] Quit"
    echo ""
    read -n 1 -s -r key
    case $key in
        m|M) return ;;
        q|Q) exit 0 ;;
        *) return ;;
    esac
}

# ─────────────────────────────────────────────
# STORY FOUR: The Last Winds of Autumn Bliss
# ─────────────────────────────────────────────

story_laraiez() {
    clear
    echo ""
    center_blue "The Last Winds of Autumn Bliss"
    echo ""
    fadein "$(center "______________________")"
    echo ""
    sleep 0.5

    echo_centered_para "There is a certain charm found in a change of seasons - whether it is from melancholy to bliss to dismay to indifferent, they all serve their purpose in one's emotional state. In school, it certainly is claimed to be the case amongst students regardless of age. There comes the argument of \"my parents don't understand\", or \"the adults don't listen to us\", which is silly and doesn't hold much ground on its own."
    echo ""
    echo_centered_para "A gentleman of advanced age, Qin Laraiez, stopped reading the editorial immediately after the last sentence, took hold of a pen, and started correcting it. This was an editorial in a newspaper describing school children performance using various indicators. As Qin, Laraiez had taken particular note of his school and how it performed. Even though it was a weekend, Laraiez still preferred coming to his office and making sure everything was in running order."
    echo ""
    echo_centered_para "He had a backlog represented by the pile of papers on the \"Pending completion\" box on his desk, which he had decreased in the few hours since he had started working in the office. He had taken the newspaper with him from his house, walking distance from the school. He found it was a soothing experience, especially with a cup of hot chocolate, biscuits, and some Yiveliz. \"I should get in touch with Elias about this\" Laraiez thought to himself, as he looked at a report submitted in the \"Pending Completion\" box."
    echo ""
    echo_centered_para "He made his comments with a red pen on the report, and when he reached the end page put it in the \"Administration Outbox\". The sound of leaves rustling gave him company, and helped pass the time. His office had a prosperous view of the school playground - a lush and vibrant expanse of land which, although having some small hills, was a pleasant sight."
    echo ""
    echo_centered_para "Laraiez, however, had noted that the number of such incidents had decreased since he took up the mantle. If anything, these same students would visit him before heading home, to thank him and share their appreciation of his administration. Laraiez had his ways: he held a report sharing the current situation of each student in the school inclusive of what they required help in, what they had improved upon, and what were their prospects. \"A quiet person is like poison, killing slowly and without suspicion\" had been his rationale for identifying and adapting the rules and regulations of the school."
    echo ""
    echo_centered_para "Laraiez put the report in the \"Completed\" box and proceeded to look at the numerous vouchers and bills submitted for his approval. Laraiez had taken them into account, divided them according to vouchers, bills, fines, and events. This time there had been six events: a play titled \"Father always loved chocolates: a comedy\"; a science fair; a three day event dedicated to board games; and a trip to the Library."
    echo ""
    echo_centered_para "The library trip had five reports attached alongside from the teachers involved, who shared what books had been read by the students, as well as lessons learnt and recommendations for future trips. Laraiez found it fascinating that the students kept such good behavior while in a library - the one place they could visit without the need for a trip, was fascinating for all of them in terms of the history of the place, as well as its librarian Lebrius Punbell. Laraiez and Punbell had been students from the same series of training programs, where Punbell trained to become a Lebrius while Laraiez trained to become a Qin."
    echo ""
    echo_centered_para "Laraiez opened a folder in which was written \"Confidential reference file\" and read through the document. He nodded while reading, as the tea, biscuits, and Yiveliz were placed at the corner of his desk. Laraiez got up from his desk, went to a file cabinet and took out a file from the \"R-U\" drawer. He compared the findings from this file, with the confidential reference file he was reading. He checked the newspaper for the date and wrote something on his diary."
    echo ""
    echo_centered_para "Laraiez took out a paper and wrote a memo on it, which he placed in an envelope and placed it on the desk of the reception with a sticknote: \"For your reference\". Laraiez placed the confidential reference file in one of his desk drawers. He was nearly finished with his pending completion box, having only three more tasks to finish up. He decided to have his break first, while reading the editorial further."
    echo ""

    press_any_key

    clear
    echo ""
    center_grey "[m] Return to menu    [q] Quit"
    echo ""
    read -n 1 -s -r key
    case $key in
        m|M) return ;;
        q|Q) exit 0 ;;
        *) return ;;
    esac
}

# ─────────────────────────────────────────────
# ALL FOUR IN SEQUENCE
# ─────────────────────────────────────────────

story_all() {
    story_rinaar
    story_punbell
    story_homaiz
    story_laraiez
}

# ─────────────────────────────────────────────
# SUBMENU LOOP
# ─────────────────────────────────────────────

while true; do
    clear
    echo ""
    echo ""
    printf "${LIGHTISHBLUE}"
    typewriter "$(center "Additional Content")" 0.04
    printf "${RESET}"
    echo ""
    fadein "$(center "______________________")"
    echo ""
    echo ""
    center_grey "[1]  A Simple Interest of Memories"
    echo ""
    center_grey "[2]  Reading between the Lines"
    echo ""
    center_grey "[3]  Checking In Before Twelve"
    echo ""
    center_grey "[4]  The Last Winds of Autumn Bliss"
    echo ""
    center_grey "[5]  Read all in sequence"
    echo ""
    echo ""
    center_grey "[m]  Main menu"
    center_grey "[q]  Quit"
    echo ""

    read -n 1 -s -r key
    case $key in
        1) story_rinaar ;;
        2) story_punbell ;;
        3) story_homaiz ;;
        4) story_laraiez ;;
        5) story_all ;;
        m|M)
            clear
            exec "$(dirname "$0")/../main_menu.sh" ;;
        q|Q) exit 0 ;;
        *) ;;
    esac
done
