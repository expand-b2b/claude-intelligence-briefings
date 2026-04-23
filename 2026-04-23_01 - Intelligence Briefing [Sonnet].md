# Claude Intelligence Briefing - 2026-04-23

## Neue Releases

### Claude Code v2.1.118 (23. April 2026)
Heutiges Release mit mehreren relevanten Neuerungen:
- **Vim-Modi**: Visual mode (`v`) und visual-line mode (`V`) jetzt vollständig unterstützt
- **MCP-Tools in Hooks**: Hooks können jetzt MCP-Tools direkt aufrufen (`type: "mcp_tool"`) - bisher nur Shell-Befehle möglich
- **`/usage` Kommando**: `/cost` und `/stats` wurden zu `/usage` zusammengeführt
- **Custom Themes**: Benannte Themes erstellen und wechseln via `/theme`
- **`DISABLE_UPDATES`**: Neue Umgebungsvariable zum Blockieren aller automatischen Updates

### Claude Code v2.1.117 (22. April 2026)
- **Forked Subagents**: Externe Builds via `CLAUDE_CODE_FORK_SUBAGENT=1`
- **Persistente Modellauswahl**: `/model` speichert Auswahl über Neustarts hinweg
- **Schnellerer Startup**: Lokal und claude.ai MCP-Server starten schneller
- **Plugin-Abhängigkeiten**: Werden automatisch installiert
- **OpenTelemetry**: Neue Attribute `command_name` und `effort`

### Claude Code v2.1.116 (20. April 2026)
- **67% schnelleres `/resume`** bei großen Sessions (40MB+)
- **Thinking Spinner**: Zeigt Fortschritt ("still thinking", "almost done")
- **`/config` Suche**: Durchsucht jetzt auch Optionswerte

### Claude Code v2.1.113 (17. April 2026)
- **Native Binary**: CLI startet jetzt native Claude Code Binary statt JavaScript-Bundle - spürbar schneller
- **`sandbox.network.deniedDomains`**: Neue Sicherheitseinstellung zum Blockieren bestimmter Domains

## Blog/Ankuendigungen

### Claude Mythos Preview (7. April 2026)
Anthropic hat Claude Mythos Preview vorgestellt, ein neues Allzweckmodell mit besonderer Stärke in Cybersecurity-Aufgaben. Gleichzeitig wurde **Project Glasswing** gestartet: Einsatz von Mythos, um kritische Software-Infrastrukturen zu schützen. Relevanz für B2B: Sicherheitsaudit-Workflows könnten profitieren; direkter Einsatz im Cowork OS derzeit unklar (kein API-Zugang angekündigt).

### Anthropic Managed Agents (Public Beta, April 2026)
Vollständig verwaltete Agent-Infrastruktur über die API: sichere Sandboxes, eingebaute Tools, Server-Sent-Event-Streaming. Erstellt Agenten, konfiguriert Container, startet Sessions per API-Call.

### ant CLI (April 2026)
Neues Kommandozeilen-Tool für die Claude API: schnellere API-Interaktion, native Claude Code Integration, Versionierung von API-Ressourcen in YAML-Dateien.

### Claude Opus 4.7
Löst laut Anthropic 3x mehr Produktions-Tasks als Opus 4.6, mit deutlichen Verbesserungen in Code Quality und Test Quality (Rakuten-SWE-Bench). Aktuell verfügbares Spitzenmodell.

### Anthropic Infrastructure (April 2026)
- Amazon-Partnerschaft: bis zu 5 Gigawatt neue Compute-Kapazität, Trainium2/3 kommt in H1/H2 2026
- Google/Broadcom: Mehrere Gigawatt nächste Generation TPUs
- 50 Milliarden USD Investment in US-KI-Infrastruktur angekündigt

## Community-Highlights

Der Community-Diskurs im April 2026 dreht sich hauptsächlich um:

