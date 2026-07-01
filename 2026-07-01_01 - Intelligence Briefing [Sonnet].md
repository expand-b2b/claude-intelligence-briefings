# Claude Intelligence Briefing - 2026-07-01

## Neue Releases

### v2.1.197 (30. Juni 2026) - WICHTIG
**Claude Sonnet 5 ist jetzt das Standard-Modell in Claude Code.**

- Natives 1M-Token-Kontextfenster
- Aktionspreise bis 31. August: $2 Input / $10 Output pro Million Token
- Ankündigung: anthropic.com/news/claude-sonnet-5

### v2.1.196 (29. Juni 2026)
Umfangreiches Update mit vielen Verbesserungen:

- Organisation-Standardmodelle: Admins setzen das Modell in der Org-Konsole; Nutzer sehen "Org default" in `/model`
- Lesbare Standard-Sitzungsnamen beim Start (leichtere Identifikation)
- Klickbare Dateianhänge im Chat (Cmd/Ctrl-Klick öffnet Finder/Explorer)
- Sicherheit: `claude mcp list`/`get` startet keine `.mcp.json`-Server mehr, die ein Repo selbst via `.claude/settings.json` genehmigt hat; nicht vertrauenswürdige Workspaces zeigen "Ausstehende Genehmigung"
- Hintergrund-Sessions stabiler: Lange Befehle und Workflows überstehen Prozessneustarts und Updates
- Streaming-Watchdog jetzt standardmäßig aktiv: bricht ab und wiederholt nach 5 Minuten ohne Events
- Rendering-Aufwand reduziert durch übersprungene No-Op-Subtree-Walks
- `/code-review`-Workflow: Fünf Cleanup-Finder zu einem zusammengeführt, ca. 25% weniger Token-Verbrauch
- CPU-Nutzung beim Streaming um ca. 37% reduziert (100ms-Koaleszierung)
- Diverse Bug-Fixes: Rate-Limit-Warnung, PowerShell-Unterstützung, MCP OAuth, Vim-Modus, Agenten-Panel

### v2.1.195 (26. Juni 2026)
- Neues Setting `CLAUDE_CODE_DISABLE_MOUSE_CLICKS` für Vollbildmodus
- Hook-Matcher mit Bindestrichen (z.B. `mcp__brave-search`) jetzt exakt statt Substring-Match
- Sprachdiktierung auf macOS und Linux verbessert (Stille, Sprachen ohne Leerzeichen)
- Externe Plugins aus Projekt-Settings erfordern jetzt immer explizite Installationszustimmung

### v2.1.194 (früher in der Woche)
- Neues Setting `autoMode.classifyAllShell`: leitet alle Bash/PowerShell-Befehle durch den Auto-Mode-Classifier
- Auto-Mode-Ablehnungsgründe im Transkript und in `/permissions` sichtbar
- OpenTelemetry: neues `claude_code.assistant_response`-Log-Event (Hinweis: aktiviert sich bei bestehenden Prompt-Logging-Setups automatisch)
- Live-Dateiautovervollständigung im Bash-Modus (`!`)
- MCP-Starthinweis wenn Server Authentifizierung benötigen

### v2.1.193 (früher)
- `/rewind` funktioniert jetzt auch nach `/clear`
- Sandbox-Netzwerkdialog: erlaubte Hosts werden für die Session gespeichert
- MCP-Kapabilitätserkennung wiederholt bei Netzwerkfehlern automatisch
- MCP OAuth: verbesserte Fehlerbehandlung und Headless-Modus

## Blog/Ankündigungen

Anthropic-News-Seite war in diesem Lauf nicht erreichbar (Domain nicht in der Netzwerk-Allowlist). Kernankündigung aus dem Release selbst entnommen:

**Claude Sonnet 5** ist offiziell verfügbar und wird der Standard in Claude Code. Aktionspreise bis 31. August 2026: $2/$10 pro Million Token (günstiger als bisherige Sonnet-Preise).

## Community-Highlights

