# Claude Intelligence Briefing - 2026-04-22

## Neue Releases

### v2.1.117 (22.04.2026, heute)
Die bisher umfangreichste tägliche Version mit über 20 Änderungen.

**Performance und Stabilität**
- Parallele MCP-Verbindungen jetzt standardmäßig aktiv: lokale und claude.ai MCP-Server starten gleichzeitig
- Opus 4.7: Kontextfenster wurde korrigiert von 200K auf 1M (führte zu falsch frühem Autocompact)
- Glob und Grep-Tools auf macOS/Linux ersetzt durch eingebettete `bfs`/`ugrep` via Bash, schnellere Suche ohne extra Tool-Aufruf

**Modell-Verhalten**
- Standard-Effort für Pro/Max-Nutzer auf Opus 4.6 und Sonnet 4.6 auf `high` erhöht (vorher `medium`)
- Fork-Subagents können jetzt auf externen Builds aktiviert werden: `CLAUDE_CODE_FORK_SUBAGENT=1`
- Agent-Frontmatter `mcpServers` wird jetzt für Hauptthread-Agenten via `--agent` geladen

**Plugin-System**
- `plugin install` auf bereits installierten Plugins installiert fehlende Abhängigkeiten anstatt abzubrechen
- `blockedMarketplaces` und `strictKnownMarketplaces` werden jetzt bei install, update, refresh und autoupdate durchgesetzt
- Advisor Tool (experimentell): Stabilitätsfixes, kein Hängen mehr bei jedem Prompt

**Verbesserungen für Workspace-Nutzung**
- `/model`-Auswahl bleibt nach Neustart erhalten, auch wenn Projekt ein anderes Modell pinnt
- `/resume` bietet jetzt an, veraltete große Sessions zusammenzufassen
- `cleanupPeriodDays` bereinigt jetzt auch `~/.claude/tasks/`, `~/.claude/shell-snapshots/` und `~/.claude/backups/`

**OpenTelemetry**
- `user_prompt`-Events enthalten jetzt `command_name` und `command_source` für Slash Commands
- `effort`-Attribut in cost/token/api_request-Events wenn Modell Effort-Level unterstützt

**Bugfixes (relevant)**
- OAuth-Token-Erneuerung bei 401 mitten in einer Session funktioniert jetzt reaktiv
- `WebFetch` hing bei sehr großen HTML-Seiten, jetzt behoben
- Bedrock Application Inference Profile mit Opus 4.7 ohne Thinking: 400-Fehler behoben

---

### v2.1.116 (20.04.2026, vor 2 Tagen)

**Performance**
- `/resume` auf großen Sessions bis zu 67% schneller (ab 40 MB)
- MCP-Start bei mehreren stdio-Servern schneller; `resources/templates/list` wird auf ersten `@`-Aufruf verzögert

**UX**
- Thinking-Spinner zeigt Fortschritt inline: "still thinking", "thinking more", "almost done thinking"
- `/config`-Suche findet jetzt auch Option-Werte (z.B. "vim" findet den Editor-Mode-Eintrag)
- `/doctor` kann während laufender Antwort geöffnet werden
- Bash-Tool zeigt Hinweis wenn `gh`-Befehle GitHub Rate Limit erreichen

**Sicherheit**
- Sandbox-Auto-Allow überspringt nicht mehr die Sicherheitsprüfung für `rm`/`rmdir` auf `/`, `$HOME` und anderen kritischen Pfaden

**Bugfixes (relevant)**
- Intermittierender API 400-Fehler durch Cache-Control TTL-Reihenfolge behoben
- `/branch` akzeptiert jetzt Transcripts über 50 MB

---

## Blog/Ankuendigungen

Anthropic-News-Seite war während des Abrufs nicht erreichbar. Keine verifizierten Ankündigungen aus dieser Quelle für heute.

---

## Community-Highlights

Reddit r/ClaudeCode war während des Abrufs nicht erreichbar. Community-Daten nicht verfügbar.

**Indirekte Signale aus den Releases:**
- Hohe Reaktionszahlen auf v2.1.116 (65 Reaktionen, 34 Likes) signalisieren starkes Community-Interesse an Performance-Verbesserungen
- Opus 4.7-Kontextfenster-Fix (200K -> 1M) wurde mit 64 Reaktionen auf v2.1.114 quittiert, was auf verbreitete Nutzung hinweist

---

## Relevanz fuer Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschaeftswert | Prioritaet |
|---|---|---|---|---|
| Effort-Standard auf `high` für Opus 4.6 / Sonnet 4.6 | Hoch | Minuten (nur update) | Hoch | Sehr hoch |
| Agent-Frontmatter `mcpServers` via `--agent` | Hoch | Stunden (Skills anpassen) | Hoch | Hoch |
| Parallele MCP-Verbindungen standard | Hoch | Minuten (kein Eingriff nötig) | Mittel | Hoch |
| `cleanupPeriodDays` deckt jetzt tasks/snapshots/backups | Mittel | Minuten (Config prüfen) | Mittel | Mittel |
| Opus 4.7 Kontextfenster-Fix (1M statt 200K) | Hoch | Minuten (nur update) | Hoch | Hoch |
| Plugin-Abhängigkeiten automatisch nachinstalliert | Mittel | Minuten | Niedrig | Niedrig |
| `CLAUDE_CODE_FORK_SUBAGENT=1` für externe Builds | Mittel | Stunden (testen) | Mittel | Mittel |
| `/resume` 67% schneller auf großen Sessions | Mittel | Minuten (nur update) | Mittel | Mittel |

---

## Empfohlene Aktionen

1. **Update auf v2.1.117 sofort durchführen** (`claude update` oder `npm update -g @anthropic-ai/claude-code`). Der Effort-Default-Wechsel auf `high` und der Opus 4.7-Kontextfenster-Fix rechtfertigen das Update allein.

2. **Agent-Frontmatter `mcpServers` testen**: Skills, die MCP-Server benötigen, können nun direkt in den Agent-Frontmatter eingetragen werden. Das vereinfacht die Cowork OS Skill-Struktur erheblich. Einen bestehenden Skill als Test anpassen.

3. **`cleanupPeriodDays`-Konfiguration prüfen**: Nachdem die Bereinigung jetzt auf `tasks/`, `shell-snapshots/` und `backups/` ausgeweitet wurde, sicherstellen, dass der Wert sinnvoll gesetzt ist (Standard prüfen in `~/.claude/settings.json`).

4. **OpenTelemetry-Logging nutzen**: Wenn Monitoring eingerichtet ist, die neuen `command_name`/`command_source`-Attribute und den `effort`-Wert für bessere Nutzungsanalysen auswerten.

---

## Keine Aktion noetig

- **Keyboard-Fixes** (Ctrl+_, Cmd+Left, Devanagari-Rendering): Nur relevant für spezifische Terminal-Setups. Kein Handlungsbedarf für Standard-Cowork-OS-Nutzung.
- **Windows-spezifische Fixes** (`where.exe` Caching, Ctrl+Backspace): Nicht relevant für Linux/macOS-Umgebung.
- **Bedrock/Vertex AI Fixes**: Nicht relevant, da direktes Anthropic-API genutzt wird.
- **Remote Control Session-Fixes**: Kein Remote-Control-Einsatz im aktuellen Cowork OS.
- **SDK-Image-Content-Block-Fix**: Kein Bild-Input in aktuellen Workflows.

---

*Quellen: github.com/anthropics/claude-code/releases | Abruf: 2026-04-22*
*Anthropic News und Reddit r/ClaudeCode: nicht erreichbar (Host-Allowlist)*
