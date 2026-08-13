# allwefantasy/homebrew-tap

Personal Homebrew tap for tools published by [allwefantasy](https://github.com/allwefantasy).

## agent-browser

Install:

```bash
brew tap allwefantasy/tap
brew install agent-browser
```

Verify:

```bash
agent-browser --help
agent-browser daemon status
```

Source repository: [allwefantasy/agent-browser](https://github.com/allwefantasy/agent-browser) (may be private). Release binaries for this formula are attached to tags under this public tap so `brew install` does not require GitHub authentication.

## sparse-agent-setup

Install:

```bash
brew tap allwefantasy/tap
brew install sparse-agent-setup
```

Verify:

```bash
sparse-agent-setup --version
sparse-agent-setup --status
```

Then run the bootstrap agent:

```bash
sparse-agent-setup
```

`sparse-agent-setup` is a small Go bootstrap agent that installs or repairs a
local Python + Auto-Coder environment and verifies that every console script
declared by the package (`auto-coder.run`, `auto-coder.chat.lite`, ...) is on
`PATH` and runnable. On first run, if `~/.auto-coder/keys/models.json` does not
exist, it asks for a DeepSeek API key using hidden terminal input.

Release binaries for this formula are attached to tags under this public tap so
`brew install` does not require GitHub authentication.