1. **Context Discipline**: CLAUDE.md, Memory, MCPs und Subagents als "kleines Betriebssystem" um das Repo. Repos ohne diese Struktur gelten zunehmend als unprofessionell.
2. **Skills vs. MCP vs. Plugins**: Klarere Empfehlung: `.claude/skills/` für Instruktionen in Markdown, MCP für externe Tool-Anbindung, Plugins für erweiterte Funktionalität.
3. **Hooks als Sicherheitsnetz**: 9+ Hooks auf Edit/Write-Operationen als Best Practice in produktiven Teams.
4. **Claude Code vs. Codex**: Laut Reddit-Analyse mit 500+ Entwickleraussagen liegt Claude Code 2026 klar vorne bei komplexen Refactoring-Aufgaben.
5. **awesome-claude-code** (github.com/hesreallyhim/awesome-claude-code): Wächst weiter als Referenz-Sammlung für Skills, Hooks und Plugins.

Relevante Guides erschienen diese Woche:
- "Understanding Claude Code's Full Stack: MCP, Skills, Subagents, and Hooks Explained" (alexop.dev)
- "My Claude Code Setup After 4 Months of Daily Use (2026)" (okhlopkov.com)
- "Our Claude Code Setup: 30 Skills, MCPs, and Self-Learning Hooks" (dev.to/axitslab)

## Relevanz fuer Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschaeftswert | Prioritaet |
|---|---|---|---|---|
| MCP-Tools in Hooks (v2.1.118) | Hoch | Minuten | Hoch | Sehr hoch |
| Managed Agents Public Beta | Hoch | Stunden | Hoch | Hoch |
| ant CLI | Mittel | Stunden | Mittel | Mittel |
| Native Binary / schnellerer Start (v2.1.113) | Hoch | Minuten (Update) | Mittel | Hoch |
| 67% schnelleres `/resume` (v2.1.116) | Hoch | Minuten (Update) | Mittel | Hoch |
| Persistente Modellauswahl (v2.1.117) | Mittel | Minuten | Niedrig | Mittel |
| DISABLE_UPDATES Env-Variable | Mittel | Minuten | Niedrig | Mittel |
| Custom Themes via `/theme` | Niedrig | Minuten | Niedrig | Niedrig |
| Claude Opus 4.7 | Mittel | Stunden (Evaluation) | Hoch | Mittel |
| Claude Mythos Preview | Niedrig | Tage (kein API-Zugang) | Mittel | Niedrig |

## Empfohlene Aktionen

1. **Sofort: Claude Code aktualisieren** auf v2.1.118. Das `MCP-Tools in Hooks`-Feature ist ein direkter Mehrwert für das Cowork OS: bestehende Hooks können jetzt MCP-Server aufrufen, ohne Umwege über Shell-Befehle.
2. **Diese Woche: Managed Agents evaluieren**. Die Public Beta ermöglicht containerisierte Agent-Sessions per API. Für EXPAND B2B Sales Development Workflows (Recherche, Outreach-Vorbereitung) könnte das eine robustere Alternative zu manuell orchestrierten Subagents sein.
3. **Diese Woche: `sandbox.network.deniedDomains` prüfen**. Für produktive Cowork-OS-Setups eine sinnvolle Sicherheitsmaßnahme gegen unbeabsichtigte Netzwerkzugriffe in Hooks.
4. **Mittelfristig: ant CLI testen**. YAML-basierte Versionierung von API-Ressourcen passt gut zu einem versionierten Cowork OS. Lohnt sich als Evaluierung, sobald die Beta stabiler ist.
5. **Mittelfristig: awesome-claude-code durchforsten** (github.com/hesreallyhim/awesome-claude-code). Referenz für Skills und Hooks, die direkt ins Cowork OS übernommen werden könnten.

## Keine Aktion noetig

- **Claude Mythos Preview**: Kein API-Zugang angekündigt. Security-Fokus ist nicht der primäre Use Case von Cowork OS. Beobachten.
- **Anthropic Infrastructure-Deals** (Amazon, Google, 50 Mrd. USD): Strategisch relevant für Anthropics Stabilität, kein direkter Handlungsbedarf.
- **Vim-Modi in Claude Code**: Interessant für Entwickler mit Vim-Gewohnheiten, kein Mehrwert für B2B Sales-Workflows.
- **Custom Themes**: Ästhetik, kein Geschäftswert.
- **OpenTelemetry-Attribute**: Nur relevant bei eigenem Observability-Stack.

---
*Erstellt: 2026-04-23 | Modell: Claude Sonnet 4.6 | Quellen: GitHub Releases anthropics/claude-code, anthropic.com/news, WebSearch Community*
