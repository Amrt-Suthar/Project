#!/bin/bash

# ============================================================
#                 KAALROX — MotivShell
#              Hacker Terminal Experience
# ============================================================

# ---------- Colors ----------
RESET='\033[0m'
BOLD='\033[1m'
DIM='\033[2m'

CYAN='\033[38;5;51m'
GREEN='\033[38;5;46m'
BLUE='\033[38;5;39m'
PURPLE='\033[38;5;141m'
PINK='\033[38;5;201m'
RED='\033[38;5;196m'
YELLOW='\033[38;5;226m'
WHITE='\033[38;5;255m'
GRAY='\033[38;5;245m'

# ---------- Configuration ----------
QUOTE_FILE="$HOME/motivation/quotes.txt"

# ---------- Random Quote ----------
if [ -f "$QUOTE_FILE" ]; then
    QUOTE=$(shuf -n 1 "$QUOTE_FILE")
else
    QUOTE="Stop waiting. Start executing."
fi

# ---------- Small animation ----------
type_text() {
    local text="$1"
    local delay="$2"

    for ((i=0; i<${#text}; i++)); do
        printf "%s" "${text:$i:1}"
        sleep "$delay"
    done

    printf "\n"
}

# ============================================================
# START
# ============================================================

printf "\n"

printf "${DIM}${GRAY}"
printf "                 [ KAALROX TERMINAL CORE ]\n"
printf "${RESET}"

# ---------- Boot sequence ----------

printf "${CYAN}[+]${RESET} Initializing KAALROX environment"
sleep 0.15
printf " ${GREEN}[OK]${RESET}\n"

printf "${CYAN}[+]${RESET} Loading discipline module"
sleep 0.15
printf " ${GREEN}[OK]${RESET}\n"

printf "${CYAN}[+]${RESET} Loading focus module"
sleep 0.15
printf " ${GREEN}[OK]${RESET}\n"

printf "${CYAN}[+]${RESET} Blocking excuses"
sleep 0.15
printf " ${GREEN}[BLOCKED]${RESET}\n"

printf "${CYAN}[+]${RESET} Establishing motivation channel"
sleep 0.15
printf " ${GREEN}[ONLINE]${RESET}\n"

printf "\n"

# ============================================================
# KAALROX LOGO
# ============================================================

printf "${CYAN}"
printf "    ██╗  ██╗ █████╗  █████╗ ██╗     ██████╗  ██████╗ ██╗  ██╗\n"
printf "    ██║ ██╔╝██╔══██╗██╔══██╗██║    ██╔══██╗██╔═══██╗╚██╗██╔╝\n"
printf "    █████╔╝ ███████║███████║██║    ██████╔╝██║   ██║ ╚███╔╝\n"
printf "    ██╔═██╗ ██╔══██║██╔══██║██║    ██╔══██╗██║   ██║ ██╔██╗\n"
printf "    ██║  ██╗██║  ██║██║  ██║███████╗██████╔╝╚██████╔╝██╔╝ ██╗\n"
printf "    ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝\n"
printf "${RESET}"

printf "\n"

# ============================================================
# HUD
# ============================================================

printf "${CYAN}╭────────────────────────────────────────────────────────────╮${RESET}\n"

printf "${CYAN}│${RESET}  ${GRAY}SYSTEM${RESET}       : ${GREEN}${BOLD}ONLINE${RESET}"
printf "       ${GRAY}THREAT${RESET} : ${RED}${BOLD}MAXIMUM${RESET}              ${CYAN}│${RESET}\n"

printf "${CYAN}│${RESET}  ${GRAY}MODE${RESET}         : ${PURPLE}${BOLD}HUNTER${RESET}"
printf "       ${GRAY}FOCUS${RESET}  : ${GREEN}${BOLD}100%%${RESET}                 ${CYAN}│${RESET}\n"

printf "${CYAN}│${RESET}  ${GRAY}EXCUSES${RESET}      : ${RED}${BOLD}BLOCKED${RESET}"
printf "       ${GRAY}MISSION${RESET}: ${PINK}${BOLD}DOMINATE${RESET}            ${CYAN}│${RESET}\n"

printf "${CYAN}╰────────────────────────────────────────────────────────────╯${RESET}\n"

printf "\n"

# ============================================================
# MOTIVATION
# ============================================================



# ---------- Quote wrapping ----------

printf "%s\n" "$QUOTE" | fold -s -w 54 | while IFS= read -r LINE
do
    printf "          ${WHITE}${BOLD}>>${RESET} ${WHITE}%s${RESET}\n" "$LINE"
done

printf "\n"

printf "${DIM}${GRAY}"
printf "          ──────────────────────────────────────"
printf "${RESET}\n"

# ============================================================
# FINAL MESSAGE
# ============================================================

printf "\n"

printf "          ${RED}${BOLD}[!]${RESET} ${WHITE}STAY HUNGRY.${RESET}\n"
printf "          ${CYAN}${BOLD}[+]${RESET} ${WHITE}KEEP BUILDING.${RESET}\n"
printf "          ${GREEN}${BOLD}[$]${RESET} ${WHITE}GET BETTER EVERY DAY.${RESET}\n"
printf "\n"
