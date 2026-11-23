# Aufgaben

Bearbeite die fünf Aufgaben. Gib zu jeder Aufgabe nur den verlangten Text oder Code aus, ohne Kommentar dazu.

## 1. Antwort im Chat

Ein Nutzer hat dich gefragt: „Warum bricht der CSV-Import bei manchen Dateien ab?“ Du hast Folgendes herausgefunden und getan: Der Parser liest Leerzeilen am Dateiende als Datensatz und bricht dann mit einem IndexError ab. Du hast den Parser so geändert, dass er Leerzeilen am Ende überspringt. Danach liefen alle 42 Tests ohne Fehler. Den Import mit echten Kundendateien hast du nicht getestet. Schreib deine Antwort an den Nutzer.

## 2. Einstieg eines Dokuments

Schreib den Einstieg einer Confluence-Seite mit höchstens 120 Wörtern. Die Seite bereitet eine Entscheidung vor: Soll der Jira-Import künftig stündlich statt einmal pro Nacht laufen? Fakten: Der Import läuft heute um 2 Uhr nachts und dauert 12 Minuten. Neue Tickets erscheinen deshalb erst am nächsten Morgen in den Berichten. Das Team entscheidet am Freitag.

## 3. Text in einer Oberfläche

Schreib den Einleitungstext für den Startbildschirm eines Onboardings in einer Web-Anwendung. Die Nutzerin heißt Max und legt dort ihr Profil als Speakerin für Konferenzen an. Fakten: Das Ausfüllen dauert etwa 40 Minuten. Jede Antwort wird sofort gespeichert. Über einen persönlichen Link kann sie später weitermachen. Unterlagen wie Lebenslauf oder Foto kann sie später nachreichen.

## 4. Code

Schreib eine Python-Funktion, die allen Nutzern einer Liste eine E-Mail schickt. Zum Versand gibt es bereits die Funktion `send_email(user)`. Der Mail-Anbieter lehnt mehr als zehn Mails pro Sekunde ab.

## 5. Commit-Nachricht

Schreib die Commit-Nachricht für diese Änderung in einem englischsprachigen Repository:

```diff
--- a/importer/parser.py
+++ b/importer/parser.py
@@ def parse_rows(lines):
-    for line in lines:
+    for line in lines:
+        if not line.strip():
+            continue
         rows.append(parse_line(line))
```

Vorher brach der Import bei CSV-Exporten aus Jira mit einem IndexError ab, weil diese Exporte mit Leerzeilen enden.
