# Angad's Homebrew tap

Install [Mica](https://github.com/angad/Mica), a native macOS menu bar monitor with
battery health insights and stay-awake controls:

```sh
brew install --cask angad/tap/mica
```

Apple Silicon and Intel, macOS 12.3 or later. This is the project's own tap.
Mica's current preview is ad-hoc signed and not notarized. Homebrew preserves
macOS quarantine; see Mica's README for first-open instructions.

The cask downloads the universal app directly from the project's versioned GitHub
release and verifies its pinned SHA-256. No external package is required for Mac
monitoring. Install `libimobiledevice` separately for optional iPhone/iPad reads.

To update:

```sh
brew update
brew upgrade --cask angad/tap/mica
```

Normal uninstall keeps settings and battery history. Running
`brew uninstall --cask --zap angad/tap/mica` also removes Mica's local history
and preferences.

## Maintaining the cask

Update the version, download URL and SHA-256 together after publishing a release.
For a newly signed/notarized release, remove the preview-signing caveat only after
Apple acceptance and Gatekeeper verification. Do not remove quarantine in a cask.

Validate changes with `brew style angad/tap/mica`,
`brew audit --cask angad/tap/mica` and `brew fetch --cask angad/tap/mica`.
