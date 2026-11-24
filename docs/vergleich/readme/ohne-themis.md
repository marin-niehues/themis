## R1

Der Build war nicht das Problem, der ist sauber durchgelaufen. Gescheitert ist der Health-Check nach dem Start, dreimal hintereinander mit Zeitüberschreitung.

Die Ursache: In der Produktionsumgebung fehlt die neue Umgebungsvariable `DATABASE_URL`. Ohne sie wartet der Dienst beim Start 30 Sekunden auf die Datenbank und bricht dann ab, deshalb kommt der Health-Check nie durch. In Staging ist die Variable gesetzt, darum lief es dort.

Geändert habe ich noch nichts. Sobald `DATABASE_URL` in Production gesetzt ist und das Deployment neu angestoßen wird, sollte es durchgehen. Soll ich das übernehmen?

## R2

Betreff: Ihre Espressobohnen kommen erst am Dienstag

Sehr geehrte Frau Brandt,

leider können wir Ihnen die bestellten 10 kg Espressobohnen nicht wie geplant am Freitag liefern. Unsere Röstmaschine muss repariert werden, deshalb kommt die Lieferung erst am Dienstag.

Es tut mir leid, dass Sie dadurch länger warten müssen. Als kleinen Ausgleich legen wir Ihrer Lieferung 1 kg Filterkaffee kostenlos bei.

Wenn Sie Fragen haben, erreichen Sie mich gern direkt.

Mit freundlichen Grüßen
Paul Engel
Rösterei Kornfeld

## R3

Most AI pilots don't stall because of the model. They stall because nobody owns the data the model needs.

In three of the last five companies I worked with, that was the reason. The pilot looked fine in the demo. Then it needed real data, and the question "Who is responsible for this?" was met with silence.

Without an owner, nobody fixes the gaps, nobody approves access, and nobody decides what "correct" means. So the project waits. And then it quietly ends.

Before your next pilot, ask one question first: for every data source this needs, who is the person who can say yes and fix it when it's wrong?

If there's no name, that's where you start.

## R4

Fix UnicodeEncodeError in CSV export for names with emoji

The export opened the output file with the system default encoding, so
a customer name containing an emoji raised a UnicodeEncodeError and the
export crashed. Open the file with encoding="utf-8" instead.

Add a test that exports a customer whose name contains an emoji.

## R5

Überschrift: Noch keine gespeicherten Berichte

Text: Hier finden Sie Berichte, die Sie gespeichert haben. Öffnen Sie einen Bericht und klicken Sie in der Berichtsansicht auf „Speichern“.

Schaltfläche: Zu den Berichten

## R6

Hi there,

This month's issue is about what happens when the pager goes off. We talked to an engineering manager about on-call rotations: how to set them up and how to keep them sustainable for the team. You'll also find a template for incident reviews that you can copy and use with your team right away, plus three links worth your time.

As always, hit reply and tell me what you'd like to read about next.
