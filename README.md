# themis

themis gibt Claude Code bei jedem Start gemeinsame Regeln für Texte, Code und Oberflächen mit. Claude schreibt damit ohne die Muster, an denen man Ausgaben von Sprachmodellen erkennt. Die Regeln stehen in [RULES.md](RULES.md).

<table>
<tr><th>Ohne themis</th><th>Mit themis</th></tr>
<tr>
<td valign="top"><a href="docs/vergleich/anschauung/ohne-themis-ganz.jpg"><img src="docs/vergleich/anschauung/ohne-themis.png" alt="Landingpage im typischen Stil generierter Seiten" width="420"></a></td>
<td valign="top"><a href="docs/vergleich/anschauung/mit-themis-ganz.jpg"><img src="docs/vergleich/anschauung/mit-themis.png" alt="Landingpage nach den Regeln von themis" width="420"></a></td>
</tr>
</table>

Die linke Seite ist gestellt. Claude hat sie absichtlich so gebaut, wie Generatoren ohne Vorgaben eine SaaS-Seite bauen. Die rechte Seite hat Claude nach RULES.md gebaut. Ein Klick auf ein Bild öffnet die ganze Seite. Einen echten Durchlauf ohne Inszenierung findest du in [docs/vergleich](docs/vergleich).

## Beispiele

Die Beispiele stammen aus einem Test mit 100 Aufgaben aus allen Textsorten vom 23. November 2026. Claude hat jede Aufgabe einmal ohne und einmal mit RULES.md bearbeitet. Eine zweite Claude-Instanz hat danach beide Fassungen verglichen. In einer Gegenprobe mit 100 frischen Aufgaben war der Text mit der aktuellen Fassung in 43 Aufgaben besser, in 12 schlechter und in 45 gleich gut. Die Beispiele unten stammen aus einem früheren Durchlauf. Aufgaben, Prüfanleitung und Ergebnisse stehen in [docs/test](docs/test).

Hier stehen vier typische Aufgaben. Die Texte sind unverändert.

<details>
<summary>Antwort im Chat: Warum lädt die Seite auf dem Handy langsam?</summary>

**Ohne themis**

> Der Grund ist das große Bild oben auf der Startseite. Es ist 4,2 MB groß, und auf dem Handy dauert es lange, bis es geladen ist. Ohne dieses Bild lädt die Seite in 1,1 statt in 6,8 Sekunden. Die übrigen Bilder sind klein und machen keinen nennenswerten Unterschied.
>
> So bekommen Sie das Bild klein:
>
> - Speichern Sie es als WebP oder AVIF statt als JPG oder PNG. Damit sinkt die Dateigröße meist auf einen Bruchteil.
> - Verkleinern Sie es auf die Größe, in der es angezeigt wird. Für Handys reichen etwa 800 bis 1.200 Pixel Breite.
> - Bieten Sie mit `srcset` mehrere Größen an, damit Handys die kleine und große Bildschirme die große Version laden.
>
> Ziel sind unter 200 KB. Dann sollte die Startseite auf dem Handy wieder etwa so schnell laden wie ohne das Bild.

**Mit themis**

> Das Hero-Bild auf der Startseite macht die Seite langsam. Es ist 4,2 MB groß. Ohne das Bild lädt die Startseite in 1,1 statt 6,8 Sekunden. Die übrigen Bilder sind klein und fallen bei der Ladezeit kaum ins Gewicht.
>
> Auf dem Handy fällt das stärker auf, weil mobile Verbindungen meist langsamer sind und das Telefon das Bild trotzdem in voller Größe lädt. Du kannst das Bild verkleinern und als WebP oder AVIF speichern. Für ein Hero-Bild in Bildschirmbreite reichen in der Regel 150 bis 300 KB. Mit `srcset` bekommt das Handy außerdem eine kleinere Fassung als der Desktop:
>
> ```html
> <img src="hero-1600.webp"
>      srcset="hero-800.webp 800w, hero-1600.webp 1600w"
>      sizes="100vw"
>      alt="Beschreibung des Bildes"
>      fetchpriority="high">
> ```
>
> Setz beim Hero-Bild kein `loading="lazy"`, weil es gleich beim Öffnen sichtbar ist und sonst später lädt.
>
> Soll ich das Bild umwandeln und die Einbindung anpassen? Danach messe ich die Ladezeit noch einmal.

</details>

<details>
<summary>Confluence-Seite: Umstieg auf Clockify</summary>

**Ohne themis**

