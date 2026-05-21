# Claude Intelligence Briefing - 2026-05-21

## Neue Releases

### v2.1.146 (21. Mai 2026) - HEUTE

**Wichtigste Änderungen:**

- `/simplify` umbenannt zu `/code-review` mit optionalem Effort-Level (z.B. `/code-review high`)
- Auto-Modus unterdrückt `AskUserQuestion` nicht mehr, wenn User oder Skill explizit darauf angewiesen ist
- Windows PowerShell-Fix: Fehler bei winget/Microsoft Store Installation behoben (Regression seit v2.1.124)
- MCP Pagination-Bug behoben: `resources/list`, `resources/templates/list`, `prompts/list` lieferten ab Seite 2 keine Einträge mehr
- `CLAUDE_CODE_SUBAGENT_MODEL` wird jetzt in Multi-Agent-Sessions an Kind-Prozesse weitergegeben
- Auto-Updater: Native Versionsprüfungen und Downloads wiederholen bei Netzwerkfehlern statt sofort abzubrechen
- Diff-Rendering-Performance für große Datei-Edits verbessert
- Diverse weitere Fixes für Background-Sessions, Windows Terminal, Managed-Settings-Policies

### v2.1.145 (19. Mai 2026)

**Wichtigste Änderungen:**

- `claude agents --json` hinzugefügt: listet laufende Claude-Sessions als JSON für Scripting (tmux-resurrect, Status Bars, Session-Picker)
- `agent_id` und `parent_agent_id` in OTEL-Spans ergänzt; Background-Subagent-Spans nesteln korrekt unter dem aufrufenden Agent-Tool-Span
- `/plugin` Discover und Browse zeigen jetzt Commands, Agents, Skills, Hooks, MCP/LSP-Server vor der Installation
- Status Line JSON enthält jetzt GitHub-Repo und PR-Infos wenn erkannt
- Mouse Hover und Click in Vollbild-Slash-Command-Listen
- Bugfix: `AskUserQuestion` in Background-Sessions antwortete nicht auf Esc
- MCP Prompt-Fehler zeigen jetzt den fehlenden Argument-Namen statt roher Server-Fehler
- Bugfix: Permission-Prompt-Bypass bei nackten Variablenzuweisungen in Bash-Commands (Sicherheitsfix!)

### v2.1.144 (19. Mai 2026)

**Wichtigste Änderungen:**

- `/resume` jetzt für Background-Sessions verfügbar (mit `bg`-Markierung)
- `/model` ändert nur noch die aktuelle Session; `d` setzt das Standardmodell für neue Sessions
- Startup-Hang bis 75 Sekunden bei unreachbarem `api.anthropic.com` behoben (jetzt 15s Timeout)
- macOS: Background-Sessions crashten bei Full Disk Access-geschützten Ordnern (Regression in v2.1.143) behoben
- MCP: Paginated `tools/list` lieferte nur erste Seite; behoben
- Datei-Deskriptor-Erschöpfung bei Builds in Skill-Verzeichnissen behoben
- `head`/`tail` erfüllen jetzt die Read-before-Edit-Prüfung

## Blog / Ankündigungen

Quellen anthropic.com/news und reddit.com/r/ClaudeCode waren in dieser Session netzwerkseitig nicht erreichbar (Allowlist-Beschränkung der Remote-Execution-Umgebung). Keine verifizierten Blogbeiträge der letzten 48 Stunden dokumentierbar.

## Community-Highlights

r/ClaudeCode war in dieser Session nicht abrufbar. Auf Basis der Release-Notes lassen sich folgende Community-relevante Themen ableiten:

- **Sicherheitsfix in v2.1.145**: Permission-Prompt-Bypass durch nackte Bash-Variablenzuweisungen geschlossen. Wer Auto-Approve für Bash nutzt, sollte updaten.
- **`/code-review`**: Das umbenannte `/simplify` mit Effort-Levels dürfte in der Community intensiv diskutiert werden.
- **`claude agents --json`**: Eröffnet Scripting-Szenarien für fortgeschrittene Nutzer (tmux-Integrationen, eigene Dashboards).

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| `/code-review` mit Effort-Level | Hoch | Minuten | Mittel | Hoch |
| `AskUserQuestion`-Fix in Auto-Modus | Hoch | Minuten | Hoch | Hoch |
| Permission-Bypass-Sicherheitsfix | Hoch | Minuten (Update) | Hoch | Hoch |
| `claude agents --json` für Scripting | Mittel | Stunden | Mittel | Mittel |
| MCP Pagination-Fix | Mittel | Minuten | Mittel | Mittel |
| `/model` nur aktuelle Session | Mittel | Minuten | Niedrig | Mittel |
| OTEL Span-Tracking für Multi-Agent | Niedrig | Tage | Niedrig | Niedrig |
| Diff-Performance für große Dateien | Niedrig | Keine | Niedrig | Niedrig |

## Empfohlene Aktionen

1. **Update auf v2.1.146 durchführen** - enthält einen Sicherheitsfix (Permission-Bypass) und den `AskUserQuestion`-Fix, der direkt das Cowork OS Skills-System betrifft
2. **`/code-review high` in den Workflow einbauen** - bisher hieß der Befehl `/simplify`; die neue Effort-Level-Option ermöglicht tiefere Reviews für kritische PRs, ohne einen separaten Prompt zu schreiben
3. **`AskUserQuestion`-Verhalten prüfen**: Skills, die auf Nutzereingaben angewiesen sind, funktionierten im Auto-Modus bisher nicht zuverlässig. Mit v2.1.146 sollten entsprechende Skills erneut getestet werden.
4. **MCP-Server prüfen**: Falls MCP-Server mit Pagination eingesetzt werden, war das bisher fehlerhaft. Ab v2.1.146 zuverlässig.

## Keine Aktion nötig

- OTEL-Span-Tracking: Nur relevant bei eigenem Observability-Stack
- Windows Terminal Strobing-Fixes: Nicht relevant für macOS-basiertes EXPAND B2B Setup
- `CLAUDE_CODE_SUBAGENT_MODEL`-Fix: Nur relevant bei explizit konfigurierten Subagent-Modellen

---

*Quellen: github.com/anthropics/claude-code/releases, code.claude.com/docs/en/changelog*
*Generiert: 2026-05-21 | Modell: claude-sonnet-4-6*
