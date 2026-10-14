# Pane metadata

## Problem

A herdr pane gives no sign of which card its session works on. With several panes open, the user has to remember the mapping or open the board to find out.

## Proposal

After a park inside herdr, report the card ID as pane metadata so the herdr pane border shows it:

```
herdr pane report-metadata --source brain-swap <pane> --token card=W-12
```

The jump and the reference store do not depend on it; it is display only.

## Open questions

- Should `/bs-card` and `/bs-link` report the metadata too, or only a park?
- What clears the token when the session is linked to another card, or the card moves to the done column?
- Does the call add a herdr round trip to every park, and is that acceptable given that parking with a valid session makes no herdr call today?
