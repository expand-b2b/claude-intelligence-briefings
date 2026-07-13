# Claude Intelligence Briefing - 2026-07-13

## Neue Releases

### Claude Code v2.1.207 (11. Juli 2026) - Neuestes Release

- **Auto Mode standardmäßig aktiv:** Auto Mode ist auf Bedrock, Vertex AI und Microsoft Foundry jetzt ohne Opt-in verfügbar. Deaktivierbar via `disableAutoMode` in den Settings. Wichtig für Enterprise-Deployments, die Claude Code über Cloud-Plattformen betreiben.
- **Terminal-Performance-Fix:** Einfrieren bei sehr langen Listen, Tabellen und Code-Blöcken behoben. Betrifft Sessions mit umfangreichen Datenausgaben.
- **Security-Dialog-Fix:** Remote Settings werden nicht mehr ohne explizite Bestätigung als akzeptiert markiert. Sicherheitsrelevant für Team-Deployments.
- **Auto-Updater:** Benutzerdefinierte Launcher-Scripts werden beim Update nicht mehr überschrieben.
- **Agent Teams:** Crash-Loop bei fehlerhaften Mailbox-Nachrichten behoben.
- **Deep Research:** Fetch-Phase-Agents zeigen korrekte Hostnamen statt "unknown".
- **Bedrock AWS SSO:** Wiederholte Anfragen für frische Credentials behoben.
- **Git Worktree:** Verwaiste `extensions.worktreeConfig`-Einträge werden bereinigt.

### Claude Code v2.1.206 (9. Juli 2026) - Im letzten Briefing teilweise erfasst

- **`/cd` Directory Suggestions:** Zeigt Pfad-Vorschläge wie `/add-dir`, erleichtert Verzeichniswechsel.
- **`/doctor` CLAUDE.md-Trimming:** Schlägt vor, Inhalte zu entfernen, die Claude aus dem Code ableiten kann.
- **MCP Per-Server Timeouts:** `request_timeout_ms` wird jetzt von Background-Workern korrekt beachtet.
- **Background Agent Upgrade:** Agents aktualisieren sich im Hintergrund nach einem Claude Code Update.

---

## Blog / Ankündigungen

### "Reflect" - Neues Nutzungs-Dashboard (9. Juli 2026)

Anthropic hat "Reflect" eingeführt: ein integriertes Dashboard, das die eigene KI-Nutzung visualisiert. Zeigt Topics, aktivste Tageszeiten, Wochenzusammenfassungen und Arbeitseinblicke. Enthält Break-Erinnerungen, stille Stunden und Work-Insights. Verfügbar für Web und Desktop.

**Relevanz für B2B Sales:** Mittel. Das Feature zeigt Anthropics Strategie, Claude tiefer in den Arbeitsalltag zu integrieren. Für Enterprise-Kunden ist die Nutzungsanalyse ein Verkaufsargument ("welchen ROI bringt KI in meinem Team?").

### Claude Cowork jetzt in der Cloud (7. Juli 2026)

Anthropic hat Claude Cowork von einer lokalen Desktop-App in eine Cloud-Lösung überführt. Cowork ist jetzt geräteübergreifend verfügbar und kann Aufgaben ausführen, auch wenn das eigene Gerät offline ist. Chat und Cowork werden in einem einheitlichen Interface zusammengeführt, mit Zugriff auf dieselben Dateien.

**Relevanz für B2B Sales:** Hoch. Cloud-Cowork ermöglicht asynchrone Workflows, mobilen Zugriff und Team-Sharing-Szenarien. Starkes Verkaufsargument für EXPAND B2B-Kunden, die Remote-Teams koordinieren.

### Fable 5 und Sonnet 5 weltweit verfügbar (seit 1. Juli 2026)

Bereits im letzten Briefing: Fable 5 ist wieder vollständig verfügbar. Sonnet 5 kostet bis 31. August 2026 $2/M Input- und $10/M Output-Tokens (Einführungspreis).

---

## Community-Highlights

### Plugin- und Skills-Ökosystem wächst stark

Das Community-Repo `jeremylongshore/claude-code-plugins-plus-skills` verzeichnet jetzt 425 Plugins, 2.810 Skills und 200 Agents (Stand: W28, Juli 2026). Das Gesamt-Ökosystem umfasst laut Verzeichnissen über 21.700 Skills und 12.500 MCP-Server.

