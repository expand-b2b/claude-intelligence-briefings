# Claude Intelligence Briefing - 2026-06-23

## Neue Releases

### Claude Code 2.1.186 (22. Juni 2026, aktuellste Version)

Einzige neue Version seit dem Briefing vom 22. Juni 2026.

**MCP-Authentifizierung per CLI:**
- `claude mcp login <name>` und `claude mcp logout <name>` ermöglichen jetzt Authentifizierung bei MCP-Servern direkt aus der Kommandozeile, ohne das interaktive Menü zu öffnen
- `--no-browser` mit stdin-Redirect für SSH-Umgebungen ohne Browser

**Neue Automatisierung:**
- `!` vor Bash-Befehlen löst jetzt automatisch eine Claude-Antwort aus (deaktivierbar via `"respondToBashCommands": false` in settings.json)

**Workflows und Subagents:**
- Status-Filterung per `f`-Taste in der `/workflows` Agent-Detailansicht
- Workflow `agent({schema})` Subagent-Schleifen brechen jetzt nach 5 Versuchen ab (vorher unbegrenzt)
- "Skills"-Abschnitt im `/plugin` Installed-Tab sichtbar

**Stabilität:**
- Streaming-Fehler nach Gerät aus Schlaf-Modus behoben ("Content block not found")
- `~~strikethrough~~` Rendering in Nachrichten korrigiert
- Vim-Mode Undo-Verhalten korrigiert
- Typo-Vorschläge für `claude mcp`-Unterkommandos


## Blog/Ankuendigungen

Anthropic Blog nicht direkt abrufbar (Host ausserhalb Netzwerk-Allowlist). Keine neuen Major-Ankündigungen in den letzten 48 Stunden bekannt. Letzte grosse Ankündigung bleibt **Claude Fable 5** vom 9. Juni 2026.


## Community-Highlights

Reddit (r/ClaudeCode) nicht direkt abrufbar. Basierend auf v2.1.186 wahrscheinliche Diskussionsthemen:

- **MCP-Login per CLI:** Für Teams mit SSH-Workflows und Remote-Entwicklung relevant, da kein Browser mehr nötig
- **Bash-Trigger (`!`):** Viele Nutzer experimentieren mit hybriden Shell-Claude-Workflows
- **Subagent-Loop-Schutz:** Community-Feedback zu endlosen Subagent-Schleifen wurde offenbar adressiert


## Relevanz fuer Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschaeftswert | Prioritaet |
|---|---|---|---|---|
| `claude mcp login/logout` CLI-Auth | Hoch | Minuten | Mittel | Hoch |
| `!` Bash-Trigger fuer automatische Claude-Antworten | Mittel | Minuten (Config) | Mittel | Mittel |
| Subagent-Loop-Schutz (5 Versuche) | Hoch | Keine (automatisch) | Hoch | Hoch |
| Skills-Abschnitt im `/plugin` Installed-Tab | Niedrig | Keine | Niedrig | Niedrig |
| Streaming-Fix nach Schlaf-Modus | Hoch | Keine (automatisch) | Mittel | Hoch |


## Empfohlene Aktionen

1. **Claude Code auf 2.1.186 aktualisieren:** `npm update -g @anthropic-ai/claude-code` oder `claude update`. Bringt den Streaming-Fix nach Schlaf-Modus, der besonders bei Laptop-Nutzung relevant ist.

2. **MCP-Login per CLI einrichten:** Für das Briefing-System und andere automatisierte Routinen, die MCP-Server mit Auth nutzen, den neuen `claude mcp login <name>`-Befehl einrichten. Erspart die manuelle Menü-Navigation bei jedem neuen Remote-Run.

3. **`respondToBashCommands: false` prüfen:** Der neue `!`-Trigger für Bash ist standardmässig aktiv. In automatisierten Sessions (wie dieser Briefing-Routine) könnte er unerwünschte Claude-Antworten auf Shell-Ausgaben auslösen. Einstellung in `.claude/settings.json` bei Bedarf deaktivieren.

4. **Subagent-Workflows überprüfen:** Der neue 5-Versuch-Limit für `agent({schema})` Schleifen greift automatisch. Bestehende Workflows, die bewusst viele Wiederholungen nutzen, könnten jetzt abbrechen und müssen ggf. angepasst werden.


## Keine Aktion noetig

- Strikethrough-Rendering-Fix (2.1.186): Rein kosmetisch
- Vim-Mode Undo-Fix (2.1.186): Nur relevant bei Vim-Nutzer-Setup
- Typo-Vorschläge für `claude mcp` Unterkommandos: Komfortfunktion, kein Handlungsbedarf
- `teamate Mode: "iterm2"` Setting: Nur fuer Mac-Nutzer mit iTerm2 relevant
