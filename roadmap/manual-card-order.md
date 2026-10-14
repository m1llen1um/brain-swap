# Manual card order

## Problem

Within a column, cards are ordered by newest activity (latest note, else creation time). The user cannot put a card at the top on purpose, for example the next one to start in Todo.

## Proposal

A stored card order within a column that overrides the activity order, set with keys in the TUI.

## Open questions

- Where is the order stored? A list in `board.md` changes a shared file on every reorder, while today a move or park never rewrites another card.
- Does a park still lift its card to the top, or does a manual order win until the user changes it?
- How do hand-made cards and cards moved in from another column enter the stored order?
