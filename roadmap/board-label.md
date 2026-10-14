# Board label for /bs-card

## Problem

`/bs-card` chooses the board from free text: a trailing `on home` or `on personal`. That is fragile. "fix config on home server" is a work task, yet reads as a board phrase. A task typed in Bulgarian or Russian has no English board phrase at all.

## Proposal

An explicit board label, written like the template label: `/bs-card home: renew the car insurance`. Work (the default board) stays the default and the board label is optional. Free text such as `on home` does not choose a board.

## Open questions

- How do a board label and a template label combine: `home: bug: ...`, or a fixed order?
- What if a board and a template share a name?
- Should the `on <board>` phrase keep working alongside the label?
