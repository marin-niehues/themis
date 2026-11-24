# themis

themis gibt Claude Code gemeinsame Regeln für alles mit, was es schreibt und baut: Antworten im Chat, E-Mails, Dokumente, Code, Commit-Nachrichten und Oberflächen. Claude schreibt damit ohne die Muster, an denen man Texte von Sprachmodellen erkennt. Der Inhalt bleibt dabei vollständig und der Ton freundlich. Die Regeln sind für deutsche Texte geschrieben und stehen in [RULES.md](RULES.md).

<table>
<tr><th>Ohne themis</th><th>Mit themis</th></tr>
<tr>
<td valign="top"><a href="docs/vergleich/anschauung/ohne-themis-ganz.jpg"><img src="docs/vergleich/anschauung/ohne-themis.png" alt="Landingpage im typischen Stil generierter Seiten" width="420"></a></td>
<td valign="top"><a href="docs/vergleich/anschauung/mit-themis-ganz.jpg"><img src="docs/vergleich/anschauung/mit-themis.png" alt="Landingpage nach den Regeln von themis" width="420"></a></td>
</tr>
</table>

Die linke Seite ist gestellt. Claude hat sie absichtlich so gebaut, wie Generatoren ohne Vorgaben eine SaaS-Seite bauen. Die rechte Seite hat Claude nach RULES.md gebaut. Ein Klick auf ein Bild öffnet die ganze Seite.

## Beispiele

Claude hat dieselben Aufgaben am 24. November 2026 einmal ohne und einmal mit themis bearbeitet. Die Texte stehen hier unverändert. Aufgaben und alle Antworten liegen in [docs/vergleich/readme](docs/vergleich/readme).

<details>
<summary>Antwort im Chat: Warum ist das Deployment fehlgeschlagen?</summary>

**Ohne themis**

> Der Build war nicht das Problem, der ist sauber durchgelaufen. Gescheitert ist der Health-Check nach dem Start, dreimal hintereinander mit Zeitüberschreitung.
>
> Die Ursache: In der Produktionsumgebung fehlt die neue Umgebungsvariable `DATABASE_URL`. Ohne sie wartet der Dienst beim Start 30 Sekunden auf die Datenbank und bricht dann ab, deshalb kommt der Health-Check nie durch. In Staging ist die Variable gesetzt, darum lief es dort.
>
> Geändert habe ich noch nichts. Sobald `DATABASE_URL` in Production gesetzt ist und das Deployment neu angestoßen wird, sollte es durchgehen. Soll ich das übernehmen?

**Mit themis**

> Das Deployment ist am Health-Check gescheitert, weil in der Produktionsumgebung die neue Umgebungsvariable `DATABASE_URL` fehlt. Ohne sie wartet der Dienst beim Start 30 Sekunden auf die Datenbank und bricht dann ab. Der Health-Check ist deshalb dreimal mit Zeitüberschreitung fehlgeschlagen. Der Build selbst ist durchgelaufen.
>
> In Staging ist `DATABASE_URL` gesetzt, deshalb ist der Fehler dort nicht aufgetreten. Ich habe noch nichts geändert. Ob die vorige Version in Produktion noch läuft, habe ich nicht geprüft.
>
> Damit das nächste Deployment durchgeht, muss `DATABASE_URL` in Produktion gesetzt sein. Dafür brauchst du den Verbindungsstring der Produktionsdatenbank. Der Wert aus Staging zeigt auf die Staging-Datenbank und passt deshalb nicht. Soll ich die Variable setzen und das Deployment neu starten, sobald du mir den Wert gibst?

</details>

<details>
<summary>E-Mail an eine Kundin: Lieferung verschiebt sich</summary>

**Ohne themis**

> Betreff: Ihre Espressobohnen kommen erst am Dienstag
>
> Sehr geehrte Frau Brandt,
>
> leider können wir Ihnen die bestellten 10 kg Espressobohnen nicht wie geplant am Freitag liefern. Unsere Röstmaschine muss repariert werden, deshalb kommt die Lieferung erst am Dienstag.
>
> Es tut mir leid, dass Sie dadurch länger warten müssen. Als kleinen Ausgleich legen wir Ihrer Lieferung 1 kg Filterkaffee kostenlos bei.
>
> Wenn Sie Fragen haben, erreichen Sie mich gern direkt.
>
> Mit freundlichen Grüßen<br>
> Paul Engel<br>
> Rösterei Kornfeld

**Mit themis**

> Betreff: Ihre Espressobohnen kommen erst am Dienstag
>
> Liebe Frau Brandt,
>
> leider kommen Ihre bestellten 10 kg Espressobohnen erst am Dienstag und damit später als zugesagt. Geplant war die Lieferung für Freitag. Unsere Röstmaschine muss repariert werden. Bis die Reparatur abgeschlossen ist, können wir nicht rösten.
>
> Es tut mir leid, dass Sie dadurch länger warten müssen. Als Ausgleich legen wir der Lieferung 1 kg Filterkaffee kostenlos bei.
>
> Falls Ihr Vorrat nicht bis Dienstag reicht, rufen Sie mich bitte an oder antworten Sie auf diese E-Mail. Dann suchen wir gemeinsam eine Lösung.
>
> Vielen Dank für Ihr Verständnis.
>
> Herzliche Grüße<br>
> Paul Engel<br>
> Rösterei Kornfeld

</details>

In einem Test mit 100 Aufgaben aus allen Textsorten, die meisten davon auf Deutsch, war der Text mit themis in 60 Aufgaben besser, in 9 schlechter und in 31 gleich gut. Eine zweite Claude-Instanz hat die Fassungen dafür blind verglichen. Aufgaben, Prüfanleitung und alle Ergebnisse stehen in [docs/test](docs/test).

## Was in den Regeln steht

Am Anfang stehen Grundsätze, die für jede Textsorte gelten. Das Ergebnis steht vorn. Fehler und Risiken nennt Claude vollständig. Zahlen, Namen und Quellen stammen aus dem Auftrag oder aus einer genannten Quelle. Danach folgt eine Tabelle mit den Mustern, an denen man deutsche Texte von Sprachmodellen erkennt. Zu jedem Muster steht dort, was Claude stattdessen schreibt. Eigene Abschnitte regeln Antworten im Chat, Briefe und Dokumente, werbende Texte, Code und Commits sowie Oberflächen. Die Herleitung mit allen Quellen steht in [docs/katalog.md](docs/katalog.md).

## Installation

Du brauchst Claude Code, Python 3 und die GitHub CLI mit Anmeldung.

```bash
gh repo clone marin-niehues/themis ~/themis
```

```bash
~/themis/install.sh
```

Das Skript trägt themis in deine Einstellungen von Claude Code ein. Die Regeln gelten ab der nächsten Session. Der Ordner `~/themis` bleibt auf deinem Rechner, weil Claude Code die Regeln von dort lädt.

Jede neue Session holt die aktuelle Fassung von RULES.md. Änderungen an den Regeln kommen also ohne weiteres Zutun bei dir an. Ohne Netz verwendet themis die zuletzt geladene Fassung.

## Entfernen

```bash
~/themis/uninstall.sh
```

```bash
rm -rf ~/themis
```

Das Skript nimmt themis aus deinen Einstellungen und löscht die zwischengespeicherte Kopie der Regeln.
