# Homebrew Tap

Custom Homebrew formulae by [atvirokodosprendimai](https://github.com/atvirokodosprendimai).

## Installation

```bash
brew tap atvirokodosprendimai/tap
```

## Formulae

### wgmesh

WireGuard mesh network builder — decentralized peer discovery and encrypted networking.

```bash
brew install atvirokodosprendimai/tap/wgmesh
```

**Supported platforms:** macOS (Apple Silicon, Intel) and Linux (arm64, amd64).

#### Usage

```bash
# Show version
wgmesh version

# See available commands
wgmesh --help
```

For full documentation, see the [wgmesh repository](https://github.com/atvirokodosprendimai/wgmesh).

### mrw

Multi-path read and write — one call reads many ranges across many files; one call applies many edits, all-or-nothing.

```bash
brew install atvirokodosprendimai/tap/mrw
```

**Supported platforms:** macOS (Apple Silicon, Intel) and Linux (arm64, amd64), from the prebuilt release archives.

Formula maintenance: `Formula/mrw.rb` is **generated at release time by mrw's CI** (`.github/workflows/brew-tap.yml` in [tool-multipathreadwrite](https://github.com/atvirokodosprendimai/tool-multipathreadwrite)) and carries a DO NOT EDIT header. Update docs: see [UPDATE.md](https://github.com/atvirokodosprendimai/tool-multipathreadwrite/blob/main/UPDATE.md).

## Updating

```bash
brew update
brew upgrade wgmesh
```

## Uninstalling

```bash
brew uninstall wgmesh
brew untap atvirokodosprendimai/tap
```