> **Zeiterfassung: Wir wechseln von Excel zu Clockify**
>
> Ab dem 1. Januar erfassen wir unsere Arbeitszeiten nicht mehr in Excel, sondern in Clockify.
>
> Der Grund ist einfach: Jeden Monat gehen rund 6 Stunden dafür drauf, die einzelnen Excel-Dateien zusammenzuführen. In Clockify landen alle Zeiten an einem Ort, die Zusammenführung fällt weg.
>
> Damit der Umstieg reibungslos klappt, gibt es am 15. Dezember eine Schulung. Dort zeigen wir, wie ihr Zeiten bucht, Projekte zuordnet und eure Einträge prüft. Bitte haltet euch den Termin frei.
>
> Bis zum 31. Dezember gilt weiter die bisherige Excel-Erfassung. Auf dieser Seite findet ihr alles Wichtige zum Wechsel: den Zeitplan, die Schulung und Antworten auf häufige Fragen.

**Mit themis**

> ### Zeiterfassung mit Clockify ab 1. Januar
>
> Ab dem 1. Januar erfassen wir unsere Arbeitszeiten in Clockify statt in Excel. Bisher kostet uns das Zusammenführen der einzelnen Excel-Dateien jeden Monat etwa 6 Stunden. In Clockify liegen alle Zeiten an einer Stelle, deshalb fällt dieser Schritt weg.
>
> Bis zum 31. Dezember tragt ihr eure Zeiten wie gewohnt in Excel ein. Am 15. Dezember zeigen wir euch Clockify in einer Schulung. Bitte plant euch den Termin ein.

</details>

<details>
<summary>Leerer Zustand in einer Anwendung</summary>

**Ohne themis**

> **Noch keine gespeicherten Suchen**
>
> Speichern Sie eine Suche, um sie später mit einem Klick wieder aufzurufen. Klicken Sie dazu auf der Ergebnisseite auf „Suche speichern“.

**Mit themis**

> **Noch keine gespeicherten Suchen**
>
> Speichern Sie eine Suche, damit Sie sie später mit einem Klick wieder aufrufen können. Starten Sie dazu eine Suche und wählen Sie auf der Ergebnisseite „Suche speichern“.
>
> Schaltfläche: **Suche starten**

</details>

<details>
<summary>Python-Funktion zum Filtern von Ausschreibungen</summary>

**Ohne themis**

> ```python
> import json
> from pathlib import Path
>
>
> def ausschreibungen_ueber_wert(pfad, schwellenwert):
>     """Liest Ausschreibungen aus einer JSON-Datei und gibt die zurück,
>     deren Feld "wert" über dem Schwellenwert liegt.
>
>     Einträge ohne Feld "wert" oder mit einem Wert, der keine Zahl ist,
>     werden übersprungen.
>     """
>     with Path(pfad).open(encoding="utf-8") as datei:
>         eintraege = json.load(datei)
>
>     treffer = []
>     for eintrag in eintraege:
>         wert = eintrag.get("wert")
>         if isinstance(wert, bool) or not isinstance(wert, (int, float)):
>             continue
>         if wert > schwellenwert:
>             treffer.append(eintrag)
>     return treffer
> ```

**Mit themis**

> ```python
> import json
> from pathlib import Path
>
>
> def tenders_above(path: str | Path, threshold: float) -> list[dict]:
>     with open(path, encoding="utf-8") as f:
>         tenders = json.load(f)
>     return [t for t in tenders if "wert" in t and t["wert"] > threshold]
> ```

</details>


## Installation

Du brauchst Claude Code, Python 3 und die GitHub CLI mit Anmeldung.

```bash
gh repo clone marin-niehues/themis ~/themis
~/themis/install.sh
```

Das Skript trägt themis in deine Einstellungen von Claude Code ein. Die Regeln gelten ab der nächsten Session. Der Ordner `~/themis` bleibt danach auf deinem Rechner, weil Claude Code das Startskript von dort aufruft.

## Wie es funktioniert

Beim Start einer Session holt ein kleines Skript die aktuelle Fassung von RULES.md und gibt sie Claude mit. Neue Regeln kommen damit automatisch bei dir an. Ohne Netz verwendet das Skript die zuletzt geladene Fassung.

## Entfernen

```bash
~/themis/uninstall.sh
rm -rf ~/themis
```

Das Skript nimmt themis aus deinen Einstellungen und löscht die zwischengespeicherte Kopie der Regeln.

Die Herleitung der Regeln mit allen Quellen steht in [docs/katalog.md](docs/katalog.md).
