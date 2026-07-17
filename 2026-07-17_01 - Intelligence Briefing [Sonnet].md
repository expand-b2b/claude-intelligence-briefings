# Claude Intelligence Briefing - 2026-07-17

## Neue Releases

### Claude Code v2.1.212 (17. Juli 2026) -- Heutiges Release
Das bedeutendste Update dieser Woche mit mehreren neuen Workflow-Features:

**Neue Features:**
- **`/fork`** kopiert die aktuelle Konversation in eine neue Hintergrund-Session (sichtbar in `claude agents`); der bisherige In-Session-Subagent heißt jetzt `/subtask`
- **`claude auto-mode reset`** stellt die Standard-Auto-Mode-Konfiguration wieder her (mit Bestätigungsprompt, `--yes` überspringt diesen)
- **Session-weites WebSearch-Limit:** Standard 200 Aufrufe, konfigurierbar via `CLAUDE_CODE_MAX_WEB_SEARCHES_PER_SESSION`
- **Session-weites Subagent-Cap:** Standard 200 Spawns, überschreibbar via `CLAUDE_CODE_MAX_SUBAGENTS_PER_SESSION`
- **MCP Auto-Background:** Tool-Aufrufe über 2 Minuten werden automatisch in den Hintergrund verschoben (konfigurierbar via `CLAUDE_CODE_MCP_AUTO_BACKGROUND_MS`)
- **`/resume` mit Picker:** Öffnet interaktiven Auswahl-Dialog für vergangene Sessions (inklusive gelöschter)

**Wichtige Bugfixes:**
- Plan-Mode führte dateimodifizierende Bash-Befehle (`touch`, `rm`) ohne Permission-Prompt aus -- behoben
- Worktree-Erstellung bei Symlink an `.claude/worktrees` legte Dateien außerhalb des Repos an -- behoben
- SIGTERM während Bash-Tool hinterließ verwaiste Prozesse; CLI terminiert jetzt den Prozessbaum sauber (Exit Code 143)
- `/ultrareview` lehnte PR-Referenzen wie `#123` oder `PR 123` ab -- jetzt akzeptiert
- `/ultrareview <branch>` fetched Branch nicht von Origin -- behoben
- Hosted Sessions schlugen bei mTLS-Zertifikaten, CA-Bundles und OAuth-Scopes fehl -- behoben
- `continue:false` Hook-Halt bei Tool-Fehler wurde verworfen -- behoben

### Claude Code v2.1.211 (15. Juli 2026) -- Bereits in gestrigem Briefing
Kurzreferenz: `--forward-subagent-text` Flag, Sicherheitsfix bidirektionale Zeichen, PreToolUse Hook Fix.

### Claude Code v2.1.209 (14. Juli 2026) -- Quick Fix
`/model` und andere Dialoge in Hintergrund-Sessions entsperrt.

## Blog/Ankündigungen

Anthropic-Blog und API-Release-Notes waren heute technisch nicht abrufbar (HTTP 403 aus Scripting-Kontext). Keine neuen offiziellen Ankündigungen seit dem gestrigen Briefing identifizierbar.

Quellen-Index: [Claude Code Changelog](https://code.claude.com/docs/en/changelog) | [Anthropic News](https://www.anthropic.com/news)

## Community-Highlights

Reddit-Direktzugang ist aus dem Scripting-Kontext nicht verfügbar. Auf Basis des Changelogs lassen sich folgende Community-relevante Trends ableiten:

- **`/fork` vs. `/subtask`:** Diese Umbenennung wird in der Community Diskussionen auslösen; bestehende CLAUDE.md-Setups, die `/subtask` referenzieren, müssen angepasst werden
- **Session-Limits:** Die neuen Caps für WebSearch und Subagent-Spawns sind Reaktion auf Community-Berichte über unkontrollierte Token-Verbräuche in langen agentic Sessions
- **MCP Auto-Background:** Löst ein häufig gemeldetes Problem mit blockierenden MCP-Aufrufen in interaktiven Sessions

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| `/fork` (neues Background-Session-Feature) | Hoch | Minuten (CLAUDE.md anpassen) | Hoch | Diese Woche |
| `/subtask` Umbenennung (Breaking Change) | Hoch | Minuten (bestehende Setups prüfen) | Hoch | Sofort prüfen |
| Session-Limit WebSearch (200/Session) | Mittel | Minuten (ggf. Env-Var setzen) | Mittel | Prüfen |
| Session-Cap Subagent-Spawns (200/Session) | Mittel | Minuten (ggf. Env-Var setzen) | Mittel | Prüfen |
| MCP Auto-Background (2 Min. Threshold) | Mittel | keine (automatisch) | Mittel | Beobachten |
| `claude auto-mode reset` | Niedrig | Minuten | Niedrig | Info |
| `/resume` mit Picker | Mittel | keine (automatisch) | Mittel | Sofort nutzen |
| Plan-Mode Bash-Fix | Hoch | keine (automatisch) | Hoch | Sofort updaten |
| SIGTERM Prozessbaum-Fix | Mittel | keine (automatisch) | Mittel | Sofort updaten |
| `/ultrareview` PR-Referenz-Fix | Mittel | keine (automatisch) | Mittel | Nach Update verfügbar |
| Hosted Sessions mTLS-Fix | Niedrig | keine (automatisch) | Niedrig | Nur bei mTLS-Setups |

## Empfohlene Aktionen

1. **Claude Code updaten:** v2.1.212 enthält einen kritischen Sicherheitsfix (Plan-Mode führte Bash ohne Permission aus). Update sofort: `npm update -g @anthropic-ai/claude-code`

2. **`/subtask` zu `/fork` prüfen:** Falls Skills, CLAUDE.md-Dateien oder Hooks den Befehl `/subtask` referenzieren, auf das neue Verhalten prüfen. Der alte `/subtask` (In-Session-Subagent) existiert noch, aber `/fork` ist jetzt die Background-Session-Variante. Namen und Semantik haben sich verschoben.

3. **Session-Limits evaluieren:** Standard-Cap von 200 WebSearch-Aufrufen und 200 Subagent-Spawns pro Session prüfen. Wenn Briefing-Workflows diese Grenzen erreichen könnten (z.B. umfangreiche Research-Runs), `CLAUDE_CODE_MAX_WEB_SEARCHES_PER_SESSION` und `CLAUDE_CODE_MAX_SUBAGENTS_PER_SESSION` in der Umgebungskonfiguration setzen.

4. **`/resume` Picker nutzen:** Der neue interaktive Picker für vergangene Sessions ist direkt einsetzbar und erleichtert das Wiederaufnehmen abgebrochener Briefing-Runs oder Research-Sessions.

5. **MCP-Konfiguration prüfen:** Falls MCP-Server-Aufrufe länger als 2 Minuten dauern, werden sie jetzt automatisch in den Hintergrund verschoben. Das kann das Verhalten bestehender Workflows verändern. `CLAUDE_CODE_MCP_AUTO_BACKGROUND_MS` auf einen höheren Wert setzen, falls das unerwünscht ist.

## Keine Aktion nötig

- `claude auto-mode reset`: Nützlicher Notfall-Befehl, aber kein aktiver Handlungsbedarf im normalen Betrieb
- SIGTERM-Fix: Automatisch nach Update aktiv, keine Konfigurationsänderung erforderlich
- `/ultrareview` Fixes: Werden nach Update automatisch wirksam
- Hosted Sessions mTLS-Fix: Nur relevant bei Enterprise-Setups mit mTLS-Zertifikaten
- Worktree-Symlink-Fix: Edge Case, nach Update automatisch behoben
