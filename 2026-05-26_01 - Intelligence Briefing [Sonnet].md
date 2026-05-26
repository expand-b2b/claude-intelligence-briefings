# Claude Intelligence Briefing - 2026-05-26

## Neue Releases

### Claude Code 2.1.150 (23. Mai 2026)
Interne Infrastrukturverbesserungen, keine nutzerseitigen Änderungen.

### Claude Code 2.1.149 (22. Mai 2026)
- `/usage` zeigt jetzt Aufschlüsselung nach Kategorie: Skills, Subagents, Plugins, MCP-Server
- `/diff` Detailansicht per Tastatur scrollbar
- Markdown-Ausgabe rendert GFM-Checkboxen
- Pinned Background Sessions bleiben bei Inaktivität erhalten und werden beim Update an Ort und Stelle neugestartet
- `/simplify` wurde zu `/code-review` umbenannt, meldet Korrektheitsfehler nach wählbarer Detailtiefe

### Claude Code 2.1.148 (7. Mai 2026)
- Neue Einstellung `worktree.baseRef`: bestimmt, ob Worktrees von `origin/<default>` oder lokalem HEAD abzweigen
- Managed Settings für Linux/WSL: `sandbox.bwrapPath` und `sandbox.socatPath`
- Bugfix: Bash-Tool lieferte für einige Nutzer Exit Code 127 bei jedem Befehl (Regression aus 2.1.147)

### Claude Opus 4.7 (4. Mai 2026)
- Modell-ID: `claude-opus-4-7`
- Deutlich verbesserte Vision-Fähigkeiten
- Höhere Kreativqualität bei professionellen Aufgaben (Interfaces, Slides, Dokumente)
- Automatische Erkennung und Blockierung von Hochrisiko-Cybersecurity-Anfragen

---

## Blog / Ankündigungen

### Claude für Kleinunternehmen (6. Mai 2026)
Fertige Konnektoren und Workflows für QuickBooks, PayPal, HubSpot, Canva, DocuSign, Google Workspace und Microsoft 365. Fokus auf sofort einsatzbereite Automatisierung ohne Entwicklungsaufwand.

### Code with Claude 2026 Event (6. Mai 2026, San Francisco)
Anthropic stellte den Managed Agents Stack vor: Dreaming, Multi-Agent-Orchestrierung, Outcomes und Webhooks. Neue Developer-Experience-Features: Remote Control (Session auf einem Gerät starten, auf einem anderen fortsetzen), überarbeitete Desktop-GUI mit Split Views. Anthropic berichtete 80x annualisiertes Umsatzwachstum im Q1 2026.

### Plugin Marketplace (öffentliche Beta, ab ~22. Mai 2026)
Claude Code unterstützt nun Plugins über den `/plugin`-Befehl. Kategorien: Subagents, MCP-Server, Hooks. Offizieller Anthropic-Marketplace mit verifizierten Plugins, Community-Plugins über Drittanbieter-Marketplaces. Ein Ökosystem listet bereits 83 Plugins, 191 Agents, 155 Skills und 102 Commands.

### PwC-Partnerschaft erweitert (14. Mai 2026)
PwC rollt Claude Code und Cowork für US-Teams aus. Joint Center of Excellence geplant. 30.000 PwC-Mitarbeitende sollen auf Claude zertifiziert werden.

### KPMG Digital Gateway Powered by Claude (19. Mai 2026)
Globale Allianz mit Fokus auf Steuerberatung und Private Equity. Erster großer Buchprüfer mit eigenem Claude-basierten Mandantenportal.

### Claude Cowork vertikale Bundles
- Legal Bundle: 12. Mai 2026
- Small Business Bundle: 13. Mai 2026
- Marketing Ops Bundle: 18. Mai 2026

### Claude bleibt werbefrei
Anthropic hat öffentlich erklärt, warum Werbeanreize mit einem genuinen KI-Assistenten unvereinbar sind.

---

## Community-Highlights

- `shanraisshan/claude-code-best-practice` ist aktuell das meistzitierte Repository für Claude Code Patterns auf Reddit und GitHub
- Diskussion um Hooks als deterministische Guardrails (im Gegensatz zu CLAUDE.md-Anweisungen, die nur beratend sind)
- `wshobson/agents`: Multi-Harness Plugin-Marketplace für Claude Code, Codex CLI, Cursor, OpenCode und Gemini CLI
- `shinpr/claude-code-workflows`: Produktionsfertige Entwicklungs-Workflows mit spezialisierten Agents
- GTM Agents: Plugin-Marketplace-Ansatz speziell für Revenue Teams (Florian Narr)

Quellen: [Releasebot Claude Code](https://releasebot.io/updates/anthropic/claude-code) | [Claude Code Changelog](https://code.claude.com/docs/en/changelog) | [InfoQ Code with Claude](https://www.infoq.com/news/2026/05/code-with-claude/) | [Plugin Marketplace Guide](https://www.agensi.io/learn/claude-code-plugin-marketplace-guide)

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| `/code-review` Befehl (ex `/simplify`) | Hoch | Minuten | Mittel | Hoch |
| `/usage` Kategorie-Aufschlüsselung | Hoch | Minuten | Mittel | Hoch |
| Plugin Marketplace (Beta) | Hoch | Stunden | Hoch | Hoch |
| Managed Agents Stack | Hoch | Tage | Hoch | Mittel |
| `worktree.baseRef` Einstellung | Mittel | Minuten | Niedrig | Mittel |
| Claude Cowork Marketing Ops Bundle | Hoch | Stunden | Hoch | Hoch |
| Claude für Kleinunternehmen | Mittel | Stunden | Hoch | Mittel |
| PwC-Partnerschaft | Niedrig | Keine | Mittel | Niedrig |
| KPMG Digital Gateway | Niedrig | Keine | Mittel | Niedrig |

---

## Empfohlene Aktionen

1. **Plugin Marketplace erkunden**: `/plugin` in einer Claude Code Session testen, verfügbare MCP-Server und Skills für EXPAND B2B Workflows identifizieren. Besonders relevant: Code Intelligence, CRM-Konnektoren (HubSpot).

2. **`/code-review` in Workflow integrieren**: Den umbenannten Befehl in bestehende Review-Hooks aufnehmen. Eignet sich als automatischer Schritt nach Codeänderungen.

3. **`/usage` Aufschlüsselung nutzen**: Kostentransparenz pro MCP-Server und Skill als Basis für Optimierungsentscheidungen im Cowork OS.

4. **Claude Cowork Marketing Ops Bundle evaluieren**: Für EXPAND B2B Sales Development direkt relevant. Prüfen, welche Workflows sich mit bestehenden HubSpot/Outreach-Prozessen überschneiden.

5. **Managed Agents Stack beobachten**: Webhook-Integration und Proactive Workflows sind mittelfristig der Schlüssel für autonome B2B-Outreach-Automatisierung. Dokumentation lesen, Pilotprojekt planen.

6. **Claude Opus 4.7 testen**: Verbesserte Vision-Fähigkeiten für Slide- und Dokument-Generierung in Kundenprojekten prüfen.

---

## Keine Aktion nötig

- **PwC- und KPMG-Partnerschaften**: Marktrelevanz als Indikator für Enterprise-Akzeptanz notiert, aber kein direkter Handlungsbedarf.
- **Claude bleibt werbefrei**: Positionierungsaussage ohne operativen Einfluss.
- **Claude Code 2.1.150**: Nur interne Änderungen, kein Handlungsbedarf.
