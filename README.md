# Earnote über Homebrew

Eigener Tap für [Earnote](https://github.com/louiskl/Earnote) – die Mac-App, die Vorlesungen, Meetings
und Calls aufnimmt, lokal transkribiert und daraus Notizen schreibt.

```bash
brew install --cask louiskl/earnote/earnote
```

Aktualisieren:

```bash
brew upgrade --cask earnote
```

Wieder entfernen – mit `--zap` verschwinden auch Aufnahmen, Notizen und Einstellungen:

```bash
brew uninstall --cask earnote
brew uninstall --zap --cask earnote
```

## Warum ein eigener Tap?

Der offizielle `homebrew-cask` nimmt neue Programme erst ab einer gewissen Bekanntheit auf
(bei einer Einreichung durch die Entwicklerin oder den Entwickler selbst: 225 Sterne, 90 Forks
oder 90 Watcher, und das Repository muss mindestens 30 Tage alt sein). Bis dahin liegt der Cask hier.

## Voraussetzungen

macOS 15 oder neuer auf Apple Silicon. Die App ist mit einer Apple Developer ID signiert und notarisiert.
