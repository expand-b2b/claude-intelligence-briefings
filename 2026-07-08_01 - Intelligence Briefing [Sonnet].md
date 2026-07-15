# Claude Intelligence Briefing - 2026-07-08

## Neue Releases

### Claude Code 2.1.202 (6. Juli 2026)
Einstellung "Dynamic Workflow Size" in /config (small/medium/large Agent-Anzahl für dynamische Workflows). OpenTelemetry-Attribute für Workflow-Runs. Verbessertes `/review` mit schnellem Single-Pass. Diverse Bugfixes: Inline-Suche, Remote Control, Dateianhänge, Voice Dictation, MCP-Fehlermeldungen.

### Claude Code 2.1.201 und 2.1.200 (3. Juli 2026)
Keine automatische Fortsetzung bei AskUserQuestion-Dialogen. "Manual" Permission Mode jetzt als Standard, sichtbar über ein graues Pause-Icon im Footer. Crash-Fixes für Background Sessions.

### Claude Code 2.1.199 (2. Juli 2026)
Stacked Slash-Skill-Aufrufe bis zu 5 hintereinander möglich. Streaming-Responses mit Partial Output. Verbesserte SSL-Fehlerbehandlung und Retry-Logik. Background-Agent Daemon-Fixes auf Linux.

### Claude Code 2.1.198 (1. Juli 2026)
Subagents laufen jetzt standardmäßig im Hintergrund. Claude in Chrome allgemein verfügbar. Neuer `/dataviz` Skill eingeführt. AWS Platform Gateway Support. Notifications für Agenten-Ereignisse (`agent_needs_input` / `agent_completed`).

### Claude Code 2.1.197 (30. Juni 2026)
Claude Sonnet 5 ist jetzt das Standard-Modell mit 1M-Token-Kontextfenster. Promotional Pricing: $2/$10 pro Mtok bis 31. August 2026. Wichtig: Update auf 2.1.197 oder höher erforderlich.

## Blog / Ankündigungen

