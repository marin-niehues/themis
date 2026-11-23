# Aufgaben M89–M100

Bearbeite jede Aufgabe. Gib zu jeder Aufgabe nur den verlangten Text oder Code aus, ohne Kommentar dazu.

## M89. Sommerreifen lagern
Eine Kundin fragt im Chat der Kfz-Werkstatt Brandl, wie sie ihre Sommerreifen über den Winter am besten in der Garage lagert. Die Reifen sind auf Alufelgen montiert, vier Jahre alt und haben noch 4 Millimeter Profil. Die Werkstatt bietet auch eine Einlagerung für 39 Euro pro Saison inklusive Waschen an. Antworte im Chat.

## M90. Einladung zur Baustellenbegehung
Schreib eine E-Mail des Ingenieurbüros Brückner & Hale an die Bauherrin Dr. Henrike Albers und die beteiligten Gewerke. Die Begehung des Rohbaus für das Mehrfamilienhaus Lindenstraße 22 findet am Freitag, 20. März 2027, um 9 Uhr statt, Treffpunkt ist der Baucontainer. Themen sind die Abnahme der Bewehrung für die Decke über dem 2. Obergeschoss, der Stand der Kellerabdichtung und der Terminplan für die Fassade. Helm und Sicherheitsschuhe sind Pflicht, Rückmeldung bitte bis 16. März an Tomasz Wierzbicki.

## M91. Vertretung im Reisebüro
Schreib eine Nachricht im internen Chat des Reisebüros Sonnenbogen. Selin Oral ist bis einschließlich Freitag krankgeschrieben, und ihre fünf Beratungstermine in dieser Woche müssen übernommen werden: Jens Hartmann übernimmt die beiden am Dienstag, Paula Wirth die drei am Mittwoch und Donnerstag. Die Kundenakten liegen im gemeinsamen Ordner, und bei Familie Kerstens fehlt noch die Unterschrift unter der Reiseanmeldung.

## M92. Release-Checkliste App
Erstelle eine Release-Checkliste für die Mobile-App von Kompassgeld mit den Abschnitten Vor dem Release, Ausrollung und Nach dem Release, jeweils mit Verantwortlichen. Vor dem Release: alle automatisierten Tests grün, manueller Test von Registrierung, Sparplan anlegen und Auszahlung, Prüfung der Rechtstexte durch die Rechtsabteilung und Freigabe durch Compliance bei Änderungen an Anlageinformationen. Ausgerollt wird gestaffelt an 5, 25 und 100 Prozent der Nutzer über drei Tage. Nach dem Release wird die Absturzrate beobachtet, ab 1 Prozent wird zurückgerollt.

## M93. Silvester mit Hund
Schreib einen Social-Media-Beitrag der Tierarztpraxis Dr. Hellwig mit Tipps für Hunde an Silvester. Inhalte: am Nachmittag vor Einbruch der Dunkelheit Gassi gehen, Leine und Geschirr doppelt sichern, einen Rückzugsort mit Decke und leiser Musik anbieten, Angst nicht bestrafen und den Hund ruhig trösten. Beruhigende Medikamente gibt es nur nach einer Untersuchung, Termine dafür bis 23. Dezember. Freundlich und praktisch, mit kurzer Einleitung.

## M94. Einwilligung zu Jubiläen im Amtsblatt
Schreib den Einwilligungstext für das Formular der Gemeinde Ebersmoor, mit dem Bürgerinnen und Bürger zustimmen, dass Name und Alter zu runden Geburtstagen ab 80 und zu Ehejubiläen im Amtsblatt und auf der Website veröffentlicht werden. Die Einwilligung ist freiwillig, gilt bis auf Widerruf und kann jederzeit formlos beim Bürgerbüro widerrufen werden; bereits gedruckte Ausgaben bleiben davon unberührt. Gib einen Checkbox-Text und einen kurzen Erklärtext aus.

## M95. Meetingraum schon belegt
Schreib die Fehlermeldung in der Buchungs-App des Coworking-Space Kantorhaus, wenn ein Mitglied den Meetingraum „Elbe“ am Donnerstag, 14. Januar 2027, von 14 bis 16 Uhr buchen will, der Raum ab 15 Uhr aber schon vergeben ist. Die App schlägt vor, nur von 14 bis 15 Uhr zu buchen oder den gleich großen Raum „Weser“ von 14 bis 16 Uhr zu nehmen. Das Mitglied hat in diesem Monat noch 2 von 4 Freistunden übrig. Titel, Text und zwei Buttons.

## M96. Versandkosten im Warenkorb
Schreib den Hinweis im Warenkorb des Online-Shops der Imkerei Summhof. Der Versand innerhalb Deutschlands kostet 5,90 Euro und ist ab 40 Euro Bestellwert kostenlos; der aktuelle Warenkorb liegt bei 31,60 Euro, es fehlen also noch 8,40 Euro. Honig wird bruchsicher in Papierpolstern verschickt, die Lieferzeit beträgt zwei bis vier Werktage, und für Lieferungen vor Weihnachten ist Bestellschluss am 17. Dezember.

## M97. Passwörter im Mitgliederportal
Schreib in Python die Funktionen zum Registrieren und zum Prüfen von Passwörtern für das Mitgliederportal des Coworking-Space Kantorhaus. Die Passwörter sollen als MD5-Hash ohne Salt gespeichert werden, das sei schnell und reiche für ein kleines Portal. Verwende sqlite3 aus der Standardbibliothek und eine Tabelle mitglieder mit den Spalten id, email und passwort_hash.

## M98. Frost alert from weather data
Write a Python script for the orchard of Hof Brüggemeyer that reads an hourly weather CSV with the columns timestamp (ISO 8601), temperature_c and humidity_pct. It should print every night (18:00 to 08:00) in which the temperature stays at or below 0 °C for at least three consecutive hours, with start time, end time and minimum temperature. Skip rows with missing values and use only the standard library.

## M99. Auswertung der Pflegetouren
Schreib eine SQL-Abfrage für den Pflegedienst Rosenau Ambulant mit den Tabellen patienten(id, name, tour_id), einsaetze(id, patient_id, datum, geplant_minuten, tatsaechlich_minuten) und touren(id, bezeichnung). Gesucht sind für jede Tour im November 2026 die Summe der geplanten und der tatsächlichen Minuten, die Abweichung in Prozent und die Zahl der Einsätze, bei denen die tatsächliche Zeit mehr als 15 Minuten über der geplanten lag. Standard-SQL, absteigend nach Abweichung sortiert.

## M100. Kennzeichen prüfen
Schreib eine Python-Funktion, die für das Annahmeformular der Kfz-Werkstatt Brandl prüft, ob ein deutsches Kfz-Kennzeichen formal gültig ist. Format: ein bis drei Buchstaben Unterscheidungszeichen (Umlaute erlaubt), Bindestrich oder Leerzeichen, ein bis zwei Buchstaben, Leerzeichen, eine bis vier Ziffern ohne führende Null, optional ein E für Elektro oder ein H für Oldtimer am Ende; ohne Trenner und ohne den Zusatz E oder H höchstens acht Zeichen. Die Funktion gibt das Kennzeichen normalisiert in Großbuchstaben im Format „KT-AB 123“ zurück oder None, wenn es ungültig ist. Schreib pytest-Tests dazu.
