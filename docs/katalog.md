# Muster-Katalog und Quellen

Dieser Katalog ist die Grundlage für `RULES.md` und hat den Stand vom 7. Oktober 2026 mit späteren Ergänzungen. Claude lädt ihn in keiner Session. Er dient zum Nachschlagen, Diskutieren und Pflegen der Regeln. Zu jedem Muster steht, wie gut es belegt ist.

Die Belegstufen sind K für eine Korpusstudie mit Zahlen, V für die Dokumentation von Anthropic oder den Systemprompt von Claude Code und P für eine Quelle aus der Praxis wie einen Skill, einen Blog oder einen Leitfaden der Wikipedia.

## 1. Warum die Regeldatei so aufgebaut ist

Die Datei ist kurz, weil Anthropic unter 200 Zeilen empfiehlt und längere Dateien die Befolgung senken. Eine Studie zu AGENTS.md-Dateien (ICLR 2026, arXiv 2602.11988) fand, dass lange generierte Kontextdateien die Erfolgsquote senken und die Kosten um 20 Prozent erhöhen. Nach IFScale (NeurIPS 2025, arXiv 2507.11538) folgt Claude Sonnet 4 bei 100 Regeln zu 94 Prozent und bei 250 Regeln zu 77 Prozent. Die Ausfälle sind stille Auslassungen. [K, V]

Die Grundsätze stehen am Anfang, weil ein Modell Anfang und Ende seines Kontexts besser erinnert als die Mitte (arXiv 2307.03172). [K]

Jedes Muster nennt seinen Ersatz. Die Studie „Semantic Gravity Wells“ (arXiv 2601.08070) zeigt, dass ein Modell bei einem Verbot stärker auf das verbotene Wort achtet als auf das „nicht“. Anthropic schreibt, dass positive Anweisungen besser wirken als Verbotslisten. [K schwach, V]

Anthropic nennt Beispiele als zuverlässiges Mittel für Ton und Format. Die Datei verzichtet trotzdem auf Beispielsätze, weil sich das Modell sonst zu eng an ihnen orientiert. [V]

Die Datei verlangt das Ergebnis zuerst und Fehler vollständig, weil Anweisungen zur Kürze nach dem Benchmark Giskard Phare die Resistenz gegen Halluzinationen um bis zu 20 Punkte senken. Das Modell erfindet dann eher eine kurze Antwort, als eine falsche Prämisse zu erklären. [K]

Die Datei nennt konkrete Schwellen statt „nur Wichtiges“, weil das Modell eine solche Anweisung laut Anthropic so wörtlich befolgt, dass es echte Befunde verschweigt. [V]

Die Datei ist in nativem Deutsch geschrieben, weil übersetzte Anweisungen nach Marco-Bench-MIF (ACL 2025) 7 bis 22 Prozent schlechter abschneiden. [K]

Die Regeln sind Kontext und damit kein erzwungener Ablauf. Anthropic behandelt CLAUDE.md und den Kontext aus Hooks als Hinweis. Eine Regel, die garantiert gelten muss, braucht einen Hook, der die Ausgaben prüft. [V]

## 2. Sprache (Prosa)

Die stärksten Signale, von vielen unabhängigen Quellen genannt:

