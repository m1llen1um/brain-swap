# Clipboard on jump fallback

## Problem

When the jump cannot focus a pane (outside herdr, no pane recorded, pane closed, herdr not responding), it shows the working directory of the note. The user then has to select and copy that path by hand to open a session there.

## Proposal

In that fallback, Enter also copies the working directory to the clipboard, and the message says so.

## Open questions

- Is showing the working directory enough in practice, so this is not needed?
- How is the clipboard reached without a new crate: an OSC 52 escape sequence, or a call to `wl-copy` or `xclip`?
- Should `jump` on the CLI copy too, or only the TUI?
