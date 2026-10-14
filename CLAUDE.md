# brain-swap

Keyboard-first terminal kanban in Rust whose real product is the per-card switch note that cuts the cost of returning to a parked AI session.

## Documents

- `idea.md`: the idea (problem, principles, user flows, scale, boundaries). It is the seed, not a contract.
- `PRD.md` and `TECHSPEC.md`: the contracts. Where they disagree with `idea.md`, they win; neither may contradict the user flows in `idea.md` without the user's explicit decision.
- `roadmap/`: feature candidates, none scheduled. A candidate becomes work by updating `idea.md`, `PRD.md` and `TECHSPEC.md`.
- `docs/usage.md`: the user guide. `docs/metrics.md`: how the PRD success metrics are measured.

## Principles (resolve priority disputes with these)

1. The re-entry cue comes before the board.
2. Parking and returning cost almost nothing: one command, zero picks on the common path.
3. Plain markdown and a tool-agnostic core: Claude Code and herdr are optional adapters that use only the public CLI.
4. Keyboard first, every binding configurable.

## Environment

- The terminal multiplexer is herdr (`herdr --help`), not tmux. Do not design for tmux.
- Claude Code commands shipped by this repo use the `bs-` prefix.

## Stack

Rust, `ratatui` for the TUI, one binary serving as both TUI and CLI. Crates are fixed by TECHSPEC section 13; adding one means editing that document first.

## Checking a change

`scripts/gate.sh` runs the dash check, `cargo fmt --check`, `cargo clippy --all-targets -- -D warnings` and `cargo test --all-features`; it must print `gate: ok`.

## Writing rules

- No em dash (U+2014) or en dash (U+2013) anywhere: docs, comments, commit messages. Use a comma, colon, parentheses or a hyphen.
- Commit messages describe the change and why. They never mention an AI model, tool or session.
- Live files state only the current design and behaviour. History belongs in git.
