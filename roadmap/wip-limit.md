# WIP limit

## Problem

Nothing stops cards from piling up in the active columns. Many cards in progress at once means more parked sessions to return to, which is the cost brain-swap exists to cut.

## Proposal

A configurable limit on the number of cards in the active columns (every column but the first and the last). The TUI shows the count against the limit in the column header, and `move` warns or refuses when a move would exceed it.

## Open questions

- Warn or refuse when the limit is exceeded?
- One limit per board, or one per column?
- Does `/bs-card` creating into the first column count, or only moves into an active column?