Meistgenutzte MCP-Server laut Community (2026):
- **Figma** (Designs lesen, Code generieren)
- **Playwright** (Browser-Automatisierung und Testing)
- **Vercel** (Deployment-Management)
- **PostgreSQL** (Datenbankabfragen direkt aus Claude Code)
- **GitHub** (PR- und Issue-Management)

### Beliebteste Diskussionen (Juli 2026)

- Vergleiche zwischen verschiedenen Auto-Mode-Konfigurationen für Enterprise-Setups
- Multi-Worktree-Workflows für parallele Branches und Feature-Entwicklung
- Diskussionen über Rate-Limits im Pro-Plan bei intensiver Nutzung
- Integration von Claude Cowork Cloud in bestehende Team-Workflows

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Auto Mode standardmäßig auf Bedrock/Vertex/Foundry | Hoch (Enterprise-Setups) | Minuten (prüfen/konfigurieren) | Hoch | Sehr hoch |
| Security-Dialog-Fix (Remote Settings) | Hoch | Kein Aufwand (automatisch) | Hoch | Hoch |
| Agent Teams Crash-Loop behoben | Hoch | Kein Aufwand (Update) | Hoch | Hoch |
| Claude Cowork Cloud | Hoch | Stunden (Migration prüfen) | Hoch | Hoch |
| "Reflect" Dashboard | Mittel | Minuten (aktivieren/testen) | Mittel | Mittel |
| MCP Per-Server Timeout-Fix | Mittel | Minuten (konfigurieren) | Mittel | Mittel |
| Terminal-Performance-Fix | Mittel | Kein Aufwand (automatisch) | Mittel | Mittel |
| Skills-Ökosystem: 2.810 Skills verfügbar | Mittel | Stunden (evaluieren) | Mittel | Mittel |
| Auto-Updater schützt Launcher-Scripts | Mittel | Kein Aufwand (automatisch) | Mittel | Niedrig |

---

## Empfohlene Aktionen

1. **Claude Code auf v2.1.207 aktualisieren:** Der Security-Dialog-Fix für Remote Settings ist sicherheitsrelevant. Update sofort durchführen. Danach Agent-Teams-Workflows testen, da der Crash-Loop behoben wurde.

2. **Auto Mode auf Cloud-Plattformen prüfen:** Falls Cowork OS auf Bedrock, Vertex AI oder Foundry läuft, ist Auto Mode jetzt aktiv. Testen, ob das Standardverhalten zum Workflow passt, oder gezielt `disableAutoMode: true` setzen.

3. **Claude Cowork Cloud evaluieren:** Die Migration von Desktop zu Cloud ist ein strategischer Schritt. Prüfen, welche Cowork-Workflows jetzt cloud-basiert laufen können und ob das für EXPAND B2B-Kunden Demo-fähig ist.

4. **MCP Timeouts pro Server konfigurieren:** Für externe MCP-Server mit unterschiedlichen Antwortzeiten kann `request_timeout_ms` jetzt pro Server gesetzt werden. Sinnvoll für langsame Datenbank- oder API-MCP-Server.

5. **"Reflect"-Dashboard für Kundenpräsentationen nutzen:** Das Dashboard visualisiert KI-Nutzung und Effizienzgewinn. Kann in B2B-Demos eingesetzt werden, um greifbaren ROI zu zeigen ("so viele Stunden hat KI übernommen").

---

## Keine Aktion nötig

- **Terminal-Performance-Fix:** Automatisch mit Update behoben, kein manueller Eingriff.
- **Bedrock AWS SSO Fix:** Betrifft nur Teams mit SSO-Setup auf AWS, dann automatisch behoben.
- **Git Worktree Cleanup:** Wird automatisch beim nächsten Worktree-Zugriff bereinigt.
- **Deep Research Hostnamen-Fix:** Kosmetische Verbesserung, kein funktionaler Einfluss.
- **Auto-Updater Launcher-Script-Schutz:** Greift automatisch beim nächsten Update.

---

*Quellen: [Claude Code Changelog](https://code.claude.com/docs/en/changelog) | [Anthropic Newsroom](https://www.anthropic.com/news) | [TechCrunch](https://techcrunch.com/2026/07/09/anthropics-new-claude-feature-is-quietly-selling-you-on-ai/) | [claude-code-plugins-plus-skills (GitHub)](https://github.com/jeremylongshore/claude-code-plugins-plus-skills)*
*Modell: claude-sonnet-4-6 | Erstellt: 2026-07-13*
