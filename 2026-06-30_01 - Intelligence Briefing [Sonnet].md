# Claude Intelligence Briefing - 2026-06-30

## Neue Releases

### v2.1.196 (2026-06-29) - AKTUELL
Gestern veröffentlicht. Viele Verbesserungen und Bugfixes.

**Neue Funktionen:**
- **Org-weite Standardmodelle**: Admins können im Org-Console ein Standardmodell für das gesamte Team setzen. Erscheint als "Org default" (oder "Role default") in `/model`.
- **Lesbare Session-Namen**: Hintergrundkonversationen erhalten automatisch beschreibende Namen.
- **Klickbare Dateianhänge**: Cmd/Ctrl-Klick auf Dateianhänge öffnet die Datei direkt im Finder/Explorer.
- **Streaming-Watchdog jetzt standardmäßig aktiv**: Abbruch und automatischer Neustart wenn ein Response-Stream 5 Minuten lang keine Events liefert. Abschalten mit `CLAUDE_CODE_DISABLE_STREAM_WATCHDOG=0` (Hinweis: Env-Var laut Release ist `CLAUDE_ENABLE_STREAM_WATCHDOG=0`).

**Sicherheit:**
- `claude mcp list`/`get` startet keine MCP-Server mehr aus `.mcp.json`-Dateien, die ein Repo selbst via `.claude/settings.json` freigegeben hat. Nicht vertrauenswürdige Workspaces zeigen "Pending approval".

**Bugfixes (relevant):**
- Hintergrundjob-Absturz behoben: Fehlerhafte Transcript-Erkennung löschte keine Konversationen mehr dauerhaft.
- `claude agents --dangerously-skip-permissions` funktioniert wieder korrekt.
- MCP OAuth mit GitLab Self-Hosted und anderen Enterprise-IdPs (invalid_scope bei fehlender scope-Angabe) behoben.
- `/context` zeigte 0 Token für alle Tool-Gruppen auf Bedrock - behoben.
- `/deep-research` berichtete fälschlich "alle Behauptungen widerlegt" statt "nicht verifiziert" - behoben.
- `claude agents`-Sitzungsstatus stabiler (kein Flip zwischen "Done"/"Needs your input").

**Verbesserungen:**
- Background-Session-Stabilität: Langläufige Befehle und Workflows überleben Prozess-Neustarts und Updates (auch Windows).
- Hintergrundagenten werden nach Daemon-Neustart automatisch dort fortgesetzt, wo sie aufgehört haben.
- `/code-review`-Workflow: 5 Cleanup-Finder zu einem zusammengeführt, ~25% weniger Token-Verbrauch.
- Remote Control deaktiviert sich automatisch, wenn `ANTHROPIC_BASE_URL` auf einen Nicht-Anthropic-Host zeigt.
- `claude agents`-Ansicht öffnen aus Vordergrundkonversation jetzt mit einzelnem `←` statt zwei.

### v2.1.195 (2026-06-26)
**Wichtig für Hook-Nutzer:**
- Hook-Matcher mit Bindestrichen im Bezeichner (z.B. `code-reviewer`, `mcp__brave-search`) führen jetzt Exact-Matching durch, kein Substring-Matching mehr. Wer alle Tools eines MCP-Servers mit Bindestrich matchen will: `mcp__brave-search__.*` verwenden.

**Weitere Änderungen:**
- Neues Env-Var `CLAUDE_CODE_DISABLE_MOUSE_CLICKS` zum Deaktivieren von Maus-Klicks/Drag/Hover im Fullscreen-Modus.
- Voice-Diktat auf macOS behoben (Stille nach Gerätewechsel, Auto-Submit für CJK-Sprachen).
- Externe Plugins aus Projekt-`.claude/settings.json` verlangen nun auf allen Ladepfaden explizite Installationszustimmung.
- `/plugin` Enable/Disable funktioniert wieder wenn `plugin.json name` vom Marketplace-Namen abweicht.
- Hintergrundjobs verlieren keine Daten mehr bei Neustart durch neuere Claude Code Version.
- `claude agents`-Abschlussliste nutzt jetzt verfügbaren vertikalen Platz besser aus.

