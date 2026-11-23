# Testsatz

Mit diesem Testsatz lässt sich prüfen, ob eine Änderung an `RULES.md` die Texte besser macht. Er besteht aus 100 Aufgaben aus allen Textsorten, einer Anleitung für die inhaltliche Prüfung und einem Skript für die automatische Prüfung.

Jede Aufgabe läuft einmal mit und einmal ohne `RULES.md`. Die Ergebnisse kommen in einen Ordner, eine Datei pro Aufgabendatei und Fassung, etwa `a-mit.md` und `a-ohne.md`. Jede Aufgabe beginnt dort mit einer Überschrift wie `## A1`.

Das Skript zählt die Muster aus der Tabelle „Formulierungen“:

```bash
python3 docs/test/pruefen.py <ordner-mit-ergebnissen>
```

Die inhaltliche Prüfung übernimmt Claude nach `pruefanleitung.md`. Sie vergleicht beide Fassungen und urteilt pro Aufgabe, welche besser ist.

## Ergebnisse vom 23. November 2026

| Urteil über 100 Aufgaben | 1. Durchlauf | 2. Durchlauf | 3. Durchlauf | 4. Durchlauf | 5. Durchlauf |
|---|---|---|---|---|---|
| Mit themis besser | 31 | 38 | 37 | 45 | 47 |
| Ohne themis besser | 32 | 24 | 20 | 18 | 11 |
| Gleich | 37 | 38 | 43 | 37 | 42 |

Zwischen den Durchläufen wurde `RULES.md` geändert. Jede Aufgabe lief einmal pro Durchlauf, Unterschiede von wenigen Aufgaben sind deshalb Zufall.
