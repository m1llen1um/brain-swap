# Other agent packs

## Problem

Only Claude Code has a command pack. A user running other coding agents (Codex, Aider and others) parks and returns from the shell, without drafted notes or the picker.

## Proposal

A pack per agent, each a folder under `pack/`, built only on the public CLI subcommands of TECHSPEC section 6, as the Claude Code pack is. The rule that adapters use only the public CLI (TECHSPEC 2.2) already keeps the core unchanged.

## Open questions

- Which agent first, and does it support render-time shell commands like the Claude Code skills, or does every call go through its tool calls?
- How does the agent pass a session ID, and does it have one at all?
- Does `brain-swap install` grow one subcommand per agent?