| Muster | Beleg | Quellen |
|---|---|---|
| "Nicht X, sondern Y", auch umgekehrt als "Y statt bloß X" | K, P | Graphite: "rather than merely" 160-fach häufiger bei Claude; 11 Quellen |
| Gedankenstrich als Universal-Satzzeichen | K, P | Resende/Castilho 2026: 0 pro 1000 Token bei Menschen, 10 bis 27 bei GPT-4o. Bei neuesten Modellen rückläufig |
| Dreierreihen | K, P | 8 Quellen, CHI-Studie 2026 misst Anstieg |
| Vokabel-Cluster: delve, intricate, underscore, showcase, pivotal, crucial, tapestry, testament, landscape, realm, meticulous | K | Kobak et al. Sci Adv 2025 (14 Mio. Abstracts), Liang et al. 2024, Juzek/Ward COLING 2025. Kurze Haltbarkeit: "delve" ist 2026 wieder auf Normalniveau, "underscore" steigt weiter |
| Bedeutungs-Aufblasen ("plays a pivotal role", "stands as a testament") | P | Wikipedia WP:AITELL, humanizer-Skill |
| Partizip-Anhänger ("..., highlighting the importance of") | P | Wikipedia, humanizer, Reinhart et al. PNAS 2025 |
| "**Begriff:** Satz"-Listen, Fett überall | P | Wikipedia nennt es die Signatur-Listenform |
| Schlussformeln ("In summary", "Zusammenfassend lässt sich sagen") | P | Wikipedia, GIGA, STRATO, Cornelsen |
| Didaktische Hedges ("It's important to note", "Es ist wichtig zu beachten") | P | 9 Quellen inkl. deutsche |
| Chat-Reste ("Certainly", "Great question", "I hope this helps", "Would you like") | P, V | Wikipedia; OpenAI-Rollback April 2025 wegen Schmeichelei; Anthropic-Analyse Mai 2026: 9 Prozent Sykophanz, 18 Prozent bei Widerspruch |
| Vage Quellen ("Experten sagen", "Studien zeigen") | P | Wikipedia, humanizer, 3 weitere |
| Gleichförmiger Rhythmus, perfekte Grammatik, keine konkreten Details | K | Stylometrie-Studie arXiv 2507.00838; Russell et al. ACL 2025: Expertendetektoren nennen Satzbau in 36 Prozent der Fälle |
| Verstärker "wirklich", "echt", "leise/quietly", "deliberate", "measured" | K | Graphite 2026: Claude Opus 5 "deliberate" 26-fach, "measured" 4-fach über Menschenniveau |
| Umschreibungen für "ist" ("serves as", "stands as", "dient als") | K, P | Wikipedia: 10 Prozent weniger is/are in akademischen Texten 2023 |
| Rhetorische Frage als Übergang, "Der Punkt ist", "Ganz ehrlich?" | P | humanizer, coachway |

Neuere Modelle haben eigene Idiolekte. Graphite misst 2026: Claude Opus 5 "deliberate", Gemini 3.1 Pro "profound" (25-fach), "incredibly" (18-fach). Die Wortliste in `RULES.md` sollte jährlich geprüft werden.

Quellen: https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing, https://github.com/blader/humanizer, https://graphite.io/five-percent/ai-tells, https://ruben.substack.com/p/its-not-x-its-y, https://arxiv.org/abs/2406.07016, https://arxiv.org/abs/2404.01268, https://arxiv.org/abs/2412.11385, https://arxiv.org/abs/2609.23090, https://aclanthology.org/2026.stygenai-1.5.pdf, https://arxiv.org/abs/2507.00838, https://arxiv.org/abs/2501.15654

## 3. Deutsch-spezifisch

Für Deutsch gibt es keine Korpusstudie, nur Journalismus und Anbieter-Blogs. Die Muster decken sich aber über mehrere Quellen:

- Signalphrasen: "Es ist wichtig zu beachten", "Zusammenfassend lässt sich sagen", "Abschließend lässt sich festhalten", "In der heutigen schnelllebigen Welt", "Darüber hinaus", "Vor diesem Hintergrund", "Im Kern", "Mit anderen Worten", "Nicht zuletzt", "spielt eine entscheidende Rolle".
- Buzzwords: "integraler Bestandteil", "vielfältige Möglichkeiten", "auf das nächste Level heben", "ganzheitlich", "nahtlos", "transformieren", "Game-Changer", "entfesseln", "Reise", "eintauchen", "spannend".
- Wörtliche Übersetzungen englischer KI-Wörter (Pangram DE): "Tauche ein" (delve), "Wandteppich" (tapestry), "Landschaft" (landscape), "dient als Zeugnis" (testament), "beleuchten", "wertvolle Einblicke", "lebendiges Mosaik", "navigieren".
- Anglizismen aus dem Alltag, die als Übersetzung auffallen: "am Ende des Tages", "das macht Sinn", "hier ist der Deal", "ein Stück weit", "lass uns".
- Satzmuster: "nicht nur ..., sondern auch", "Es geht nicht um X. Es geht um Y.", Dreierreihen, Fragenketten, Nominalstil, Absatz pro Satz, Doppelpunkt-Überschriften.
- Nicht belegt, aber plausibel: "Gerne!", "Natürlich!", "Ich hoffe, das hilft", "Tolle Frage". Sie sind die deutschen Entsprechungen belegter englischer Muster.

