# homebrew-tap

Personal Homebrew tap for [@hibeekaey](https://github.com/hibeekaey)'s tools.

```sh
brew install hibeekaey/tap/agent-sync
```

Upgrading: Homebrew refreshes taps only once per `HOMEBREW_AUTO_UPDATE_SECS`
(24 hours by default), so a release published moments ago can report as
"not outdated". Fetch the tap first:

```sh
brew update && brew upgrade agent-sync
```

| Formula | Tool |
| --- | --- |
| `agent-sync` | [agent-sync](https://github.com/hibeekaey/agent-sync): one memory, every AI coding agent |

Formula versions are bumped automatically by each tool's release workflow;
nothing here is edited by hand. The formula pins the release tarball's
sha256, and the source repository publishes immutable releases, so a given
version cannot change after the fact.
