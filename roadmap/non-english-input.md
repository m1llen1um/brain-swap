# Non-English input

## Problem

The user also writes in Bulgarian and Russian. The pack's labels are English words: the template label (`feature:`), the board phrase (`on home`) and the park part labels (`doing`, `next`, `watch out`). How they behave when the rest of the input is in another language is not defined.

## Proposal

Define the behaviour for each label: either the English labels are the only labels and stay valid inside text in any language, or each label has accepted translations. Titles and note parts keep the user's language as typed.

## Open questions

- English labels only, or translated labels too (`следващо:`, `дальше:`)?
- Does an untranslated note get drafted parts in the user's language or in English?
- Does this depend on the [board label](board-label.md) candidate, which removes the free-text board phrase?
