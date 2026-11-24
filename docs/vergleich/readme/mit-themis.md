## R1

Das Deployment ist am Health-Check gescheitert, weil in der Produktionsumgebung die neue Umgebungsvariable `DATABASE_URL` fehlt. Ohne sie wartet der Dienst beim Start 30 Sekunden auf die Datenbank und bricht dann ab. Der Health-Check ist deshalb dreimal mit Zeitüberschreitung fehlgeschlagen. Der Build selbst ist durchgelaufen.

In Staging ist `DATABASE_URL` gesetzt, deshalb ist der Fehler dort nicht aufgetreten. Ich habe noch nichts geändert. Ob die vorige Version in Produktion noch läuft, habe ich nicht geprüft.

Damit das nächste Deployment durchgeht, muss `DATABASE_URL` in Produktion gesetzt sein. Dafür brauchst du den Verbindungsstring der Produktionsdatenbank. Der Wert aus Staging zeigt auf die Staging-Datenbank und passt deshalb nicht. Soll ich die Variable setzen und das Deployment neu starten, sobald du mir den Wert gibst?

## R2

Betreff: Ihre Espressobohnen kommen erst am Dienstag

Liebe Frau Brandt,

leider kommen Ihre bestellten 10 kg Espressobohnen erst am Dienstag und damit später als zugesagt. Geplant war die Lieferung für Freitag. Unsere Röstmaschine muss repariert werden. Bis die Reparatur abgeschlossen ist, können wir nicht rösten.

Es tut mir leid, dass Sie dadurch länger warten müssen. Als Ausgleich legen wir der Lieferung 1 kg Filterkaffee kostenlos bei.

Falls Ihr Vorrat nicht bis Dienstag reicht, rufen Sie mich bitte an oder antworten Sie auf diese E-Mail. Dann suchen wir gemeinsam eine Lösung.

Vielen Dank für Ihr Verständnis.

Herzliche Grüße
Paul Engel
Rösterei Kornfeld

## R3

If your AI pilot has stalled, check who owns the data it needs.

In three of the last five companies I worked with, that was the reason. The pilot depended on data that belonged to no one in particular. Nobody could grant access or take responsibility for its quality, so the team waited for decisions that were nobody's job.

Before a pilot starts, I now ask one question: who owns the data this depends on? If the answer is a department or an awkward silence, the first task is to name one person who decides on access and quality. That person belongs in the kickoff meeting, next to whoever owns the budget.

Who owns the data behind your AI projects?

#AI #DataGovernance #Consulting

## R4

```
Write CSV export as UTF-8 to handle emoji in names

The export opened the file with the system default encoding. When a
customer name contained an emoji that this encoding cannot represent,
the export crashed with UnicodeEncodeError.

Open the file with encoding="utf-8" and add a test that exports a
customer with an emoji in the name.

On systems whose default encoding was not UTF-8, the output encoding
changes with this commit. Excel on Windows reads CSV files without a
BOM in the local ANSI code page, so non-ASCII characters may display
incorrectly there.
```

## R5

Überschrift: Noch keine Berichte gespeichert

Text: Klicken Sie in der Berichtsansicht auf „Speichern“, dann erscheint der Bericht in dieser Liste. Von hier aus können Sie ihn jederzeit wieder öffnen.

Schaltfläche: Berichtsansicht öffnen

## R6

Hi,

On-call rotations decide who gets paged at night and how often. This month I spoke with an engineering manager about how their team runs on-call. The full interview is the main piece of this issue.

You'll also find a template for incident reviews. Copy it into your own docs and adapt the sections to your team before the next incident.

At the end there are three links I recommend this month.

Thanks for reading. If you'd like to share how your team handles on-call, reply to this email.