### v2.1.193 (2026-06-25)
**Neue Funktionen:**
- `autoMode.classifyAllShell`: Neues Setting um alle Bash/PowerShell-Befehle durch den Auto-Modus-Klassifizierer zu leiten (nicht nur willkürliche Code-Ausführungsmuster).
- Auto-Modus-Ablehnungsgründe werden jetzt im Transcript, im Toast und unter `/permissions` recent denials angezeigt.
- `claude_code.assistant_response` OpenTelemetry Log-Event: enthält Modell-Antworttext. Aktivierung via `OTEL_LOG_ASSISTANT_RESPONSES=1`.
- Live-Dateipfad-Autovervollständigung im Bash-Modus (`!`).
- Starthinweis wenn MCP-Server Authentifizierung benötigen (Verweis auf `/mcp`).
- Automatisches Memory-Pressure-Reaping für inaktive Hintergrund-Shell-Befehle.

**Verbesserungen:**
- MCP `headersHelper` Auth: Neustart und Reconnect bei 401/403-Fehlern automatisch.
- Plugin-Auto-Umbenennung: Marketplace `renames`-Maps werden automatisch befolgt.

## Blog/Ankuendigungen

Anthropic-Blog war in dieser Sitzung nicht abrufbar (Netzwerkrichtlinie blockiert anthropic.com). Keine neuen Ankündigungen verifiziert.

## Community-Highlights

Reddit (r/ClaudeCode) war nicht abrufbar. Keine Community-Daten verfügbar.

*Bekannte Quellen aus Vorperioden:*
- awesome-claude-code-toolkit (rohitg00): 135+ Agenten, 35 Skills, 176+ Plugins
- antigravity-awesome-skills (sickn33): 1.400+ Skills

## Relevanz fuer Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschaeftswert | Prioritaet |
|---|---|---|---|---|
| Org-weite Standardmodelle (v2.1.196) | Hoch | Minuten | Hoch | Hoch |
| Hook-Exact-Matching Bugfix (v2.1.195) | Hoch | Minuten | Mittel | Hoch |
| Sicherheit: MCP Pending Approval (v2.1.196) | Hoch | Keine Aktion | Hoch | Hoch |
| /code-review 25% guenstiger (v2.1.196) | Hoch | Keine Aktion | Mittel | Mittel |
| Background-Session-Stabilitaet (v2.1.196) | Mittel | Keine Aktion | Mittel | Mittel |
| Streaming Watchdog Standard (v2.1.196) | Mittel | Keine Aktion | Mittel | Mittel |
| autoMode.classifyAllShell (v2.1.193) | Mittel | Stunden | Mittel | Niedrig |
| OTEL Assistant-Response-Logging (v2.1.193) | Niedrig | Stunden | Niedrig | Niedrig |

## Empfohlene Aktionen

1. **Hook-Konfiguration prüfen** (v2.1.195): Falls Hooks mit Bindestrichen im Namen existieren (z.B. `mcp__brave-search`), muss der Pattern von Substring-Matching auf Exact-Match oder Regex (`mcp__brave-search__.*`) umgestellt werden. Sofortiger Check empfohlen, da falsch konfigurierte Hooks stumm fehlschlagen.

2. **Org-Standardmodell konfigurieren**: Im Anthropic Org-Console ein Team-Standardmodell setzen, damit alle Cowork-OS-Nutzer das richtige Modell verwenden, ohne individuell konfigurieren zu müssen.

3. **Upgrade auf v2.1.196**: Enthält wichtige Stabilitätsverbesserungen für Hintergrundagenten und Sicherheitsverbesserungen für MCP-Server. Update via `npm update -g @anthropic-ai/claude-code`.

4. **MCP-Pending-Approval-Verhalten kennen**: Bei multi-Workspace-Setups im Cowork OS darauf achten, dass Repos nicht mehr automatisch eigene `.mcp.json`-Server starten. Freigegebene Server müssen explizit im User- oder Project-Settings genehmigt sein.

## Keine Aktion noetig

- Streaming-Watchdog-Standard: Verhält sich automatisch besser, kein Eingriff nötig.
- Background-Session-Stabilität: Verbesserung greift automatisch nach Update.
- `/code-review`-Token-Reduktion: Tritt automatisch in Kraft.
- Voice-Diktat-Fixes: Relevant nur für macOS-Nutzer mit Voice-Mode.
- `/context` Bedrock-Fix: Nur relevant bei Bedrock-Nutzung.
- OTEL-Logging: Nur relevant wenn OpenTelemetry-Integration aktiv ist.

---
*Quellen: GitHub Releases anthropics/claude-code (v2.1.193-v2.1.196). Anthropic Blog und Reddit nicht abrufbar (Netzwerkrichtlinie).*
*Modell: claude-sonnet-4-6 | Erstellt: 2026-06-30*
