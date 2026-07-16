# Claude Intelligence Briefing - 2026-07-16

## Neue Releases

### Claude Code v2.1.211 (15. Juli 2026)
- **Neues Flag:** `--forward-subagent-text` und `CLAUDE_CODE_FORWARD_SUBAGENT_TEXT` Umgebungsvariable
- **Sicherheitsfix:** Neutralisierung von bidirektionalen Override-, Zero-Width- und Look-Alike-Zeichen in Chat-Genehmigungsnachrichten (Prompt-Injection-Schutz)
- **Bug:** PreToolUse Hook `ask`-Entscheidung wurde im Auto-Mode fälschlicherweise überschrieben, jetzt behoben
- **Bug:** Gleichzeitiges Logout bei parallelen Claude Code Sessions nach Wake-from-Sleep behoben
- **Fix:** Plugin MCP Server Reconnection nach idle Web-Session Wakeup

### Claude Code v2.1.210 (14. Juli 2026)
- **Live elapsed-time Counter** für zusammengefasste Tool-Call-Zeilen (bessere Transparenz)
- **Sicherheits-Warnung** für `Write(path)`, `NotebookEdit(path)`, `Glob(path)` Permission Rules
- **Sicherheitsfix:** `isolation: 'worktree'` Subagents konnten vorher Git-Befehle gegen das Haupt-Repo ausführen
- **Auto Mode:** Permission Classifier nutzt jetzt Sonnet 5 für externe Sessions
- MCP Connection und Hook-Timeout Verbesserungen
- Terminal Layout und Rendering Performance optimiert

### Claude Code v2.1.208 (14. Juli 2026)
- **Screen Reader Mode:** Opt-in Plain-Text Rendering via `claude --ax-screen-reader`
- **`vimInsertModeRemaps`** Setting für Vim Mode (z.B. `jj` zu Escape remappen)
- **`CLAUDE_CODE_PROCESS_WRAPPER`** Umgebungsvariable für Corporate Launcher Support
- **Mouse-Click Support** in Multi-Select Menus im Fullscreen-Modus
- **Performance:** Bis zu 7x schneller bei vielen aktiven Tools, Binärgröße um ~7 MB reduziert

### Claude Code v2.1.207 (11. Juli 2026)
- **Auto Mode** ohne gesondertes Opt-In auf Bedrock, Vertex AI und Foundry verfügbar
- **Shell-Injection Security Fix** für Plugin Hooks
- Standard-Modell auf Claude Opus 4.8 für mehrere Enterprise-Plattformen umgestellt
- Windows AWS Credential Stall Guard (60 Sekunden)

## Blog/Ankündigungen

### Claude für Lehrkräfte (14. Juli 2026)
Anthropic hat "Claude for Teachers" gestartet: Verifizierte US-amerikanische K-12-Lehrkräfte erhalten kostenlosen Zugang zu Premium-Claude-Tools, Unterrichts-Skills und Lehrplan-Materialien für alle 50 Bundesstaaten. Relevanz für EXPAND B2B: zeigt Anthropics Strategie, vertikale Produkte für spezifische Berufsgruppen zu bauen.

### Claude Reflect Dashboard (Juli 2026)
Anthropic hat "Reflect" eingeführt: Ein eingebautes Dashboard, das die eigene KI-Nutzung visualisiert und nachverfolgbar macht. Nutzungsstatistiken und Gewohnheitsanalyse direkt in Claude.

### HIPAA Self-Serve Konfiguration
Enterprise- und API-Organisationen können jetzt den BAA selbst akzeptieren, den Implementierungsleitfaden herunterladen und HIPAA-Konfiguration in einem einzigen Flow aktivieren. Für EXPAND B2B im Healthcare-Umfeld relevant.

### Fable 5 Export-Kontrollen aufgehoben (ab 1. Juli 2026)
Das US-Handelsministerium hat die Exportbeschränkungen für Claude Fable 5 und Mythos 5 aufgehoben. Fable 5 ist seit 1. Juli 2026 global verfügbar auf Claude Platform, Claude.ai, Claude Code und Claude Cowork.

