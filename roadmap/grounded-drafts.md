# Drafts without invented facts

## Problem

When Claude drafts note parts, it fills gaps with plausible text. In a session with no real work it fills Watch out from the rules in the user's global `CLAUDE.md`. It also infers facts from single words: "rerun" became "the test already ran once". A note that states something false is worse than a short one, since the user trusts it on return.

## Proposal

Draft only from what the conversation shows. A part the conversation does not support is written as `nothing` or `unknown`.

## Open questions

- `nothing` and `unknown` mean different things (no trap versus no information). Which one for each part?
- Should a draft from an empty conversation be saved at all, or should `/bs-park` and `/bs-back` say there is nothing to park?
- How is this tested, given that the draft comes from the model and not from the CLI?
