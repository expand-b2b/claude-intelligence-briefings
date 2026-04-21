# Claude Intelligence Briefing - 2026-04-21

> Modell: Claude Sonnet 4.6 | Quellen: GitHub CHANGELOG, Anthropic News, Reddit r/ClaudeCode, WebSearch

---

## Neue Releases

### Claude Code CLI

**Neueste Version: 2.1.116** (aktuell im CHANGELOG)

Relevante Änderungen der letzten Versionen:

- **Bugfix:** 429-Rate-Limit-Fehler auf Bedrock, Vertex und Azure Foundry behoben
- **Bugfix:** Feedback-Surveys erschienen doppelt nach dem Schließen eines Dialogs
- **Bugfix:** Bare URLs in Bash/PowerShell/MCP-Ausgaben waren nicht anklickbar bei Zeilenumbruch
- **Neu:** Befehl `/tui` und Setting `tui` für flackerfreies Rendering im laufenden Chat
- **Neu:** `Ctrl+O` schaltet jetzt zwischen Normal- und Verbose-Transcript um. Focus-Ansicht hat neuen eigenen Befehl `/focus`

### Claude Code GitHub Action v1.0

Offizieller GA-Release der GitHub Action. Vereinfachte Konfiguration, mehr Flexibilität für CI-Workflows. Relevant für automatisierte PR-Reviews und agentengestützte CI-Pipelines.

### Claude Opus 4.7

Allgemein verfügbar. Verbesserungen gegenüber Opus 4.6 vor allem im Bereich Advanced Software Engineering. Achtung: Community meldet Qualitäts-Regression ab ca. 15. April (siehe Community-Highlights).

### Claude Sonnet 4.6

Neuestes Balanced-Modell. Verbesserte agentengestützte Suchleistung bei geringerem Token-Verbrauch. Unterstützt Extended Thinking und 1M-Token-Kontext (Beta).

### Claude Haiku 3 deprecated

Abkündigung des Modells `claude-3-haiku-20240307` mit Retirement-Datum 19. April 2026. Migration auf Claude Haiku 4.5 empfohlen.

---

## Blog / Ankündigungen

### Claude Mythos Preview + Project Glasswing (7. April 2026)

Anthropic veröffentlichte eine Preview eines neuen Modells namens "Mythos" über red.anthropic.com. Besondere Stärke bei Computer-Security-Aufgaben. Gleichzeitig wurde Project Glasswing gestartet: Einsatz von Mythos Preview zur Absicherung kritischer Software-Infrastruktur.

**Relevanz:** Noch kein Produkt, aber möglicher Vorläufer eines spezialisierten Security-Modells.

### Claude Managed Agents (Public Beta)

Vollständig verwalteter Agent-Harness für autonome Claude-Ausführung. Kein eigenes Scaffolding nötig. Standardisierte Laufzeitumgebung für Agenten über die API.

**Relevanz für Cowork OS:** Direkt anwendbar für langlebige, autonome Sales-Development-Workflows ohne eigene Infrastruktur.

### ant CLI

Neues Kommandozeilen-Tool für die Claude API. Ergänzt Claude Code um einen leichtgewichtigen direkten API-Client.

### Neues Claude Desktop App (14. April 2026)

Überarbeitete Multi-Session-Oberfläche mit Sidebar, integriertem Terminal und Drag-and-Drop-Panes.

### Amazon-Partnerschaft (20. April 2026)

Anthropic sicherte sich bis zu 5 GW Rechenkapazität bei Amazon (Trainium2 und Trainium3). Run-Rate-Revenue überstieg $30 Mrd. (vorher $9 Mrd. Ende 2025). Signalisiert langfristige Kapazitätsstabilität.

### Google/Broadcom-Partnerschaft (6. April 2026)

Mehrere Gigawatt nächster Compute-Generation. Zweite Absicherung der Trainings- und Inferenz-Kapazität neben AWS.

---

## API-Feature-Updates

- **Models API:** `GET /v1/models` und `GET /v1/models/{model_id}` liefern jetzt `max_input_tokens`, `max_tokens` und ein `capabilities`-Objekt
- **Extended Thinking:** Neues Feld `thinking.display: "omitted"` lässt Thinking-Content aus der Response weglassen (schnelleres Streaming)
- **Web Search + Tool Calling:** Jetzt allgemein verfügbar (GA). Dynamisches Filtern per Code Execution
- **Code Execution gratis** bei Nutzung zusammen mit Web Search oder Web Fetch

---

## Community-Highlights

### Opus 4.7 Qualitäts-Regression (GitHub Issue #49244)

