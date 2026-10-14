# Notes from the TUI

## Problem

The TUI cannot write a switch note. Without an agent pack, the user parks from a shell with `brain-swap park --card <ID>`, which means leaving the board.

## Proposal

A configurable key in the TUI that prompts for Doing, Next and Watch out and appends the note to the selected card, as `park` does.

## Open questions

- What place does a note written from the TUI record? The TUI often runs in a herdr popup, so its pane and working directory are not those of the session being parked.
- A three-field prompt is close to an in-TUI form editor, which is excluded today. Is a prompt per part enough?