Quellen: https://www.giga.de/artikel/mit-diesen-floskeln-lassen-sich-chatgpt-ki-texte-erkennen/ (223 Floskeln, unbelegt), https://t3n.de/news/ki-texte-erkennen-5-anzeichen-die-dir-verraten-ob-ein-chatbot-am-werk-war-1745388/, https://www.strato.de/homepage-baukasten/ki-texte-erkennen/, https://www.pangram.com/de/blog/walking-through-ai-phrases, https://coachway.io/de/chatgpt-texte-menschlich-umschreiben/

## 4. Code

Muster mit breitem Konsens (fünf und mehr unabhängige Quellen, darunter Claude Codes eigener Systemprompt):

| Muster | Quellen |
|---|---|
| Kommentare, die den Code nacherzählen | Systemprompt, bavanws, aislop, no-slop, 22-patterns, codersera, HN |
| Abstraktion für eine Verwendung, Helper auf Vorrat, Factories, Wrapper | Systemprompt, Karpathy-CLAUDE.md, 22-patterns, codersera, hackernoon, aislop |
| Ungefragte Refactorings, Umbenennungen, Umformatierungen | Systemprompt, Karpathy, codersera, Donahoe, Anbeeld, HN, 22-patterns |
| Defensive Prüfungen für unmögliche Zustände | Systemprompt, Karpathy, codersera, builder.io, 22-patterns |
| Geschluckte Exceptions, stille Fallbacks, catch-log-weiter | aislop, 22-patterns, hackernoon, aipatternbook, Anthropic best practices |
| Typ-Umgehungen (`any`, `@ts-ignore`, `# type: ignore`, `# noqa`) | aislop, builder.io, hackernoon, daymondhyper |
| "Fertig" ohne Testlauf nach der letzten Änderung | Systemprompt, Anthropic best practices, specstory-Audit (65 bis 69 Prozent der "fertig"-Meldungen ohne grünen Lauf dahinter), Karpathy, Donahoe |
| Doppelte Helper statt Wiederverwendung | builder.io, hackernoon, aislop, SlopCodeBench |
| Tests ohne Assertion, Mock des getesteten Systems, Tests, die den Bug spiegeln | aislop, hackernoon, daymondhyper, 22-patterns, aipatternbook |
| TODOs und Platzhalter für Dinge im Umfang | aislop, no-slop, Systemprompt |
| Kompatibilitäts-Hacks (`_unused`, Re-Exports, "removed"-Kommentare) | Systemprompt, codersera |
| Emojis und Werbe-Register in README, Logs, Commits | HN, no-slop, Systemprompt, Donahoe |

Akademisch: SlopCodeBench (arXiv 2603.24755) misst strukturelle Erosion in 77 Prozent und wachsende Ausführlichkeit in 75 Prozent der Agenten-Verläufe. Horikawa et al. (arXiv 2603.13723): bei 403 "Lesbarkeits"-Commits von Agenten sank der Maintainability Index in 56 Prozent der Fälle.

Nicht belegt: "robust/enhanced/improved" als Bezeichner-Namen (nur als Prosa-Register belegt), "fragt für Triviales um Erlaubnis".

Quellen: https://code.claude.com/docs/en/best-practices, https://github.com/Piebald-AI/claude-code-system-prompts (Spiegel der Systemprompt-Fragmente), https://raw.githubusercontent.com/forrestchang/andrej-karpathy-skills/main/CLAUDE.md, https://gist.github.com/bavanws/123e0343f8a79cec825d9141124a0a83, https://github.com/scanaislop/aislop/blob/main/docs/rules.md, https://github.com/saschb2b/skills/tree/main/skills/productivity/no-slop, https://github.com/TheRealSeanDonahoe/agents-md, https://github.com/Anbeeld/AGENTS.md, https://dev.to/kirankunapuli/the-22-patterns-of-ai-code-slop-and-how-to-delete-13de, https://codersera.com/blog/how-to-stop-claude-code-over-engineering-2026/, https://www.builder.io/blog/de-slop-ai-generated-codebase, https://specstory.com/learning/verification/coding-agent-done-claims

## 5. Commits und PRs

- Body als Dateiliste oder Diff-Checkliste (no-slop, 22-patterns).
- Vergangenheitsform oder dritte Person im Betreff ("Added", "This commit adds") statt Imperativ.
- Mechanik statt Absicht: beschreibt was, nicht warum.
- Aufgesetzte Konventionen (feat/fix/chore, gitmoji) in Repos, die sie nicht nutzen, oft mit falschem Typ.
- Leere Vorlagen-Abschnitte, vorab angehakte Checklisten, "Tested to ensure everything works as expected".
- GitHub (Februar 2026) führte einen Schalter gegen KI-PRs ein, weil sie Richtlinien ignorieren, kosmetische Änderungen einreichen und nach Review-Anfragen verwaisen.

