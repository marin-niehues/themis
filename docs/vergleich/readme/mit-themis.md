## R1

Der Health-Check ist nach dem Start dreimal mit Zeitüberschreitung fehlgeschlagen, weil in der Produktionsumgebung die Umgebungsvariable `DATABASE_URL` fehlt. Der Build selbst ist durchgelaufen. Geändert habe ich noch nichts.

Ohne `DATABASE_URL` wartet der Dienst beim Start 30 Sekunden auf die Datenbank und bricht dann ab. Die Variable ist mit dieser Version neu hinzugekommen und bisher nur in Staging gesetzt.

Wenn du `DATABASE_URL` in der Produktionsumgebung setzt und das Deployment neu startest, sollte der Health-Check durchgehen. Nimm dafür die Verbindungsdaten der Produktionsdatenbank, weil der Dienst mit dem Wert aus Staging auf die Staging-Datenbank zugreifen würde. Ob in Produktion gerade noch die vorige Version läuft, hängt davon ab, ob eure Pipeline nach einem fehlgeschlagenen Health-Check zurückrollt. Das habe ich nicht geprüft.

Soll ich nachsehen, welche Version in Produktion läuft, und die Variable nach deinem Okay setzen?

## R2

Betreff: Ihre Espressobohnen kommen erst am Dienstag

Liebe Frau Brandt,

Ihre Bestellung über 10 kg Espressobohnen kann ich Ihnen leider erst am Dienstag liefern. Zugesagt hatten wir Ihnen den Freitag. Unsere Röstmaschine muss repariert werden. Bis sie wieder läuft, können wir nicht rösten.

Es tut mir leid, dass Sie dadurch über das Wochenende ohne die neue Lieferung auskommen müssen. Als Ausgleich lege ich Ihnen 1 kg Filterkaffee kostenlos dazu.

Wenn Ihr Vorrat bis Dienstag knapp wird, geben Sie mir bitte Bescheid. Ich schaue dann, was ich kurzfristig für Sie tun kann.

Viele Grüße
Paul Engel
Rösterei Kornfeld

## R3

If your AI pilot has been stuck for months, find out who owns the data it needs.

In three of the last five companies I worked with, the answer was no one, and that is why their pilots stalled. Without an owner, every question about the data ends up in a meeting. Who can grant access? Which version of the customer list is correct? Who fixes a wrong entry at the source? The pilot waits while these questions move between departments.

Before you start the next pilot, name one person who is responsible for the data it depends on. That person needs the authority to decide on access and quality and the time to do it. A department or a steering committee can't fill that role, because decisions there wait for the next meeting.

## R4

```
Write CSV export as UTF-8 to handle emoji in customer names

The export crashed with a UnicodeEncodeError when a customer name
contained an emoji, because the file was opened with the system
default encoding. Open the export file with encoding="utf-8" and add
a test that exports a customer whose name contains an emoji.
```

## R5

Überschrift: Noch keine gespeicherten Berichte

Text: Hier finden Sie die Berichte, die Sie gespeichert haben. Öffnen Sie dazu einen Bericht und klicken Sie in der Berichtsansicht auf „Speichern“.

Schaltfläche: Berichte anzeigen

## R6

Hi everyone,

This month is about on-call and what comes after an incident. I interviewed an engineering manager about how they run on-call rotations for their team, and you'll find the conversation below. After that comes a template for incident reviews that you can copy and use for your next review. The issue ends with three links for further reading.

Thanks for reading. If a colleague is setting up an on-call rotation right now, feel free to forward this issue.
