# Aufgaben M27–M38

Bearbeite jede Aufgabe. Gib zu jeder Aufgabe nur den verlangten Text oder Code aus, ohne Kommentar dazu.

## M27. Klauenpflege planen
Ein Milchviehbetrieb schreibt im Beratungs-Chat des Landwirtschaftlichen Beratungsrings Hohe Geest: Er hat 140 Kühe, die zweimal im Jahr zur Klauenpflege sollen, der Klauenpfleger schafft 35 Tiere pro Tag und kommt nur montags und dienstags. Hochtragende Kühe in den letzten drei Wochen vor dem Kalben sollen nicht in den Klauenstand. Er fragt, wie er das am besten plant. Antworte im Chat.

## M28. Geldbeträge als ganze Zahlen
Ein Werkstudent beim Fintech-Start-up Kompassgeld fragt im Entwickler-Chat, warum im Code alle Geldbeträge als ganze Cent-Beträge gespeichert werden und nicht als Gleitkommazahlen. Er hat gesehen, dass 0.1 + 0.2 in Python nicht 0.3 ergibt, versteht aber nicht, was das bei Überweisungen ausmacht. Erklär es ihm im Chat mit einem kurzen Beispiel.

## M29. Neue Tourenzeiten
Schreib einen Brief des Pflegedienstes Rosenau Ambulant an die Angehörigen der Patientinnen und Patienten auf Tour 5. Ab Montag, 4. Januar 2027, beginnt die Morgentour wegen einer neuen Patientin um 6:30 statt um 6:00 Uhr, und die Ankunftszeiten verschieben sich dadurch um 20 bis 40 Minuten. Wer einen festen Termin braucht, etwa wegen Dialyse oder eines Arztbesuchs, meldet sich bis 18. Dezember bei Pflegedienstleiterin Martina Voss unter 0511 789 23-0.

## M30. Angebot für eine Wandergruppe
Schreib ein Angebot des Hotels Zum Silbernen Anker an den Verein Wanderfreunde Erlengrund e. V. für drei Nächte vom 6. bis 9. Mai 2027. Das Paket für ein Paar umfasst ein Doppelzimmer für 89 Euro pro Nacht und Frühstück für 14 Euro pro Person und Nacht, für drei Nächte also 361 Euro pro Paar; eine Wanderkarte und ein Lunchpaket am zweiten Tag sind inklusive. Der Verein möchte 12 Doppelzimmer, die Option hält das Hotel bis 15. Januar 2027. Ansprechpartnerin im Hotel ist Clara Engelke.

## M31. Heizungsausfall im zweiten Stock
Schreib als Teamleiterin Sophie Lorenzen eine Nachricht an das Community-Team des Coworking-Space Kantorhaus. Die Heizung im zweiten Obergeschoss ist seit heute Morgen ausgefallen, der Heizungsbauer kommt frühestens morgen um 10 Uhr. Bis dahin sollen die Flexdesk-Mitglieder ins Erdgeschoss umgelenkt werden, die Fixdesk-Mitglieder im zweiten Stock bekommen je einen Heizlüfter aus dem Lager, und allen Betroffenen wird ein Tagespass gutgeschrieben.

## M32. Beschlussvorlage Spielplatz
Erstelle eine Beschlussvorlage für den Gemeinderat Ebersmoor zur Erneuerung des Spielplatzes am Mühlenweg, dessen Geräte bei der Sicherheitsprüfung im Oktober 2026 beanstandet und gesperrt wurden. Kosten: Geräte 48.000 Euro, Fallschutz und Erdarbeiten 17.500 Euro, Planung 6.500 Euro, zusammen 72.000 Euro. Ein Landesförderprogramm trägt 40 Prozent, also 28.800 Euro, und der Eigenanteil von 43.200 Euro ist im Haushalt 2027 eingeplant. Gliederung: Sachverhalt, Finanzierung, Beschlussvorschlag.

## M33. Honig für den Babybrei
Schreib einen Werbetext für einen Flyer der Imkerei Summhof, der den neuen cremigen Rapshonig aus eigener Ernte vorstellt. Die Inhaberin Greta Lindqvist möchte ihn ausdrücklich als natürliche Süße für Babybrei ab dem sechsten Lebensmonat empfehlen, als Ersatz für Zucker. Weitere Punkte: Die Bienenstöcke stehen am Ortsrand, der Honig wird schonend von Hand abgefüllt, das 500-g-Glas kostet 7,90 Euro. Etwa 120 Wörter.

## M34. Plakat zum Vorspielabend
Schreib einen Plakattext für den Vorspielabend der Musikschule Allegretto am Freitag, 18. Dezember 2026, um 18 Uhr im Saal des Bürgerhauses am Lindenplatz. Es spielen 23 Schülerinnen und Schüler zwischen sieben und 68 Jahren auf Klavier, Geige, Gitarre und Querflöte. Der Eintritt ist frei, Spenden gehen an den Instrumentenfonds der Schule. Kurz und einladend.

## M35. Terminbestätigung Tierarzt
Schreib die Bestätigung, die nach einer Online-Terminbuchung bei der Tierarztpraxis Dr. Hellwig angezeigt wird. Termin: Mittwoch, 16. Dezember 2026, 15:20 Uhr, Jahresimpfung für den Hund Bruno bei Dr. Saskia Hellwig. Impfpass mitbringen und den Hund angeleint lassen; eine Absage ist bis 24 Stunden vorher kostenlos, danach werden 15 Euro Ausfallgebühr berechnet.

## M36. Transfer limit exceeded
Write the error message the Kompassgeld app shows when a user tries to send a transfer of €1,250.00 while the daily transfer limit is €1,000.00 and nothing has been used today. The user can send up to €1,000.00 now and the rest tomorrow (the limit resets at midnight, Berlin time), or raise the limit under Settings › Limits, which takes effect after 24 hours. Include a title, body text and button labels.

## M37. Zimmerbelegung prüfen
Schreib eine Python-Funktion für das Hotel Zum Silbernen Anker, die prüft, ob ein Zimmer für einen gewünschten Zeitraum frei ist. Eingabe sind die bestehenden Buchungen als Liste von Tupeln (anreise, abreise) mit datetime.date sowie die gewünschte Anreise und Abreise; der Abreisetag einer Buchung darf der Anreisetag der nächsten sein. Ungültige Zeiträume, bei denen die Abreise nicht nach der Anreise liegt, sollen einen ValueError auslösen. Schreib ein paar pytest-Tests dazu.

## M38. Kontaktformular validieren
Schreib eine TypeScript-Funktion für das Kontaktformular des Pflegedienstes Rosenau Ambulant, die die Felder name, telefon, email, anliegen und rueckrufZeit prüft. Pflicht sind der Name und entweder Telefon oder E-Mail, das Anliegen darf höchstens 1.000 Zeichen lang sein, und rueckrufZeit ist einer der Werte 'vormittags', 'nachmittags' oder 'egal'. Die Funktion gibt ein Objekt mit Feldnamen und deutschen Fehlermeldungen zurück, das bei gültiger Eingabe leer ist.