Gemeldete signifikante Verschlechterung ab ca. 15. April 2026. Beschreibungen: Modell erfindet Dateien, verteidigt halluzinierte Test-Ergebnisse über 10 Turns, prüft harmlose PowerPoint-Templates auf Malware. Community-Reaktion stark negativ (Spitzname "Gaslightus 4.7").

**Empfehlung:** Opus 4.7 vorerst nicht für autonome, langläufige Workflows einsetzen. Sonnet 4.6 als sicherere Alternative.

### Claude Code Source Leak (31. März 2026)

Version 2.1.88 wurde mit einer 59,8 MB großen JavaScript-Source-Map auf npm veröffentlicht. Enthielt 1.900 TypeScript-Dateien, 512.000+ Zeilen Code inklusive aller Slash-Commands, Built-In-Tools und der vollständigen Agent-Orchestrierung. Inzwischen entfernt.

**Relevanz:** Kein Sicherheitsproblem für Nutzer. Für die Community lehrreich bezüglich interner Architektur.

### Cost-Quality-Debatte: Claude Code vs. Codex

Größtes laufendes Diskussionsthema. Claude Code gewinnt 67% der Blind-Tests zur Code-Qualität, aber Nutzer berichten von zu schnell erschöpften Usage-Limits für den Daily-Driver-Einsatz. Codex wird als zuverlässiger verfügbar beschrieben.

### Subreddit-Wachstum

r/ClaudeCode: 4.200+ wöchentliche Beitragende Anfang 2026, mehr als dreimal so viele wie r/Codex.

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Claude Managed Agents (Public Beta) | Hoch | Stunden | Hoch | Hoch |
| GitHub Action v1.0 | Hoch | Stunden | Mittel | Mittel-Hoch |
| `/tui` + `/focus` Befehle | Mittel | Minuten | Niedrig | Mittel |
| Web Search + Code Execution GA | Hoch | Stunden | Hoch | Hoch |
| Extended Thinking `display: omitted` | Mittel | Minuten | Mittel | Mittel |
| Models API Capability Fields | Mittel | Stunden | Mittel | Mittel |
| Opus 4.7 Qualitäts-Regression | Hoch (Risiko) | Minuten | Hoch (Vermeidung) | Sofort |
| Haiku 3 Deprecation | Hoch | Minuten | Mittel | Sofort |
| ant CLI | Niedrig | Minuten | Niedrig | Niedrig |

---

## Empfohlene Aktionen

1. **Sofort:** Opus 4.7 in bestehenden Workflows durch Sonnet 4.6 ersetzen, bis die Regression behoben ist. GitHub Issue #49244 beobachten.
2. **Sofort:** Haiku 3 Referenzen in CLAUDE.md und bestehenden Skills auf Haiku 4.5 aktualisieren.
3. **Diese Woche:** Claude Managed Agents Public Beta testen. Eignet sich als Laufzeitumgebung für autonome Sales-Development-Agenten ohne eigene Infrastruktur.
4. **Diese Woche:** Web Search Tool (jetzt GA) in relevante Skills integrieren. Besonders nützlich für Lead-Recherche und Marktscans.
5. **Optional:** GitHub Action v1.0 evaluieren für automatisierte PR-Reviews im claude-intelligence-briefings Repository.
6. **Beobachten:** Claude Mythos Preview auf red.anthropic.com verfolgen. Könnte Security-relevante Anwendungsfälle eröffnen.

---

## Keine Aktion nötig

- **Amazon/Google-Compute-Partnerschaften:** Strategisch relevant, aber kein Handlungsbedarf für den täglichen Betrieb.
- **Source Leak 2.1.88:** Inzwischen bereinigt, kein Risiko für Nutzer.
- **ant CLI:** Kein Mehrwert gegenüber Claude Code für bestehende Workflows.
- **Desktop App Redesign:** Kosmetische Verbesserung, kein Einfluss auf CLI-basierte Workflows.

---

*Quellen: [GitHub Releases](https://github.com/anthropics/claude-code/releases) | [CHANGELOG](https://github.com/anthropics/claude-code/blob/main/CHANGELOG.md) | [Anthropic News](https://www.anthropic.com/news) | [API Docs](https://docs.anthropic.com/en/release-notes/overview) | [Claude Mythos](https://red.anthropic.com/2026/mythos-preview/) | [Amazon Partnership](https://www.anthropic.com/news/anthropic-amazon-compute) | [morphllm Claude Code Reddit](https://www.morphllm.com/claude-code-reddit)*
