# Claude Intelligence Briefing - 2026-05-29

**Scout:** Claude Sonnet 4.6 für EXPAND B2B
**Quellen:** Claude Code Changelog, GitHub Issues, awesome-claude-code-toolkit
**Abdeckung:** 27. bis 29. Mai 2026

---

## Neue Releases

### Claude Code v2.1.156 (29. Mai 2026)
**Bugfix-Release**
- Fix für Opus 4.8: Thinking-Blöcke wurden fälschlicherweise modifiziert und verursachten API-Fehler

### Claude Code v2.1.154 (28. Mai 2026)
**Major-Release: Opus 4.8 + Dynamic Workflows**
- **Opus 4.8 jetzt verfügbar** mit `/effort xhigh` als Standard für schwierige Aufgaben
- **Dynamic Workflows**: Claude orchestriert automatisch Dutzende bis Hunderte von Agents im Hintergrund
- **Fast Mode auf Opus 4.8**: 2,5x Geschwindigkeit zum 2x Standardpreis
- Lean System Prompt jetzt Standard (außer Haiku, Sonnet 4.6, Opus 4.7 und früher)
- `/simplify` führt nur noch Cleanup-Review durch (reuse, simplification, efficiency)
- `/effort`-Labels umbenannt: "Faster" und "Smarter"
- `claude agents`: `! <command>` für Background-Shell-Sessions
- Streaming Tool Execution jetzt immer aktiviert

### Claude Code v2.1.153 (28. Mai 2026)
- `skipLfs` Option für GitHub/Git Plugin Marketplace Sources
- `claude doctor` zeigt Ergebnis des letzten Update-Versuchs
- Status Line Commands erhalten `COLUMNS` und `LINES` Umgebungsvariablen
- Bugfixes für MCP Server, Plugin-Agenten, PowerShell

### Claude Code v2.1.152 (27. Mai 2026)
- **`/code-review --fix`**: Wendet Review-Erkenntnisse direkt auf den Working Tree an
- **Skills können Tools sperren** via `disallowed-tools` Frontmatter
- **`/reload-skills`**: Lädt Skill-Verzeichnisse neu ohne Neustart
- `SessionStart` Hooks können `reloadSkills: true` zurückgeben
- **`MessageDisplay` Hook**: Transformation von Assistant-Nachrichten möglich
- Neue Managed Setting: `pluginSuggestionMarketplaces`
- Auto-Mode erfordert keine Opt-in-Zustimmung mehr

---

## Blog / Ankündigungen

Anthropic.com war heute nicht erreichbar (HTTP 403). Keine verifizierten Blog-Einträge für diesen Zeitraum verfügbar.

---

## Community-Highlights

### GitHub Issues (alle vom 29. Mai 2026)

**Aktive Bugs mit hoher Relevanz:**
- **#63515**: Max Plan komprimiert Context bei 200K statt erweitertes Fenster zu nutzen (area:core)
- **#63512**: Thinking Blocks in Opus 4.8 werden modifiziert, API-Fehler (behoben in v2.1.156)
- **#63511**: Exzessiver Token-Verbrauch bei Framework-Analyse (area:cost)
- **#63510**: VS Code Extension sendet ungültige system role (regression)

**Feature Requests:**
- **#63509**: Compact-Button löst ohne Bestätigung aus (area:tui)
- **#63505**: Agent soll Read vor Write/Update priorisieren statt `cat`

### awesome-claude-code-toolkit (rohitg00)
- **claude-channel-whatsapp / claude-channel-instagram**: Meta-API-Integrationen für Nachrichtenkanäle
- **Clarvia MCP**: Qualitätsscanner mit 39+ Sicherheitsregeln
- **temporal-core**: Zeitliches Bewusstsein für Claude Code Agents
- Stand: 135 Agenten, 35 Skills, 400.000+ Skills über SkillKit-Marketplace

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Dynamic Workflows (Opus 4.8) | Hoch | Stunden | Hoch | Hoch |
| `/code-review --fix` | Hoch | Minuten | Mittel | Hoch |
| `MessageDisplay` Hook | Mittel | Stunden | Mittel | Mittel |
| `disallowed-tools` in Skills | Hoch | Minuten | Mittel | Hoch |
| `/reload-skills` Kommando | Hoch | Minuten | Niedrig | Mittel |
| Clarvia MCP (39+ Sicherheitsregeln) | Mittel | Stunden | Hoch | Mittel |
| claude-channel-whatsapp/-instagram | Mittel | Tage | Hoch | Mittel |
| Context-Kompression Bug (Max Plan) | Hoch | Minuten | Hoch | Hoch |

---

## Empfohlene Aktionen

1. **Dynamic Workflows testen** (Priorität: Hoch): Opus 4.8 mit `/effort xhigh` für komplexe Multi-Step-Prozesse im Cowork OS evaluieren, z.B. für automatisierte Briefing-Pipelines oder Sales-Research-Flows.

2. **`disallowed-tools` in CLAUDE.md-Skills einbauen** (Priorität: Hoch): Für produktive Skills gefährliche Tools (z.B. `Bash`, `Write`) via Frontmatter sperren. Aufwand: 10 Minuten pro Skill.

3. **`/code-review --fix` in Workflow integrieren** (Priorität: Hoch): Als Standard-Schritt vor jedem Commit in den Cowork-OS-Sessions etablieren. Ersetzt manuellen Review.

4. **Context-Kompression-Bug prüfen** (Priorität: Hoch): Falls Max Plan genutzt wird, Issue #63515 beobachten. Workaround: Manuell `/compact` aufrufen und Fenstergröße überprüfen.

5. **Clarvia MCP evaluieren** (Priorität: Mittel): 39+ Sicherheitsregeln als MCP-Server für Code-Qualitätssicherung in B2B-Projekten prüfen. Besonders relevant für Klienten-Deployments.

---

## Keine Aktion nötig

- **Fast Mode Opus 4.8**: Nützlich, aber nur relevant wenn Opus 4.8 bereits im Einsatz ist. Vorerst abwarten.
- **claude-channel-whatsapp/-instagram**: Interessant für Klienten, aber Aufwand zu hoch für sofortige Umsetzung ohne konkreten Auftrag.
- **`/effort`-Labels-Umbenennung** (Faster/Smarter): Nur kosmetisch, kein Handlungsbedarf.
- **skipLfs Option**: Nur relevant bei Large File Storage in Git-Repos.
- **Thinking-Blocks-Bugfix (v2.1.156)**: Update auf aktuelle Version löst das Problem automatisch.

---

*Erstellt: 2026-05-29 | Modell: claude-sonnet-4-6 | Quellen: code.claude.com/changelog, github.com/anthropics/claude-code/issues, github.com/rohitg00/awesome-claude-code-toolkit*
