## 1

Ich habe den Abbruch bei Dateien mit Leerzeilen am Ende behoben, den Import mit echten Kundendateien aber noch nicht getestet. Der Parser hat diese Leerzeilen als Datensatz gelesen und ist dann mit einem IndexError abgebrochen. Jetzt überspringt er Leerzeilen am Dateiende. Nach der Änderung liefen alle 42 Tests ohne Fehler. Ob alle abbrechenden Kundendateien diese Ursache haben, zeigt erst ein Test mit ihnen. Wenn du mir eine Datei schickst, bei der der Import bisher abgebrochen ist, prüfe ich die Korrektur damit.

## 2

Das Team entscheidet am Freitag, ob der Jira-Import künftig stündlich statt einmal pro Nacht laufen soll. Heute startet der Import um 2 Uhr nachts und dauert 12 Minuten. Neue Tickets erscheinen deshalb erst am nächsten Morgen in den Berichten. Bei einem stündlichen Lauf stünden sie nach gut einer Stunde dort. Für die Entscheidung fehlt noch eine Angabe, wie stark 24 Läufe pro Tag Jira und die Berichte belasten.

## 3

Hier legst du dein Profil als Speakerin für Konferenzen an. Das Ausfüllen dauert etwa 40 Minuten. Jede Antwort wird sofort gespeichert. Über deinen persönlichen Link kannst du später weitermachen. Unterlagen wie Lebenslauf oder Foto kannst du später nachreichen.

## 4

```python
import time

# The mail provider rejects more than ten emails per second.
SEND_INTERVAL_SECONDS = 1 / 10


def send_emails(users):
    for user in users:
        started = time.monotonic()
        send_email(user)
        remaining = SEND_INTERVAL_SECONDS - (time.monotonic() - started)
        if remaining > 0:
            time.sleep(remaining)
```

## 5

```
Skip blank lines when parsing CSV rows

CSV exports from Jira end with blank lines. parse_rows passed them to
parse_line and the import failed with an IndexError.
```