Reddit (r/ClaudeCode) war in diesem Lauf nicht erreichbar. Aus den Release-Reaktionen auf GitHub:

- v2.1.196 hat 43 Reaktionen, davon 15 positive (+1) - solides Interesse an den Org-Modell-Features und der Session-Stabilität
- v2.1.195 hat 54 Reaktionen, davon 17 positive - Hook-Fix scheint viele betroffen zu haben
- v2.1.197 (Sonnet 5) hat bereits 50 Reaktionen nach weniger als einem Tag

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Claude Sonnet 5 als Standard (1M Kontext, $2/$10) | Hoch | Minuten (auto-update) | Hoch | HOCH |
| Organisations-Standardmodell in Org-Konsole | Hoch | Stunden (Konfig) | Hoch | HOCH |
| `/code-review` 25% günstiger (Finder konsolidiert) | Hoch | keine (auto) | Mittel | HOCH |
| Hook-Matcher Exact-Match Fix (Bindestriche) | Hoch | Minuten (CLAUDE.md prüfen) | Mittel | MITTEL |
| Streaming-Watchdog standardmäßig aktiv | Mittel | keine (auto) | Mittel | MITTEL |
| `autoMode.classifyAllShell` Setting | Mittel | Stunden (testen) | Mittel | MITTEL |
| OpenTelemetry Assistant-Response-Log | Niedrig | Stunden (opt-out prüfen) | Niedrig | NIEDRIG |
| MCP-Server: Ausstehende Genehmigung in Workspaces | Hoch | Minuten (prüfen) | Mittel | MITTEL |

## Empfohlene Aktionen

1. **Claude Code updaten auf v2.1.197** (falls nicht bereits automatisch): `npm update -g @anthropic-ai/claude-code` - Sonnet 5 mit 1M Kontext ist ab sofort Standard und bis 31. August günstiger.

2. **Hook-Matcher prüfen**: Falls CLAUDE.md oder settings.json Hook-Matcher mit Bindestrichen (z.B. `mcp__brave-search`) enthält, sicherstellen dass das neue Exact-Match-Verhalten gewünscht ist. Wildcard `mcp__brave-search__.*` für alle Tools eines Servers verwenden.

3. **Organisations-Modell konfigurieren**: Im Anthropic Org-Konsole das Standard-Modell auf Sonnet 5 setzen, damit alle Team-Mitglieder automatisch das neue Modell nutzen.

4. **MCP-Server in Projekt-Settings überprüfen**: Nach dem Security-Fix startet Claude Code keine MCP-Server mehr, die nur per Projekt-`.claude/settings.json` genehmigt wurden (ohne globale Genehmigung). Wichtig für Setups mit projekt-lokalen MCP-Konfigurationen.

5. **OpenTelemetry prüfen**: Falls OTEL-Logging aktiv ist und nur Prompts geloggt werden sollen, `OTEL_LOG_ASSISTANT_RESPONSES=0` setzen - sonst werden ab v2.1.194 auch Antworten mitgeloggt.

## Keine Aktion nötig

- **Streaming-Watchdog**: Läuft automatisch. Bei Bedarf mit `CLAUDE_ENABLE_STREAM_WATCHDOG=0` deaktivierbar.
- **`/rewind` nach `/clear`**: Automatisch verfügbar, kein Setup erforderlich.
- **Session-Namen**: Werden automatisch generiert, optional anpassbar.
- **CPU-Reduktion (37% beim Streaming)**: Gilt automatisch nach Update.
- **Speicherverbesserungen bei langen Sessions**: Automatisch nach Update.
- **Klickbare Dateianhänge**: Automatisch verfügbar nach Update.

---
*Quellen: GitHub Releases anthropics/claude-code (v2.1.193-v2.1.197)*
*Anthropic News: nicht erreichbar (Netzwerk-Allowlist)*
*Reddit r/ClaudeCode: nicht erreichbar (Netzwerkfehler)*
*Erstellt: 2026-07-01*
