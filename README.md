# CodeSense Homebrew tap

The official [Homebrew](https://brew.sh) tap for [CodeSense](https://codesense.ai), a Mac app that runs
your team of Claude Code, Codex and OpenCode agents across every repo, all in your own git.

## Install

```sh
brew install --cask codesensehq/tap/codesense
```

CodeSense needs a Mac with Apple Silicon.

## Updates

CodeSense updates itself, so `brew upgrade` skips it unless you pass `--greedy`. Both ways install the
same signed and notarized build from `dl.codesense.ai`.

## Uninstall

```sh
brew uninstall --cask codesense
```

`--zap` also removes CodeSense's settings, logs and caches: the `ai.codesense` folders and
preferences in `~/Library`. It leaves `~/.codesense` in place, because it holds CodeSense's local copies
of your context repositories and their worktrees, which may hold unpushed changes. Remove it by hand
once you have pushed anything you want to keep. Your own repos, and the story worktrees beside them,
are never removed.

```sh
brew uninstall --zap --cask codesense
```

## Links

- Download and release notes: https://codesense.ai/download/
- Docs: https://codesense.ai/docs/
- Source and issues: https://github.com/codesensehq/codesense
