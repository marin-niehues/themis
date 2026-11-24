# themis

themis gibt Claude Code gemeinsame Regeln für alles mit, was es schreibt und baut: Antworten im Chat, E-Mails, Dokumente, Code, Commit-Nachrichten und Oberflächen. Claude schreibt damit ohne die Muster, an denen man Texte von Sprachmodellen erkennt. Der Inhalt bleibt dabei vollständig und der Ton freundlich. Die Regeln gelten für Deutsch und Englisch und stehen in [RULES.md](RULES.md).

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
<summary>LinkedIn-Beitrag: Warum KI-Piloten stehen bleiben</summary>

**Ohne themis**

> Most AI pilots don't stall because of the model. They stall because nobody owns the data the model needs.
>
> In three of the last five companies I worked with, that was the reason. The pilot looked fine in the demo. Then it needed real data, and the question "Who is responsible for this?" was met with silence.
>
> Without an owner, nobody fixes the gaps, nobody approves access, and nobody decides what "correct" means. So the project waits. And then it quietly ends.
>
> Before your next pilot, ask one question first: for every data source this needs, who is the person who can say yes and fix it when it's wrong?
>
> If there's no name, that's where you start.

**Mit themis**

> If your AI pilot has been stuck for months, find out who owns the data it needs.
>
> In three of the last five companies I worked with, the answer was no one, and that is why their pilots stalled. Without an owner, every question about the data ends up in a meeting. Who can grant access? Which version of the customer list is correct? Who fixes a wrong entry at the source? The pilot waits while these questions move between departments.
>
> Before you start the next pilot, name one person who is responsible for the data it depends on. That person needs the authority to decide on access and quality and the time to do it. A department or a steering committee can't fill that role, because decisions there wait for the next meeting.

</details>

<details>
<summary>Antwort im Chat: Warum ist das Deployment fehlgeschlagen?</summary>

**Ohne themis**

> Der Build war nicht das Problem, der ist sauber durchgelaufen. Gescheitert ist der Health-Check nach dem Start, dreimal hintereinander mit Zeitüberschreitung.
>
> Die Ursache: In der Produktionsumgebung fehlt die neue Umgebungsvariable `DATABASE_URL`. Ohne sie wartet der Dienst beim Start 30 Sekunden auf die Datenbank und bricht dann ab, deshalb kommt der Health-Check nie durch. In Staging ist die Variable gesetzt, darum lief es dort.
>
> Geändert habe ich noch nichts. Sobald `DATABASE_URL` in Production gesetzt ist und das Deployment neu angestoßen wird, sollte es durchgehen. Soll ich das übernehmen?

**Mit themis**

> Der Health-Check ist nach dem Start dreimal mit Zeitüberschreitung fehlgeschlagen, weil in der Produktionsumgebung die Umgebungsvariable `DATABASE_URL` fehlt. Der Build selbst ist durchgelaufen. Geändert habe ich noch nichts.
>
> Ohne `DATABASE_URL` wartet der Dienst beim Start 30 Sekunden auf die Datenbank und bricht dann ab. Die Variable ist mit dieser Version neu hinzugekommen und bisher nur in Staging gesetzt.
>
> Wenn du `DATABASE_URL` in der Produktionsumgebung setzt und das Deployment neu startest, sollte der Health-Check durchgehen. Nimm dafür die Verbindungsdaten der Produktionsdatenbank, weil der Dienst mit dem Wert aus Staging auf die Staging-Datenbank zugreifen würde. Ob in Produktion gerade noch die vorige Version läuft, hängt davon ab, ob eure Pipeline nach einem fehlgeschlagenen Health-Check zurückrollt. Das habe ich nicht geprüft.
>
> Soll ich nachsehen, welche Version in Produktion läuft, und die Variable nach deinem Okay setzen?

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
> Ihre Bestellung über 10 kg Espressobohnen kann ich Ihnen leider erst am Dienstag liefern. Zugesagt hatten wir Ihnen den Freitag. Unsere Röstmaschine muss repariert werden. Bis sie wieder läuft, können wir nicht rösten.
>
> Es tut mir leid, dass Sie dadurch über das Wochenende ohne die neue Lieferung auskommen müssen. Als Ausgleich lege ich Ihnen 1 kg Filterkaffee kostenlos dazu.
>
> Wenn Ihr Vorrat bis Dienstag knapp wird, geben Sie mir bitte Bescheid. Ich schaue dann, was ich kurzfristig für Sie tun kann.
>
> Viele Grüße<br>
> Paul Engel<br>
> Rösterei Kornfeld

</details>

In einem Test mit 100 Aufgaben aus allen Textsorten, die meisten davon auf Deutsch, war der Text mit themis in 60 Aufgaben besser, in 9 schlechter und in 31 gleich gut. Eine zweite Claude-Instanz hat die Fassungen dafür blind verglichen. Aufgaben, Prüfanleitung und alle Ergebnisse, auch die englischen, stehen in [docs/test](docs/test).

## Was in den Regeln steht

Am Anfang stehen Grundsätze, die für jede Textsorte gelten. Das Ergebnis steht vorn. Fehler und Risiken nennt Claude vollständig. Zahlen, Namen und Quellen stammen aus dem Auftrag oder aus einer genannten Quelle. Danach folgen je eine Tabelle mit deutschen und englischen Mustern. Zu jedem Muster steht dort, was Claude stattdessen schreibt. Eigene Abschnitte regeln Antworten im Chat, Briefe und Dokumente, werbende Texte, Code und Commits sowie Oberflächen.

Die Muster stammen aus der Wikipedia-Seite [Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing) und den offenen Regelsammlungen [stop-slop](https://github.com/hardikpandya/stop-slop) und [no-ai-slop](https://github.com/petergyang/no-ai-slop). Dazu kommen Recherchen zu deutschen Texten und zu generierten Oberflächen. Welche Regel woher kommt, steht in [docs/katalog.md](docs/katalog.md) und [docs/quellen-abgleich.md](docs/quellen-abgleich.md).

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
