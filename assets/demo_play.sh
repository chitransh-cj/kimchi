#!/usr/bin/env bash
# Scripted playback of a kimchi grill — for recording a demo GIF.
# Run standalone (record with asciinema/QuickTime) or via assets/demo.tape (VHS).
set -u

# colors
DIM=$'\033[2m'; B=$'\033[1m'; R=$'\033[0m'
CYAN=$'\033[36m'; GREEN=$'\033[32m'; YELLOW=$'\033[33m'; RED=$'\033[31m'

type_out() { # typewriter print
  local s="$1" d="${2:-0.012}"
  for ((i=0; i<${#s}; i++)); do printf '%s' "${s:$i:1}"; sleep "$d"; done
  printf '\n'
}
pause() { sleep "${1:-0.9}"; }

clear
pause 0.4
printf "%s$ %s" "$DIM" "$R"; type_out "/kimchi CF" 0.05
pause 0.6
printf "\n%s🧑‍🚀 Co-founder summoned%s %s— pressure-testing your idea, not applauding it%s\n\n" "$B$CYAN" "$R" "$DIM" "$R"
pause 0.5
type_out "Before features — why does this need to exist?"
type_out "Vibe coders already post apps on X, Reddit, Product Hunt."
type_out "${B}Why does a dedicated app win when the audience is already elsewhere?${R}"
pause 1.1

printf "\n%s› you:%s " "$GREEN" "$R"
type_out "those platforms let you *talk about* apps, not play them. like CrazyGames." 0.02
pause 1.0
printf "\n%s🧑‍🚀%s Good — that's a real wedge. But you smuggled in two products.\n" "$CYAN" "$R"
pause 0.7
type_out "Your v1 is 'creator self-hosts, I embed their app in an iframe.'"
type_out "${B}${YELLOW}A leaderboard needs YOUR scores. An iframe is a sealed box.${R}"
type_out "${RED}So how does a score get from their app into your leaderboard?${R}"
pause 1.3
printf "\n%s› you:%s " "$GREEN" "$R"
type_out "...oh. it can't, unless they integrate my SDK." 0.03
pause 1.0
printf "\n%s🧑‍🚀%s Right. Flag it — the wedge depends on it. ${DIM}(7/10 → keep going)${R}\n" "$CYAN" "$R"
pause 1.4

printf "\n%s$ %s" "$DIM" "$R"; type_out "/kimchi generate" 0.05
pause 0.6
printf "%s✓ docs/product/README.md%s      product + net tracker\n" "$GREEN" "$R"; pause 0.25
printf "%s✓ docs/product/EPIC-1-*.md%s    stories · locked stack · API contracts\n" "$GREEN" "$R"; pause 0.25
printf "%s✓ docs/product/execute.md%s     autonomous build handoff\n" "$GREEN" "$R"; pause 0.25
printf "%s✓ audit gate%s                  before a line of code\n" "$GREEN" "$R"
pause 1.4

printf "\n%s🌶️  kimchi%s  — grills your idea into a plan the AI can actually follow\n" "$B$RED" "$R"
printf "%s   github.com/chitransh-cj/kimchi  ·  Claude Code + Codex%s\n" "$DIM" "$R"
pause 2.5
