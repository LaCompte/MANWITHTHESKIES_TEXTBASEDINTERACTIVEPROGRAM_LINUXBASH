#!/usr/bin/env bash

GREY='\033[0;30m'
LIGHTISHBLUE='\033[0;36m'
RESET='\033[0m'

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

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
    printf "${GREY}%s${RESET}\n" "$text"
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
    printf "${GREY}%${pad}s%s${RESET}\n" "" "$text"
}

# ─────────────────────────────────────────────
# PAGE LIST
# Four columns, 23 rows
# Pages 1-87 then 89-92 (88 absent)
# ─────────────────────────────────────────────

col1=( 1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23)
col2=(24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46)
col3=(47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69)
col4=(70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 89 90 91 92)

show_menu() {
    clear
    echo ""
    echo ""
    printf "${LIGHTISHBLUE}"
    typewriter "$(center "Pages")" 0.04
    printf "${RESET}"
    echo ""
    fadein "$(center "______________________")"
    echo ""
    echo ""

    for i in {0..22}; do
        c1="${col1[$i]:-}"
        c2="${col2[$i]:-}"
        c3="${col3[$i]:-}"
        c4="${col4[$i]:-}"

        [[ -n "$c1" ]] && c1d=$(printf "%02d" "$c1") || c1d="  "
        [[ -n "$c2" ]] && c2d=$(printf "%02d" "$c2") || c2d="  "
        [[ -n "$c3" ]] && c3d=$(printf "%02d" "$c3") || c3d="  "
        [[ -n "$c4" ]] && c4d=$(printf "%02d" "$c4") || c4d="  "

        printf "${GREY}"
        printf "          %s          %s          %s          %s\n" \
            "$c1d" "$c2d" "$c3d" "$c4d"
        printf "${RESET}"
    done

    echo ""
    echo ""
    center_grey "[m]  Main menu    [q]  Quit"
    echo ""
    printf "${GREY}          Enter a page number and press Return: ${RESET}"
}

# ─────────────────────────────────────────────
# VALID PAGES
# ─────────────────────────────────────────────

is_valid_page() {
    local n="$1"
    if [[ "$n" =~ ^[0-9]+$ ]]; then
        if (( n >= 1 && n <= 92 && n != 88 )); then
            return 0
        fi
    fi
    return 1
}

# ─────────────────────────────────────────────
# MAIN LOOP
# ─────────────────────────────────────────────

while true; do
    show_menu
    read -r input

    input="${input// /}"

    case "$input" in
        m|M)
            clear
            exec "$PROJECT_ROOT/main_menu.sh"
            ;;
        q|Q)
            exit 0
            ;;
        *)
            if is_valid_page "$input"; then
                padded=$(printf "%02d" "$input")
                target="$SCRIPT_DIR/page_${padded}_title.sh"
                if [[ -x "$target" ]]; then
                    exec "$target"
                else
                    clear
                    echo ""
                    center_grey "Page ${padded} could not be loaded."
                    center_grey "Press any key to return."
                    read -n 1 -s -r
                fi
            fi
            ;;
    esac
done
