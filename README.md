# Homebrew casks for various apps
## How do I install these casks?
`brew tap gmerlino/casks` and then `brew install <cask>`.

Or install via URL (which will not receive updates):

```
brew install https://raw.githubusercontent.com/gmerlino/homebrew-casks/master/<cask>.rb
```

## Documentation
`brew help`, `man brew` or check [Homebrew's documentation](https://github.com/Homebrew/brew/tree/master/share/doc/homebrew#readme).

## Ebook and Jupyter Quick Look extensions

```sh
brew install --cask gmerlino/casks/ebookql
brew install --cask gmerlino/casks/qljupyter
```

| Cask | Upstream release | Requirements | Preview support |
| --- | --- | --- | --- |
| `ebookql` | 0.7.4 | macOS 14+, Intel or Apple Silicon | EPUB, MOBI/AZW, FB2, DjVu, comics; optional CHM and Markdown |
| `qljupyter` | 1.0.0 | macOS 13+, Apple Silicon only | Jupyter notebook Markdown, code and saved outputs |

These casks install the upstream release binaries, with pinned SHA-256 checksums.
They do not compile the apps, re-sign them, remove quarantine, launch them, or
change Quick Look preferences. Both upstream apps are ad-hoc signed and not
notarized: a successful Homebrew installation does not imply Gatekeeper approval.
If macOS blocks the app, review it in System Settings > Privacy & Security.
Do not disable Gatekeeper globally.

After opening each app once, check its extensions under System Settings >
General > Login Items & Extensions > Quick Look. EBookQL's Markdown support
may overlap QLMarkdown or dotViewer; leave it disabled when another extension
already handles Markdown. QLJupyter can overlap Glance or source-code previewers.
Validate the selected handler with actual files in Finder using the Space bar.

A useful acceptance check is an EPUB and a MOBI with a cover and chapter text,
plus an `.ipynb` containing a Markdown cell, code, and a saved plot. Check both
Finder preview and thumbnails where supported. The cask packaging checks do not
establish that Finder has selected these extensions.

Normal uninstall preserves preferences, reading history and extension state;
no `zap` cleanup is defined. These personal-tap packages are not submissions to
Homebrew's official cask repository.

Upstream sources: [EBookQL](https://github.com/rocaltair/EBookQL) and
[QLJupyter](https://github.com/Yike-Ye/QLJupyter), both MIT licensed (bundled
third-party components retain their own licenses).
