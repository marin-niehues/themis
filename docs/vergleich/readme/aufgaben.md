# Aufgaben für die README-Beispiele

Gib zu jeder Aufgabe nur den verlangten Text aus, ohne Kommentar.

## R1
Antworte als Claude Code im Chat einem Entwickler, der fragt: „Warum ist das Deployment gerade fehlgeschlagen?“ Du hast nachgesehen: Der Build ist durchgelaufen, aber der Health-Check nach dem Start ist dreimal mit Zeitüberschreitung fehlgeschlagen. Ursache: Die neue Umgebungsvariable DATABASE_URL fehlt in der Produktionsumgebung, deshalb wartet der Dienst beim Start 30 Sekunden auf die Datenbank und bricht ab. In Staging ist sie gesetzt. Du hast noch nichts geändert.

## R2
E-Mail der Rösterei Kornfeld (Inhaber Paul Engel) an das Café Lindgrün, Ansprechpartnerin Frau Sara Brandt. Die bestellten 10 kg Espressobohnen kommen nicht am Freitag, sondern erst am Dienstag, weil die Röstmaschine repariert werden muss. Als Ausgleich legt die Rösterei 1 kg Filterkaffee kostenlos bei.

## R3
LinkedIn post in English by an independent consultant. Idea: AI pilots stall because nobody owns the data they need. In three of the last five companies the consultant worked with, that was the reason. About 120 words.

## R4
Write a commit message (English) for this change: the CSV export crashed with a UnicodeEncodeError when a customer name contained an emoji, because the file was opened with the system default encoding. The fix opens the file with encoding="utf-8" and adds a test with an emoji in the name.

## R5
Text für den leeren Zustand einer Liste „Gespeicherte Berichte“ in einer Anwendung für Teamleiter: Überschrift, ein bis zwei Sätze, Beschriftung der Schaltfläche. Berichte speichert man, indem man in der Berichtsansicht auf „Speichern“ klickt.

## R6
Newsletter intro in English, about 80 words, for a monthly newsletter on running engineering teams. This issue: an interview with an engineering manager about on-call rotations, a template for incident reviews, three links.
