# Claude Intelligence Briefing - 2026-05-25

## Neue Releases

### Claude Code 2.1.149 (22. Mai 2026)
Bedeutendstes Release der letzten 48 Stunden.

- `/usage` zeigt jetzt aufgeschlüsselte Kosten nach Kategorie: Skills, Subagents, Plugins, MCP-Server
- `/diff` Detail-View mit vollständiger Tastaturnavigation (Pfeile, j/k, PgUp/PgDn, Space, Home/End)
- Markdown rendert GFM Task-Listen Checkboxen (`- [ ] todo` / `- [x] done`)
- Enterprise: neues Setting `allowAllClaudeAiMcps` für Cloud MCP Konnektoren
- Mehrere Sicherheitsfixes (PowerShell, Git Worktrees, Bash Sandbox)

### Claude Code 2.1.150 (23. Mai 2026)
Nur interne Infrastruktur-Verbesserungen, keine nutzerrelevanten Änderungen.

### Claude Code 2.1.147 (21. Mai 2026)
- Gepinnte Background Sessions (`Ctrl+T`) bleiben im Leerlauf aktiv und werden bei Updates neu gestartet
- `/simplify` umbenannt zu `/code-review` mit wählbaren Effort-Levels (`low`, `medium`, `high`)
- `/code-review` kann Findings als Inline-Kommentare direkt in GitHub PRs posten
- Verbesserter Auto-Updater: Retry bei Netzwerkfehlern, detaillierte Fehlercodes

### Claude Code 2.1.145 (19. Mai 2026)
- `claude agents --json`: Session-Listing als JSON für Skripte und Status-Bars
- `/plugin` Discover zeigt Commands, Agents, Skills, Hooks und MCP/LSP-Server vor Installation
- Fast Mode nutzt jetzt standardmäßig Opus 4.7
- Neue Flags für `claude agents`: `--add-dir`, `--settings`, `--mcp-config`, `--model`, `--effort`

---

## Blog & Ankündigungen

### PwC-Partnerschaft ausgebaut (14. Mai 2026)
PwC rollt Claude Code und Claude-Produkte für seine gesamte US-Belegschaft aus, mit geplanter globaler Expansion. Gemeinsames Center of Excellence, 30.000 PwC-Professionals werden zertifiziert.
Relevanz: Zeigt Enterprise-Readiness von Claude Code als B2B-Werkzeug.

### KPMG Global Alliance (19. Mai 2026)
KPMG integriert Claude in "Digital Gateway", die interne Arbeitsplattform für 276.000 Mitarbeiter weltweit, mit Schwerpunkt auf Steuer- und Rechtsanwendungen.
Relevanz: Klares Signal dass Claude in regulierten B2B-Branchen (Audit, Tax, Legal) angekommen ist.

### Gates Foundation Partnerschaft (14. Mai 2026)
200 Millionen Dollar in Grant-Funding, Claude-Credits und technischem Support für Gesundheit, Bildung und wirtschaftliche Mobilität über 4 Jahre.
Relevanz: Reputationsaufbau, kein direkter Produktbezug.

### Erhöhte Nutzungslimits durch SpaceX Compute-Deal
Anthropic hat die Kapazität durch neue Compute-Partnerschaften (u.a. SpaceX) substanziell erhöht. Claude Code API-Limits wurden angehoben.
Relevanz: Weniger Rate-Limiting im produktiven Einsatz.

### Claude bleibt werbefrei
Anthropic hat offiziell bestätigt, dass Claude keine Werbung schalten wird. Finanzierung über Subscriptions und API.
Relevanz: Vertrauenssignal für B2B-Einsatz mit sensiblen Daten.

---

## Community-Highlights

Kein direkter Reddit-Zugriff in dieser Session. Aus indirekten Quellen:

- Aktive Diskussion zu **Skills vs. MCP-Server**: Skills (Markdown in `.claude/commands/`) für projektinterne Workflows, MCP für externe Protokoll-Integrationen. Klare Arbeitsteilung etabliert sich in der Community.
- Plugin-Dependency-System neu: `claude plugin disable` verweigert bei Abhängigkeitskonflikten, `claude plugin enable` aktiviert Abhängigkeiten automatisch.
- Community nutzt `claude agents --json` für tmux-Statusbars und eigene Monitoring-Dashboards.

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| `/usage` Kostenaufschlüsselung nach Kategorie | Hoch | Minuten | Hoch | Hoch |
| `/code-review` mit GitHub PR Inline-Kommentaren | Hoch | Stunden | Hoch | Hoch |
| Gepinnte Background Sessions (Ctrl+T) | Hoch | Minuten | Mittel | Hoch |
| Fast Mode auf Opus 4.7 | Mittel | Minuten | Mittel | Mittel |
| `allowAllClaudeAiMcps` Enterprise-Setting | Mittel | Stunden | Mittel | Mittel |
| `claude agents --json` für Skripte | Mittel | Stunden | Niedrig | Niedrig |
| KPMG/PwC Enterprise-Rollouts | Niedrig | - | Hoch (Referenz) | Mittel |

---

## Empfohlene Aktionen

1. **`/usage` testen** (Minuten): Im nächsten Claude Code-Aufruf `/usage` ausführen, um die Kostenstruktur nach Kategorie zu sehen. Gut für interne Abrechnung bei Mandanten-Projekten.

2. **`/code-review` in PR-Workflow integrieren** (Stunden): Den umbenannten Befehl mit `--comment` Flag in den Review-Prozess einbinden, damit Findings direkt als GitHub PR-Kommentare erscheinen. Konkrete Zeitersparnis im Entwicklungs-Review.

3. **Gepinnte Sessions für Dauerläufe nutzen** (Minuten): `Ctrl+T` in claude agents für Background-Prozesse, die über Updates hinaus aktiv bleiben müssen, z.B. laufende Briefing-Generierung oder Monitoring-Loops.

4. **PwC/KPMG-Rollouts als Referenz dokumentieren**: Für Sales-Gespräche mit mittelständischen B2B-Kunden relevant. Big-4-Zertifizierungsprogramme etablieren Claude als professionelles Werkzeug in regulierten Branchen.

---

## Keine Aktion nötig

- **Gates Foundation Partnerschaft**: Reputationsgewinn für Anthropic, kein operativer Bezug zu Cowork OS.
- **Claude Code 2.1.150**: Nur interne Infrastruktur, kein Handlungsbedarf.
- **SpaceX Compute-Deal**: Erhöhte Limits wirken automatisch, keine Konfiguration nötig.
- **Claude bleibt werbefrei**: Bestätigung des Status quo, keine Änderung erforderlich.

---

*Quellen: [Anthropic News](https://www.anthropic.com/news) | [Claude Code Changelog](https://code.claude.com/docs/en/changelog) | [Releasebot](https://releasebot.io/updates/anthropic/claude-code)*
