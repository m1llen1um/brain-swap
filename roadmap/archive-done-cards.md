# Archive of done cards

## Problem

There is no delete or archive command. A card leaves the board only when its file is deleted by hand, so the done column keeps growing.

## Proposal

An archive command that moves done cards out of the board view into an archive folder inside the board folder. Archived cards keep their IDs, so no number is reused.

## Open questions

- Archive by hand (one card, or all of the done column), or automatically after a number of days in the done column?
- Where does the archive live: a subfolder of the board (the board scan skips subfolders today) or a separate folder in the config?
- Can a card be restored from the archive, and does `show` find archived cards?