Quellen: no-slop (commits-and-prs.md), https://www.theregister.com/2026/02/03/github_kill_switch_pull_requests_ai/, https://github.com/ghostty-org/ghostty/blob/main/AI_POLICY.md

## 6. Oberflächen

Die Muster zu Marketingseiten in `RULES.md` (Pill über der Hauptüberschrift, Eyebrow, Raster aus drei Spalten, Logoreihe) stammen aus eigener Beobachtung von Generator-Ausgaben.

Die Muster zu Komponenten stammen aus einem LinkedIn-Beitrag von Sandro M. (Product Design und UX/UI) vom Oktober 2026. Er ließ ein Modell zehn Komponenten einmal im üblichen Generator-Stil und einmal so gestalten, wie ein Mensch es täte. Die Generator-Fassungen enthielten Farbverläufe, Hilfetexte zu selbsterklärenden Feldern, Fortschrittsbalken, senkrechte Trenner, Pills, Icons und Metadaten zu jeder Angabe. Seine Erklärung lautet, dass ein Modell lieber eine Angabe doppelt nennt, als eine zu vergessen. Ein Kommentar unter dem Beitrag fasst den Unterschied so zusammen: Das Modell fragt, was noch hineinpasst. Der Mensch fragt, was er weglassen kann. Der Beitrag ist eine Einzelbeobachtung ohne Messung.

Karten in Karten und Karten als Standardbehälter sind unter Designern als Erkennungszeichen für KI-Oberflächen breit beschrieben, aber nicht gemessen. Die einzige Messung (Krebs, 1.500 Seiten aus Show HN) prüft farbige Kartenränder und gleichförmige Feature-Karten, aber keine Verschachtelung. Die Warnung ist älter als KI: Refactoring UI rät zu Abstand statt Rahmen, Material Design und die Nielsen Norman Group empfehlen Listen für gleichartige Inhalte. Einige Design-Systeme wie Genesys Spark erlauben verschachtelte Karten in wenigen Ebenen.

Quellen: https://cerebras.ai/blog/generating-beautiful-uis, https://www.thefountaininstitute.com/blog/signs-vibe-coded-ui, https://impeccable.style/slop, https://github.com/pbakaus/impeccable, https://instagit.com/Nutlope/hallmark/hallmark-anti-patterns-detected.md, https://github.com/anthropics/skills/blob/main/skills/frontend-design/SKILL.md, https://adriankrebs.ch/blog/design-slop/, https://www.nngroup.com/articles/cards-component/, https://m1.material.io/components/cards.html, https://anvil.servicetitan.com/docs/web/components/card/design, https://spark.genesys.com/latest/components/layout-and-containers/card/usage-2m0T8zL6

Eine ausführliche Recherche zu visuellen Erkennungszeichen mit 23 Katalogen, zwei Messungen und 48 Regelvorschlägen steht in `docs/reports/Erkennungszeichen von KI Oberflächen.md`. Übernommen wurden die Vorschläge, die ein Erkennungszeichen betreffen und gut belegt sind. Verworfen wurden feste Maße, allgemeines Designwissen, Detailregeln zur Barrierefreiheit, CSS-Technik und Prüfschritte, die zusätzliche Werkzeuge voraussetzen.

## 7. Pflege

- Eine Regel kommt dazu, wenn derselbe Fehler zweimal auftritt. Eine Regel fliegt raus, wenn das Modell sie ohnehin befolgt (Anthropic, Boris Cherny).
- Nach Änderungen an `RULES.md` eine neue Session starten; laufende Sessions lesen die Datei nicht nach.
- Testvorschlag: fünf feste Prompts im Repo (Chat-Antwort, Confluence-Seite, Commit, Docstring, Landingpage), vor und nach einer Regeländerung ausführen, Ausgaben auf Gedankenstriche, "nicht X sondern Y", Dreierreihen und Floskeln greppen.
- Wortlisten altern. Die Vokabel-Cluster von 2024 (delve, tapestry) sind 2026 teils verschwunden, neue Modelle haben neue Lieblingswörter. Einmal im Jahr gegen Graphite und Wikipedia WP:AITELL abgleichen.
