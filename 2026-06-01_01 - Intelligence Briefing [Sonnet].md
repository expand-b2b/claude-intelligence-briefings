# Claude Intelligence Briefing - 2026-06-01

**Scout:** Friedrich Claude-Ecosystem-Scout | **Modell:** Sonnet 4.6 | **Quellen:** GitHub Changelog, Anthropic News, Community

---

## Neue Releases

### Claude Code 2.1.159 (31. Mai 2026)
Interne Infrastrukturverbesserungen, keine nutzerrelevanten Änderungen.

### Claude Code 2.1.158 (30. Mai 2026)
**Auto Mode auf Bedrock, Vertex und Foundry** jetzt verfügbar für Opus 4.7 und Opus 4.8.
Aktivierung via `CLAUDE_CODE_ENABLE_AUTO_MODE=1`.

### Claude Code 2.1.157 (29. Mai 2026)
Umfangreiches Release mit mehreren relevanten Neuerungen:

- **Plugins ohne Marketplace:** Plugins in `.claude/skills`-Verzeichnissen werden automatisch geladen, kein Marketplace-Eintrag erforderlich
- **Plugin-Scaffolding:** `claude plugin init <name>` erstellt neue Plugin-Struktur
- **Autocomplete für `/plugin`-Argumente**
- `agent`-Feld in `settings.json` wird jetzt für dispatched Sessions berücksichtigt
- `EnterWorktree` kann zwischen Claude-verwalteten Worktrees wechseln
- `tool_decision`-Telemetrie enthält `tool_parameters` bei `OTEL_LOG_TOOL_DETAILS=1`
- Zahlreiche Bug-Fixes: WSL-Image-Paste, Markdown-Darstellung, Terminal-Einfrieren, Clipboard in tmux

### Claude Code 2.1.154 (28. Mai 2026)
Flagship-Release der vergangenen Woche:

- **Opus 4.8:** Neues Modell als Standard mit hohem Aufwandsmodus
- **Dynamic Workflows:** Claude orchestriert Arbeit über Dutzende bis Hunderte von Agenten dynamisch
- **Fast Mode auf Opus 4.8:** 2x Standardrate für 2,5x Geschwindigkeit
- Lean System Prompt als Standard für alle aktuellen Modelle (ausgenommen ältere Versionen)
- `claude agents`: Shell-Befehle mit `! <command>` als Hintergrundsession
- `/simplify` führt jetzt Cleanup-Review durch und wendet Korrekturen an
- Streaming Tool Execution durchgehend aktiviert (auch Bedrock/Vertex/Foundry)
- MCP stdio-Server erhalten `CLAUDE_CODE_SESSION_ID` und `CLAUDECODE=1`

---

## Blog und Ankündigungen

### Claude Managed Agents (Public Beta aktiv)
Vollständig verwaltetes Agenten-Framework mit sicherer Sandbox, eingebauten Tools und Server-Sent Event Streaming. Aktuelle Beta-Features:

- **Multiagent-Sessions und Outcomes** in Public Beta (Header: `managed-agents-2026-04-01`)
- **Memory** für Managed Agents in Public Beta
- **Webhooks** für Session- und Vault-Lifecycle-Events
- Große Tool-Outputs (über 100.000 Token) werden automatisch in Sandbox-Dateien ausgelagert

### Agent Templates für Financial Services
Fertige Agent-Templates für Finanzdienstleistungen als Plugins für Claude Code, als Cookbook für Managed Agents. Ermöglicht Implementierung in Tagen statt Monaten.

### Claude Mythos Preview
Neues Allzweck-Modell mit besonderer Stärke bei Sicherheitsaufgaben. Anthropic hat parallel Project Glasswing gestartet, das Mythos für Softwaresicherheit einsetzt.

### Anthropic-Amazon-Erweiterung
Anthropic investiert über 100 Milliarden USD in AWS über 10 Jahre, sichert bis zu 5 GW Kapazität für Training und Betrieb.

---

## Community-Highlights

- **Awesome Claude Skills** (awesome-skills.com): 153+ kuratierte Skills und Plugins, Stand Mai 2026. Schwerpunkte: Dokumentenverarbeitung, Frontend-Design, Testing, AI-Prompting
- **DEV Community:** Praxisguide zu Claude Code Skills 2026 mit Beispielen für Lint-Automatisierung, Commit-Formatierung und PR-Konventionen
- **Community-Praxis:** Workflow-Templates als Markdown-Slash-Commands und GitHub Actions YAML (kein ausführbarer Code erforderlich)
- Reddit und Discord: Wenig neue indexierte Beiträge zum Stichtag, Hauptdiskussionen drehen sich um Opus 4.8 Fast Mode und Dynamic Workflows

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Plugins ohne Marketplace (2.1.157) | Hoch | Minuten | Hoch | Sofort |
| `claude plugin init <name>` | Hoch | Minuten | Mittel | Diese Woche |
| Dynamic Workflows (2.1.154) | Hoch | Stunden | Hoch | Diese Woche |
| Auto Mode auf Bedrock/Vertex (2.1.158) | Mittel | Minuten | Mittel | Bei Bedarf |
| Managed Agents Memory (Beta) | Mittel | Stunden | Hoch | Testen |
| Managed Agents Webhooks | Mittel | Stunden | Hoch | Testen |
| Opus 4.8 Fast Mode | Hoch | Minuten | Hoch | Sofort |
| Agent Templates Financial Services | Niedrig | Tage | Mittel | Später |
| Claude Mythos Preview | Niedrig | Beobachtung | Unbekannt | Beobachten |

---

## Empfohlene Aktionen

1. **Sofort: Lokale Skills ohne Marketplace nutzen.** Bestehende Skills aus `.claude/skills/` werden ab 2.1.157 automatisch geladen. Keine weitere Konfiguration nötig. Neue Skills mit `claude plugin init <name>` anlegen.

2. **Diese Woche: Dynamic Workflows testen.** Opus 4.8 mit Dynamic Workflows kann komplexe Aufgaben über viele Agenten orchestrieren. Für Sales-Development-Pipelines relevant: Recherche, Qualifizierung, Outreach als Workflow definieren.

3. **Diese Woche: Opus 4.8 Fast Mode evaluieren.** 2,5x schneller bei 2x Kosten. Für interaktive Cowork-OS-Sessions wirtschaftlich attraktiv. Einfach testen und mit aktuellem Setup vergleichen.

4. **Kurzfristig: Managed Agents Memory und Webhooks in Testumgebung evaluieren.** Persistent Memory und Webhooks sind der Schlüssel für echte Agenten-Automatisierung in B2B-Workflows. Beta-Zugang prüfen.

5. **Mittelfristig: `/code-review --comment` in Entwicklungs-Workflow integrieren.** Postet Befunde direkt als GitHub-Kommentare. Reduziert Review-Aufwand im Team.

---

## Keine Aktion nötig

- **Claude Mythos Preview:** Kein konkreter Anwendungsfall für EXPAND B2B erkennbar. Beobachten.
- **Anthropic-Amazon-Infrastrukturinvestment:** Keine unmittelbare Auswirkung auf Nutzung oder Kosten.
- **2.1.159 (interne Änderungen):** Kein Handlungsbedarf.
- **WSL-spezifische Fixes:** Nicht relevant für macOS-basiertes Setup.

---

*Quellen: [Claude Code Changelog](https://code.claude.com/docs/en/changelog) | [Anthropic News](https://www.anthropic.com/news) | [Managed Agents Docs](https://docs.anthropic.com/en/release-notes/overview) | [Awesome Claude Skills](https://awesome-skills.com/)*
