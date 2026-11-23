# Aufgaben E1

Bearbeite jede Aufgabe. Gib zu jeder Aufgabe nur den verlangten Text oder Code aus, ohne Kommentar dazu.

## E1. App-Store-Beschreibung
Schreib die ersten drei Sätze einer App-Store-Beschreibung für die Lotse-App. Sie zeigt neue Ausschreibungen, man kann sie speichern und per Push benachrichtigt werden.

## E2. Social-Media-Beitrag
Schreib einen kurzen Beitrag für Instagram: Das Lotse-Team war beim Weihnachtsmarkt in Köln. Foto zeigt fünf Leute mit Glühwein.

## E3. Wiki-Anleitung
Schreib eine Anleitung im Wiki: So richtest du die lokale Entwicklungsumgebung für Lotse ein. Schritte: Repository klonen, docker compose up ausführen, im Browser localhost:8080 öffnen, Testnutzer test@lotse.local mit Passwort aus der Datei .env.example anmelden.

## E4. Begrüßung neuer Mitarbeiter
Schreib eine E-Mail an Lisa, die am Montag als Entwicklerin anfängt. Treffpunkt 9 Uhr am Empfang. Laptop liegt bereit. Mittagessen mit dem Team um 12:30 Uhr. Ansprechpartner am ersten Tag: Ben.

## E5. FAQ-Antwort
Schreib die Antwort auf die FAQ-Frage „Kann ich Lotse kostenlos testen?“ Fakt: 14 Tage kostenlos, keine Zahlungsdaten nötig, endet automatisch.

## E6. Datenschutzhinweis
Schreib einen kurzen Hinweis unter einem Anmeldeformular: Wir speichern Name und E-Mail-Adresse, um den Newsletter zu verschicken. Abmeldung über den Link in jeder Mail.

## E7. Hilfe-Text für ein Kommandozeilentool
Schreib den Hilfetext (--help) für das Tool csvclean. Optionen: -o DATEI (Ausgabedatei, Pflicht), --keep-empty (leere Zeilen behalten), --delimiter ZEICHEN (Standard: Komma).

## E8. Changelog
Schreib einen Changelog-Eintrag für csvclean 1.3.0 im Format „Keep a Changelog“. Neu: Option --delimiter. Behoben: Absturz bei Dateien mit BOM.

## E9. Docstring
Schreib einen Docstring für diese Funktion: def normalize_title(title: str) -> str: entfernt doppelte Leerzeichen, wandelt in Kleinbuchstaben um und entfernt Satzzeichen am Ende.

## E10. Bash-Skript
Schreib ein Bash-Skript, das alle .log-Dateien in /var/log/lotse älter als 14 Tage komprimiert und solche älter als 90 Tage löscht.

## E11. SQL
Schreib eine SQL-Abfrage für PostgreSQL: Anzahl der Ausschreibungen pro Bundesland im November 2026, absteigend sortiert. Tabelle tenders mit Spalten id, state, published_at.

## E12. Test
Schreib pytest-Tests für die Funktion normalize_title aus E9.

## E13. Refactoring
Vereinfache diesen Code, ohne das Verhalten zu ändern:
```python
def get_active(users):
    result = []
    for u in users:
        if u.active == True:
            result.append(u)
        else:
            pass
    return result
```
