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

## Gegenproben mit frischen Aufgaben

Nach fünf Durchläufen mit denselben 100 Aufgaben bestand die Gefahr, dass die Regeln nur noch auf diese Aufgaben passen. Deshalb gab es zwei Gegenproben mit jeweils 100 neuen Aufgaben aus anderen Branchen. Beide Testsätze enthalten absichtlich eingebaute Fehler wie falsche Wochentage, falsche Rechnungen und heikle Bitten.

| Urteil über 100 Aufgaben | Gegentest (`gegentest`) | Testsatz 3, erster Lauf | Testsatz 3, zweiter Lauf |
|---|---|---|---|
| Mit themis besser | 32 | 43 | 60 |
| Ohne themis besser | 18 | 12 | 9 |
| Gleich | 50 | 45 | 31 |

Der Gegentest lief mit der Fassung nach dem fünften Durchlauf und zeigte, dass kurze Texte in Oberflächen zu viele Angaben verloren. Nach fünf Korrekturen lief Testsatz 3. Danach kamen drei weitere Korrekturen hinzu: Texte an Kunden sind höflicher. Claude ergänzt Fachwissen eines Praktikers. Konzeptpapiere enthalten Vorschläge statt offener Fragen. Der zweite Lauf von Testsatz 3 prüft diese Fassung. Weil Testsatz 3 dabei zum zweiten Mal verwendet wurde, ist sein Ergebnis etwas weniger unabhängig als das des ersten Laufs.

Bei den eingebauten Fehlern hat Claude mit themis in Testsatz 3 alle 18 bemerkt und dem Auftraggeber genannt. In einem Fall hat es den Brief trotzdem an die falsche Summe angepasst. Ohne themis hat Claude die meisten ebenfalls bemerkt, aber oft still korrigiert oder den Fehler im Text stehen lassen.

## Englische Texte

Der Abschnitt „Englische Texte“ in `RULES.md` wurde gegen die vorige Fassung getestet, die für Englisch nur einen allgemeinen Satz enthielt. Beide Fassungen schrieben dieselben Aufgaben, ein Prüfer verglich sie blind.

| Urteil | 12 sachliche Aufgaben (`englisch/aufgaben.md`, ohne die zwei Vortragsentwürfe) | 6 Aufgaben mit eigenen Ideen des Autors |
|---|---|---|
| Neue Fassung besser | 8 | 5 |
| Vorige Fassung besser | 3 | 1 |
| Gleich | 1 | 0 |

Die Aufgaben mit eigenen Ideen geben Titel, Bilder und Thesen vor, etwa einen Vortragstitel mit Wortspiel. In ihnen entstehen die meisten Muster, weil das Modell ein vorgegebenes Bild gern über den ganzen Text weiterführt. Diese Aufgaben enthalten unveröffentlichte Entwürfe und liegen deshalb nicht im Repository.



### Vollständiger Abgleich mit den Quellen

Nach dem vollständigen Abgleich mit den drei Quellen lief die erweiterte Fassung gegen die vorige. Die ersten zwei Läufe verlor sie auf Englisch deutlich. Danach wurden die Teile einzeln getestet und vier Sätze umformuliert.

| Lauf auf Englisch | Erweiterte Fassung besser | Vorige Fassung besser | Gleich |
|---|---|---|---|
| Erster Einbau | 5 | 13 | 0 |
| Nach Korrektur gegen das Kürzen | 1 | 14 | 3 |
| Nur die erweiterte englische Tabelle | 6 | 6 | 6 |
| Alles außer der englischen Tabelle | 5 | 13 | 0 |
| Endfassung | 7 | 9 | 2 |

Auf Deutsch lag die erweiterte Fassung mit 13 Aufgaben aus `testsatz-3/aufgaben-m1.md` bei 6 zu 4, drei Aufgaben waren gleich. Beide Fassungen fanden die eingebauten Fehler. Die Endfassung liegt auf Englisch im Rahmen der Schwankung zwischen zwei Läufen und deckt dafür alle Muster der Quellen ab.

### Gestraffte Fassung

Ein Versuch legte die deutsche und die englische Tabelle zu einer Tabelle zusammen und entfernte doppelte Regeln. Die Datei wurde dadurch um 13 Prozent kürzer, ohne dass ein Beispiel fehlte. Im blinden Vergleich gegen die Fassung mit zwei Tabellen verlor sie auf Englisch 2 zu 13 bei 3 Unentschieden. Auf Deutsch lag sie bei 4 zu 4 bei 5 Unentschieden, übernahm aber in einer Mahnung einen falschen Betrag aus der Aufgabe. Der Versuch wurde verworfen. Die eigene englische Tabelle bleibt deshalb bestehen, weil die Regeln nur mit ihr auf englische Texte wirken.

