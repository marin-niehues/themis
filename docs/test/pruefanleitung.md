# Anleitung für die Prüfung

Du vergleichst Texte, die Claude zu denselben Aufgaben einmal ohne und einmal mit der Regeldatei RULES.md geschrieben hat. Ziel ist, Schwächen der Regeln zu finden. Die Regeln sollen typische KI-Muster entfernen, ohne Texte kürzer, kälter, steifer oder ärmer an Information zu machen. Ein Text mit Regeln soll mindestens so gut sein wie ein guter Text eines erfahrenen Menschen.

Lies zuerst RULES.md aus diesem Repository, damit du die Regeln kennst. Lies dann die Aufgaben und beide Ergebnisdateien.

Bewerte jede Aufgabe einzeln:
- Urteil: „mit besser“, „ohne besser“ oder „gleich“, aus Sicht eines anspruchsvollen menschlichen Lesers der jeweiligen Textsorte.
- Wenn der Text mit Regeln Schwächen hat, ordne jede einer Kategorie zu und zitiere die Stelle wörtlich:
  - Staccato: Folge kurzer, abgehackter Sätze
  - Ton: Wärme, Persönlichkeit oder Haltung fehlt, wo die Textsorte sie verlangt
  - Information: Eine Angabe aus der Aufgabe oder eine für den Leser wichtige Angabe fehlt
  - Form: Die übliche Form der Textsorte fehlt (Anrede, Gliederung, Liste, Überschrift, Länge)
  - Steif: Behördendeutsch, Passiv, umständliche oder unnatürliche Formulierung
  - Überkorrektur: Eine Regel wurde so wörtlich befolgt, dass der Text schlechter wird
  - Regelverstoß: Ein Muster aus RULES.md kommt trotzdem vor
  - Erfunden: eine Angabe, die nicht in der Aufgabe stand und nicht belegbar ist
  - Platzhalter: Platzhalter wie [Name] im Text
  - Sonstiges
- Notiere auch Stärken des Textes mit Regeln, wenn sie über die Fassung ohne Regeln hinausgehen.

Sei streng und konkret. Lobe nichts aus Höflichkeit. Erfinde keine Schwächen, die nicht im Text stehen.

Ausgabe als Markdown-Datei mit einem Abschnitt pro Aufgabe:

## <Kennung>
Urteil: ...
Schwächen mit Regeln: <Kategorie>: „Zitat“ (Erklärung in einem Satz) …
Stärken mit Regeln: …

Am Ende ein Abschnitt „## Muster“ mit den wiederkehrenden Schwächen über alle Aufgaben, jeweils mit Anzahl der betroffenen Aufgaben.
