#!/usr/bin/env bash
# Seeds the demo board the README GIF is recorded on: cards with notes parked minutes to a
# day ago. Add the folder to config.toml as a board named demo, letter D.
# Usage: docs/demo/setup.sh <board folder>
set -euo pipefail
board=$1
mkdir -p "$board"

ago() { date --iso-8601=seconds -d "-$1"; }

cat > "$board/board.md" <<MD
---
letter: D
columns: Todo, Doing, Done
next: 15
---
# demo
MD

# card <id> <column> <template> <title> <created ago>, then optional notes:
# note <ago> <doing> <next> <watch out>
card() {
  file=$board/$1.md
  printf -- '---\ncolumn: %s\ntemplate: %s\ncreated: %s\n---\n# %s\n\n## Timeline\n' \
    "$2" "$3" "$(ago "$5")" "$4" > "$file"
}
note() {
  printf '\n### %s\n- Doing: %s\n- Next: %s\n- Watch out: %s\n<!-- where: cwd=%s -->\n' \
    "$(ago "$2")" "$3" "$4" "$5" "$HOME/src/shop" >> "$board/$1.md"
}

card D-14 Todo Feature "export the board as CSV" "20 min"
card D-13 Todo Bug "flaky login test on CI" "2 hours"

card D-12 Doing Feature "migrate invoices to v13" "3 hours"
note D-12 "2 hours" "switched InvoiceRepository to v13, unit tests green" \
  "rerun the migration test against staging" "v13 needs a 10 s timeout, the default is 2 s"
note D-12 "12 min" "migration test passes on staging" \
  "open the PR, ask for the v13 deploy" "nothing new"

card D-11 Doing Feature "rate limiter for the public API" "5 hours"
note D-11 "34 min" "token bucket in place, Redis script loads" \
  "load test with 200 rps" "the bucket key must include the tenant"

card D-9 Doing Research "pick a PDF renderer" "1 day"
note D-9 "1 hour" "compared three crates, typst output looks best" \
  "check font licences" "binary size grows by 8 MB"

card D-7 Done Bug "login redirect loops" "2 days"
note D-7 "1 day" "fixed the cookie path, released" "nothing" "nothing"

