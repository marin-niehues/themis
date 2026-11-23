## 1

Der Import bricht bei Dateien ab, die mit Leerzeilen enden. Der Parser hat eine Leerzeile am Dateiende als eigenen Datensatz gelesen, fand darin keine Felder und brach mit einem IndexError ab. Dateien ohne Leerzeilen am Ende liefen deshalb durch, die anderen nicht.

Ich habe den Parser so geändert, dass er Leerzeilen am Ende überspringt. Danach liefen alle 42 Tests ohne Fehler.

Mit echten Kundendateien habe ich den Import noch nicht getestet. Bitte prüf ihn mit einer oder zwei der Dateien, bei denen er bisher abgebrochen ist, bevor wir die Änderung als erledigt ansehen.

## 2

**Soll der Jira-Import stündlich laufen?**

Am Freitag entscheidet das Team, ob der Jira-Import künftig stündlich statt einmal pro Nacht läuft.

Heute startet der Import um 2 Uhr nachts und dauert 12 Minuten. Ein Ticket, das tagsüber angelegt wird, erscheint deshalb erst am nächsten Morgen in den Berichten. Wer im Laufe des Tages nachsieht, arbeitet also mit dem Stand der letzten Nacht.

Ein stündlicher Import würde diese Lücke auf höchstens eine Stunde verkürzen. Diese Seite stellt zusammen, was dafür und was dagegen spricht, damit wir am Freitag auf einer gemeinsamen Grundlage entscheiden können.

## 3

**Willkommen, Max!**

Hier legst du dein Profil als Speakerin an, damit Konferenzen dich finden und einladen können.

Plane dafür etwa 40 Minuten ein. Du musst nicht alles auf einmal schaffen: Jede Antwort wird sofort gespeichert, und über deinen persönlichen Link machst du später genau dort weiter, wo du aufgehört hast.

Lebenslauf, Foto und andere Unterlagen musst du nicht gleich bereithalten. Die kannst du jederzeit nachreichen.

## 4

```python
import time
from collections import deque

MAX_MAILS_PER_SECOND = 10


def send_emails_to_all(users):
    """Schickt jedem Nutzer eine E-Mail, höchstens zehn pro Sekunde.

    Gibt die Nutzer zurück, bei denen der Versand fehlgeschlagen ist,
    zusammen mit dem jeweiligen Fehler.
    """
    sent_at = deque()
    failed = []

    for user in users:
        if len(sent_at) == MAX_MAILS_PER_SECOND:
            wait = 1.0 - (time.monotonic() - sent_at[0])
            if wait > 0:
                time.sleep(wait)
            sent_at.popleft()

        sent_at.append(time.monotonic())
        try:
            send_email(user)
        except Exception as error:
            failed.append((user, error))

    return failed
```

## 5

```
Skip blank lines when parsing CSV rows

CSV exports from Jira end with blank lines. parse_rows() treated
them as rows and the import failed with an IndexError. Blank lines
are now skipped.
```
