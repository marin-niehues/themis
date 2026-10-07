# themis

Gemeinsame Schreib- und Arbeitsregeln für Claude Code, als Plugin.

Die Regeln stehen in `RULES.md` und werden bei jedem Start einer Session aktuell aus diesem Repo geholt. Sie liegen nicht dauerhaft auf deinem Rechner. Ändert sich die Datei, gilt die neue Fassung ab deiner nächsten Session.

## Installation

Voraussetzungen: Claude Code, GitHub CLI (`gh`) angemeldet, Lesezugriff auf dieses Repo.

```
gh auth status
```

Falls nicht angemeldet: `gh auth login`.

Dann in Claude Code:

```
/plugin marketplace add marin-niehues/themis
/plugin install themis@niehues
```

Fertig. Neue Session starten, die Regeln sind drin.

## Verhalten

| Zustand | Verhalten |
|---|---|
| RULES.md erreichbar | Regeln gelten, Kopie im Cache |
| RULES.md leer, gelöscht, Repo weg oder kein Zugriff | Keine Regeln, Cache wird gelöscht |
| Kein Netz | Letzter Stand aus dem Cache |
| gh nicht angemeldet | Letzter Stand aus dem Cache, Hinweis in stderr |

Cache: `~/.cache/themis/rules.md`

## Deinstallation

```
/plugin uninstall themis@niehues
/plugin marketplace remove niehues
```

Optional den Cache löschen:

```
rm -rf ~/.cache/themis
```

Danach ist nichts mehr da.

## Für den Betreiber

Die Herleitung der Regeln mit Quellen steht in `docs/katalog.md`.


- **Regeln ändern:** `RULES.md` bearbeiten und auf `main` pushen. Gilt ab der nächsten Session aller Nutzer. Kein Versionsbump nötig.
- **Regeln abschalten:** `RULES.md` leeren oder löschen. Oder das Repo privat halten und einzelnen Personen den Zugriff entziehen.
- **Plugin selbst ändern:** Version in `themis/.claude-plugin/plugin.json` erhöhen und pushen. Nutzer bekommen das Update über `/plugin marketplace update niehues` oder automatisch, wenn sie Auto-Update für den Marketplace eingeschaltet haben.
- **Abruf von Hand prüfen:**

```
bash themis/scripts/fetch-rules.sh
```