### Claude Cowork auf Mobile und Web (Juli 2026)
Cowork wurde auf Mobile und Web ausgeweitet: Sessions und Dateien folgen dem Nutzer geräteübergreifend, mit Hintergrundarbeit, geplanten Aufgaben, Mobile Approvals und geteilten Chats/Projekten.

## Community-Highlights

Reddit-Direktzugang ist aus dem Scripting-Kontext nicht verfügbar. Aus indirekten Quellen und Community-Diskussionen (July 2026):

- Lebhafte Diskussionen zur neuen `/doctor`-Funktion in Claude Code, die Installation und Konfiguration diagnostiziert und Probleme aktiv behebt
- Wachsendes Interesse an Skills als strukturierte Alternative zu langen System-Prompts
- `--safe-mode` Flag wird als nützliches Debugging-Tool hervorgehoben
- Community-Setups kombinieren zunehmend MCP-Server + Skills + Hooks in spezialisierten CLAUDE.md-Architekturen

Quellen-Index: [Claude Code Changelog](https://code.claude.com/docs/en/changelog) | [GitHub Releases](https://github.com/anthropics/claude-code/releases) | [Anthropic News](https://www.anthropic.com/news)

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| `--forward-subagent-text` Flag | Hoch | Minuten | Mittel | Hoch |
| Sicherheitsfix bidirektionale Zeichen | Hoch | keine (automatisch) | Hoch | Sofort prüfen |
| worktree Subagent Git-Fix | Hoch | keine (automatisch) | Hoch | Sofort updaten |
| Auto Mode auf Vertex/Bedrock | Mittel | Stunden | Mittel | Mittel |
| Screen Reader Mode | Niedrig | keine (opt-in) | Niedrig | Info |
| `CLAUDE_CODE_PROCESS_WRAPPER` | Mittel | Minuten | Mittel | Bei Corporate-Einsatz |
| Performance +7x bei vielen Tools | Hoch | keine (automatisch) | Hoch | Sofort updaten |
| Reflect Dashboard | Niedrig | keine (in Claude.ai) | Niedrig | Beobachten |
| HIPAA Self-Serve | Niedrig | Stunden | Mittel | Bei Healthcare-Kunden |
| Cowork Mobile/Web | Mittel | Minuten (ausprobieren) | Hoch | Diese Woche testen |
| Fable 5 global verfügbar | Hoch | Minuten (Modell wechseln) | Hoch | Hoch |

## Empfohlene Aktionen

1. **Claude Code updaten:** v2.1.211 enthält wichtige Sicherheitsfixes (Prompt-Injection-Schutz, worktree Git-Fix). Update sofort: `npm update -g @anthropic-ai/claude-code`
2. **Fable 5 testen:** Das Modell ist seit 1. Juli global verfügbar. Für Cowork OS Briefing-Workflows auf Fable 5 umstellen und Qualität vergleichen.
3. **Cowork Mobile ausprobieren:** Wenn Cowork OS auf Claude Cowork aufbaut, diese Woche die Mobile-Funktion testen und Nutzungsszenarien für EXPAND B2B dokumentieren.
4. **`--forward-subagent-text` evaluieren:** Flag erlaubt, Text aus Subagent-Ausgaben nach oben weiterzuleiten. Relevant für Briefing-Workflows mit mehreren Agenten.
5. **`/doctor` Befehl nutzen:** Diagnose der aktuellen Claude Code Konfiguration auf ungenutzten Skills, MCP-Servern und langsamen Hooks. Empfehlung: einmal wöchentlich ausführen.

## Keine Aktion nötig

- Screen Reader Mode: Barrierefreiheitsfunktion, kein Handlungsbedarf für EXPAND B2B-Workflows
- HIPAA Konfiguration: Erst relevant bei konkreten Healthcare-Kundenprojekten
- Claude für Lehrkräfte: Interessant als Marktbeobachtung (vertikale Produktstrategie), kein direkter Handlungsbedarf
- Live elapsed-time Counter: Komfort-Feature, automatisch verfügbar nach Update
- `vimInsertModeRemaps`: Nur für Nutzer mit Vim-Konfiguration relevant
