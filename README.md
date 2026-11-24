# jespada/homebrew-tap

Personal Homebrew tap.

```sh
brew trust --cask jespada/tap/tapzap   # Homebrew refuses casks from untrusted taps
brew install --cask jespada/tap/tapzap
```

| Cask | App | Notes |
|------|-----|-------|
| `tapzap` | [TapZap](https://tapzap.app) (`Tap ZAP.app`) | Paid: enter the license key in the app. `version :latest` always fetches the newest signed, notarized DMG; reinstall (or `brew upgrade --greedy`) to update. |
