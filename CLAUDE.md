# brain-swap

Keyboard-first terminal kanban in Rust whose real product is the per-card switch note that cuts the cost of returning to a parked AI session.

## Documents

- `README.md`: what brain-swap is, why it helps, install and cheat sheet.
- `docs/usage.md`: the user guide.
- `roadmap/`: feature candidates, none scheduled.

## Principles (resolve priority disputes with these)

1. The re-entry cue comes before the board.
2. Parking and returning cost almost nothing: one command, zero picks on the common path.
3. Plain markdown and a tool-agnostic core: Claude Code and herdr are optional adapters that use only the public CLI.
4. Keyboard first, every binding configurable.

## Environment

- The terminal multiplexer is herdr (`herdr --help`), not tmux. Do not design for tmux.
- Claude Code commands shipped by this repo use the `bs-` prefix.

## Stack

Rust, `ratatui` for the TUI, one binary serving as both TUI and CLI.

## Checking a change

`scripts/gate.sh` runs the dash check, `cargo fmt --check`, `cargo clippy --all-targets -- -D warnings` and `cargo test --all-features`; it must print `gate: ok`.

## Writing rules

- No em dash (U+2014) or en dash (U+2013) anywhere: docs, comments, commit messages. Use a comma, colon, parentheses or a hyphen.
- Commit messages describe the change and why. They never mention an AI model, tool or session.
- Live files state only the current design and behaviour. History belongs in git.
