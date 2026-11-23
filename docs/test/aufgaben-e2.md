# Aufgaben E2

Bearbeite jede Aufgabe. Gib zu jeder Aufgabe nur den verlangten Text oder Code aus, ohne Kommentar dazu.

## E14. Logging
Ergänze sinnvolles Logging in dieser Funktion:
```python
def import_tenders(source):
    data = fetch(source)
    tenders = parse(data)
    save(tenders)
    return len(tenders)
```

## E15. React-Komponente
Schreib eine React-Komponente in TypeScript, die eine Liste von Ausschreibungen (Titel, Auftraggeber, Frist) anzeigt und einen leeren Zustand hat.

## E16. Regulärer Ausdruck
Schreib einen regulären Ausdruck in Python für deutsche Postleitzahlen und eine Funktion, die prüft, ob ein String eine gültige PLZ ist.

## E17. Fehlermeldung im Log
Schreib die Logmeldung für den Fall, dass der Import aus dem Vergabeportal Bayern nach drei Versuchen fehlschlägt (HTTP 503).

## E18. Pull-Request-Beschreibung
Schreib die Beschreibung eines Pull Requests. Änderung: Filter nach Auftragswert in der Suche. Backend: neuer Query-Parameter min_value und max_value. Frontend: zwei Eingabefelder. Tests für die Grenzwerte ergänzt. Ticket JUL-482.

## E19. Antwort auf Code-Review
Ein Reviewer schreibt: „Warum nutzt du hier eine eigene Retry-Schleife statt der Bibliothek tenacity?“ Dein Grund: tenacity ist im Projekt nicht installiert und die Schleife hat vier Zeilen. Schreib deine Antwort.

## E20. Commit-Nachricht
Schreib eine Commit-Nachricht für: Timeout für Anfragen an das Vergabeportal von 5 auf 30 Sekunden erhöht, weil das Portal Bayern bei großen Ergebnissen länger braucht.

## E21. Commit-Nachricht
Schreib eine Commit-Nachricht für: Tippfehler in der Fehlermeldung „Ungültige Emial-Adresse“ korrigiert.

## E22. Kommentar im Code
Schreib den Kommentar für eine Zeile, die vor dem Parsen ein BOM am Dateianfang entfernt, weil Excel CSV-Dateien mit BOM speichert.

## E23. Tooltip
Schreib den Tooltip für ein Symbol neben dem Feld „Auftragswert“: Der Wert ist der geschätzte Netto-Auftragswert laut Ausschreibung.

## E24. Erfolgsmeldung
Schreib die Meldung, die erscheint, nachdem ein Nutzer eine Suche gespeichert hat.

## E25. Wartungshinweis
Schreib einen Banner-Hinweis: Am Sonntag, 7. Dezember, ist Lotse von 6 bis 8 Uhr wegen Wartung nicht erreichbar.
