#!/bin/bash

QUOTE=$(shuf -n 1 "$HOME/motivation/quotes.txt")

printf '\n'
printf '╔══════════════════════════════════════════════╗\n'
printf '║  %s\n' "$QUOTE"
printf '╚══════════════════════════════════════════════╝\n'
printf '\n'
