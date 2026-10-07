# Muster-Katalog und Quellen

Stand: 2026-10-07. Dieser Katalog ist die Grundlage für `RULES.md`. Er wird nicht in Sessions geladen, sondern dient zum Nachschlagen, Diskutieren und Pflegen der Regeln. Pro Muster steht, wie gut es belegt ist.

Belegstufen: **K** = Korpusstudie mit Zahlen, **V** = Anthropic-Dokumentation oder Claude-Code-Systemprompt, **P** = Praktiker-Quelle (Skill, Blog, Wikipedia-Leitfaden).

## 1. Warum die Regeldatei so aufgebaut ist

- **Kurz.** Anthropic empfiehlt unter 200 Zeilen; längere Dateien senken die Befolgung. Eine Studie zu AGENTS.md-Dateien (ICLR 2026, arXiv 2602.11988) fand, dass lange, generierte Kontextdateien die Erfolgsquote senken und die Kosten um 20 Prozent erhöhen. IFScale (NeurIPS 2025, arXiv 2507.11538): Claude Sonnet 4 folgt 100 Regeln zu 94 Prozent, 250 Regeln zu 77 Prozent, Ausfälle sind stille Auslassungen. [K, V]
- **Wichtigstes zuerst.** Anfang und Ende des Kontexts werden am besten erinnert, die Mitte am schlechtesten (arXiv 2307.03172). Darum stehen die fünf Kernregeln oben. [K]
- **Ersatz statt Verbot.** "Semantic Gravity Wells" (arXiv 2601.08070): das Modell achtet beim Verbot stärker auf das verbotene Wort als auf das "nicht". Anthropic: positive Beispiele wirken besser als Verbotslisten. Darum nennt jedes Muster seinen Ersatz. [K schwach, V]
- **Beispiele.** Anthropic nennt drei bis fünf Beispiele als zuverlässigstes Mittel für Ton und Format. [V]
- **Kein "fass dich kurz".** Giskard Phare: Kürze-Anweisungen senken die Halluzinationsresistenz um bis zu 20 Punkte, das Modell erfindet lieber eine kurze Antwort als eine falsche Prämisse zu erklären. Darum "Ergebnis zuerst, Fehler vollständig" statt "kurz". [K]
- **Kein "nur Wichtiges".** Laut Anthropic befolgt das Modell das so wörtlich, dass es echte Befunde verschweigt. Darum konkrete Schwellen ("alles, was der Leser zum Handeln braucht"). [V]
- **Deutsch, nativ.** Übersetzte Anweisungen schneiden 7 bis 22 Prozent schlechter ab als nativ formulierte (Marco-Bench-MIF, ACL 2025). Deutsche Beispiele sind der Inhalt der Datei und lassen sich nicht auf Englisch ausdrücken. [K]
- **Regeln sind Kontext, kein Zwang.** Anthropic: CLAUDE.md und Hook-Kontext werden als Hinweis behandelt, nicht als erzwungene Konfiguration. Was garantiert gelten muss, braucht einen Hook, der Ausgaben prüft. [V]

Quellen: https://code.claude.com/docs/en/best-practices, https://code.claude.com/docs/en/memory, https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/claude-prompting-best-practices, https://www.humanlayer.dev/blog/writing-a-good-claude-md, https://www.giskard.ai/knowledge/good-answers-are-not-necessarily-factual-answers-an-analysis-of-hallucination-in-leading-llms

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

Die UI-Muster in `RULES.md` (Pill über Hero, Eyebrow-Label, Verlaufstext, Glas-Karten, Drei-Spalten-Grid, Logoreihe, Zahlenband) stammen aus eigener Beobachtung von Generator-Ausgaben, nicht aus einer der recherchierten Quellen. Sie sind als Erfahrungsregel aufgenommen und sollten bei Gelegenheit mit Beispielen aus eigenen Projekten belegt werden.

## 7. Pflege

- Eine Regel kommt dazu, wenn derselbe Fehler zweimal auftritt. Eine Regel fliegt raus, wenn das Modell sie ohnehin befolgt (Anthropic, Boris Cherny).
- Nach Änderungen an `RULES.md` eine neue Session starten; laufende Sessions lesen die Datei nicht nach.
- Testvorschlag: fünf feste Prompts im Repo (Chat-Antwort, Confluence-Seite, Commit, Docstring, Landingpage), vor und nach einer Regeländerung ausführen, Ausgaben auf Gedankenstriche, "nicht X sondern Y", Dreierreihen und Floskeln greppen.
- Wortlisten altern. Die Vokabel-Cluster von 2024 (delve, tapestry) sind 2026 teils verschwunden, neue Modelle haben neue Lieblingswörter. Einmal im Jahr gegen Graphite und Wikipedia WP:AITELL abgleichen.