### Claude Cowork Expansion (7. Juli 2026)
Cowork ist jetzt als Smartphone-App und Web-App verfügbar. Die wichtigste Neuerung: Cowork läuft weiter, auch wenn keine eigenen Geräte online sind. Neuer Microsoft 365 Write-Tools-Connector: Entwurf und Versand von E-Mails, Kalender-Management, Erstellung und Bearbeitung von OneDrive- und SharePoint-Dateien. Relevanz für B2B: direkt nutzbar für Kunden mit M365-Umgebung.
Quelle: [Yahoo Finance / Anthropic](https://finance.yahoo.com/technology/article/anthropic-says-customers-are-using-claude-cowork-for-the-work-around-work-as-ai-companies-soften-job-loss-rhetoric-160000661.html)

### Claude Science (ca. 1. Juli 2026)
KI-Workbench für Wissenschaftler. Integration gängiger Forschungspakete, auditierbare Artefakte, flexibler Zugang zu Rechenressourcen. Beta für Pro/Max/Team/Enterprise.
Quelle: [Anthropic](https://www.anthropic.com/news/claude-science-ai-workbench) | [Dataconomy](https://dataconomy.com/2026/07/01/anthropic-claude-science-ai-research-launch/)

### Claude Fable 5 weltweit (1. Juli 2026)
Export-Kontrollen aufgehoben. Fable 5 und Mythos 5 ab 1. Juli global verfügbar auf Claude Platform, Claude.ai, Claude Code und Cowork. Tiefere Cyber-Safeguards und HackerOne-Programm für Sicherheitsforscher.
Quelle: [Anthropic](https://www.anthropic.com/news/redeploying-fable-5)

### Claude for Government - Public Beta (Juli 2026)
Claude Code und Claude Cowork jetzt in Claude for Government Desktop verfügbar. FedRAMP High autorisiert. Relevant für Behörden und öffentliche Auftraggeber.

### Anthropic-Forschung: Internes Arbeitsgedächtnis (6. Juli 2026)
Anthropic hat einen internen Workspace identifiziert, den Claude nutzt, um Ideen zu halten und zu verarbeiten, ohne sie direkt in Worte zu fassen. Die Struktur soll dem bewussten menschlichen Denken ähneln.
Quelle: [Axios](https://www.axios.com/2026/07/06/anthropic-claude-ai-conscious)

## Community-Highlights

Aktive Diskussion in der Community über die Unterschiede zwischen Skills, MCP-Servern und Plugins:
- Skills = prozedurale Anweisungen, 30-50 Token pro Skill, on-demand geladen
- MCP-Server = externe Tools, können 50k+ Token belegen
- Empfohlenes Minimal-Setup: 2-3 MCP-Server (GitHub, Filesystem, ein domänen-spezifischer) plus wenige Custom Skills

Wichtiger Community-Fund: Die `description`-Feld im SKILL.md-Frontmatter fungiert als Trigger. Wenn die Trigger-Phrase am Anfang steht, verbessert sich die Skill-Aktivierung deutlich durch Claude's Fuzzy-Matching.

Quellen: [morphllm.com](https://www.morphllm.com/claude-code-skills-mcp-plugins) | [DEV Community](https://dev.to/muhammad_moeed/claude-code-skills-a-practical-guide-for-2026-3f6p) | [okhlopkov.com](https://okhlopkov.com/claude-code-setup-mcp-hooks-skills-2026/)

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Dynamic Workflow Size (/config) | Hoch | Minuten | Mittel | Hoch |
| Subagents im Hintergrund (Standard) | Hoch | Minuten | Hoch | Sehr hoch |
| Stacked Slash-Skills (bis zu 5) | Hoch | Minuten | Mittel | Hoch |
| Claude Sonnet 5 als Standard (1M Token) | Hoch | Minuten | Hoch | Sehr hoch |
| Cowork Microsoft 365 Write-Tools | Mittel | Stunden | Hoch | Hoch |
| /dataviz Skill | Mittel | Minuten | Mittel | Mittel |
| Skill-Trigger-Phrase in description | Hoch | Minuten | Mittel | Hoch |
| Agent Notifications (needs_input/completed) | Mittel | Stunden | Mittel | Mittel |
| Manual Permission Mode als Standard | Hoch | Minuten | Niedrig | Mittel |
| Claude Science | Niedrig | Tage | Niedrig | Niedrig |
| Fable 5 global | Niedrig | Minuten | Niedrig | Niedrig |

## Empfohlene Aktionen

1. **Claude Code auf 2.1.202 aktualisieren** und Claude Sonnet 5 als Standard-Modell bestätigen. Das neue 1M-Token-Kontextfenster ermöglicht deutlich größere Cowork-OS-Kontexte ohne Abschneiden.

2. **Subagents im Hintergrund testen**: Seit 2.1.198 laufen Subagents standardmäßig im Hintergrund. Alle bestehenden Workflow-Skills prüfen, ob dieses Verhalten gewünscht ist. Falls nicht, explizit `run_in_background: false` setzen.

3. **Dynamic Workflow Size konfigurieren**: In /config → "Dynamic Workflow Size" auf den Projekttyp abstimmen. Für B2B-Sales-Workflows (schnelle Ergebnisse) eher "small", für tiefe Recherchen "large".

4. **Skill-Descriptions überarbeiten**: Trigger-Phrase an den Anfang der description jedes Skills stellen. Verbessert Aktivierungsrate messbar.

5. **Microsoft 365 Write-Tools in Cowork evaluieren**: Für Kunden mit M365-Umgebung ist der neue Connector (E-Mail, Kalender, OneDrive, SharePoint) ein konkreter Geschäftsnutzen. Demo-Szenario aufbauen.

6. **AskUserQuestion-Verhalten prüfen**: Seit 2.1.200 kein Auto-Continue mehr. Alle Workflows mit interaktiven Entscheidungspunkten durchspielen.

## Keine Aktion nötig

- **Claude Science**: Beta für Wissenschaftler, kein direkter B2B-Sales-Bezug.
- **Claude for Government**: Relevant nur bei öffentlichen Auftraggebern.
- **Fable 5 weltweit**: Kein unmittelbarer Handlungsbedarf; Fable 5 war bereits intern verfügbar.
- **Anthropic-Forschung Arbeitsgedächtnis**: Interessant, aber keine unmittelbaren Konsequenzen für den Produktivbetrieb.
