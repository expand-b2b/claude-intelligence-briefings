# Claude Intelligence Briefing - 2026-06-29

Quellen: GitHub Releases (OK), Anthropic Blog (nicht erreichbar), Reddit (nicht erreichbar)

---

## Neue Releases

### v2.1.195 (2026-06-26) - Bugfix-Release

**Wichtigste Änderungen:**

- **Hook-Matcher-Fix für Bindestriche:** Hooks mit hyphenated Identifiern (z.B. `code-reviewer`, `mcp__brave-search`) haben bisher per Substring-Match unbeabsichtigt auch andere Tools getroffen. Ab sofort: Exact-Match. Wer alle Tools eines MCP-Servers mit Bindestrich matchen will, muss `mcp__brave-search__.*` verwenden.
- **CLAUDE_CODE_DISABLE_MOUSE_CLICKS:** Neues Env-Var deaktiviert Mausklick/Drag/Hover im Fullscreen-Modus, lässt aber Scroll-Wheel aktiv.
- **Voice-Diktat-Fixes:** Stille nach Gerätewechsel auf macOS behoben; Auto-Submit für Sprachen ohne Leerzeichen (Japanisch, Chinesisch, Thai) repariert.
- **Plugin-Fixes:** Externe Plugins aus Projekt-`.claude/settings.json` erfordern jetzt immer explizite Installationszustimmung; Enable/Disable in `/plugin` funktioniert wieder korrekt.
- **Background-Agent-Fixes:** Jobs verschwanden oder verloren Daten bei neueren Versionen; leerer Bildschirm beim Öffnen abgestürzter Tasks ist behoben.

### v2.1.193 (2026-06-25) - Feature-Release

**Wichtigste Änderungen:**

- **autoMode.classifyAllShell:** Neues Setting leitet alle Bash/PowerShell-Befehle durch den Auto-Modus-Klassifizierer, nicht nur arbitrary-code-execution-Muster.
- **Auto-Modus-Denial-Reasons:** Ablehnungsgründe erscheinen jetzt im Transcript, im Toast und unter `/permissions` Recent Denials.
- **OpenTelemetry assistant_response:** Neues Log-Event `claude_code.assistant_response` enthält den Antworttext des Modells. Standard: redaktiert, ausser `OTEL_LOG_ASSISTANT_RESPONSES=1`. ACHTUNG: Deployments, die bereits User-Prompts loggen (`OTEL_LOG_USER_PROMPTS`), erhalten automatisch auch Antworten - bei Bedarf `OTEL_LOG_ASSISTANT_RESPONSES=0` setzen.
- **Bash-Modus File-Autocomplete:** Live-Dateinamenvervollständigung im Bash-Modus (`!`).
- **MCP Auth Startup-Hinweis:** Beim Start erscheint ein Hinweis, wenn MCP-Server Authentifizierung benötigen, mit Verweis auf `/mcp`.
- **Background-Shell-Reaping:** Idle Background-Shell-Befehle werden bei Speicherdruck automatisch beendet (deaktivierbar: `CLAUDE_CODE_DISABLE_BG_SHELL_PRESSURE_REAP=1`).
- **MCP headersHelper Auth:** Reconnect bei 401/403 automatisch; Plugin-Auto-Rename folgt jetzt Marketplace-Rename-Maps.

### v2.1.191 (2026-06-24) - Feature- und Performance-Release

**Wichtigste Änderungen:**

- **/rewind nach /clear:** Konversation kann ab sofort vor einem `/clear` fortgesetzt werden.
- **Background-Agents dauerhaft stoppen:** Gestoppte Agents aus dem Task-Panel werden nicht mehr automatisch neu gestartet.
- **CPU-Reduktion -37%:** Durch Batching von Text-Updates auf 100ms deutlich weniger CPU-Last beim Streaming.
- **MCP-Verbesserungen:** Capability-Discovery wiederholt transiente Fehler; OAuth retry nach Netzwerkfehlern; bessere HTTP-404-Fehlermeldungen mit URL.
- **Sandbox-Netzwerk:** Erlaubte Hosts werden jetzt für die gesamte Session gespeichert, nicht nur für einen Request.

---

## Blog/Ankündigungen

Quelle nicht erreichbar (anthropic.com nicht im Netzwerk-Allowlist dieser Umgebung).

---

## Community-Highlights

Quelle nicht erreichbar (reddit.com geblockt).

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Hook-Matcher-Fix für Bindestriche (v2.1.195) | Hoch | Minuten | Mittel | HOCH |
| OpenTelemetry-Breaking-Change (v2.1.193) | Mittel | Minuten | Mittel | HOCH |
| /rewind nach /clear (v2.1.191) | Hoch | Null | Mittel | HOCH |
| autoMode.classifyAllShell (v2.1.193) | Mittel | Minuten | Niedrig | Mittel |
| MCP Auth Startup-Hinweis (v2.1.193) | Mittel | Null | Niedrig | Mittel |
| CPU -37% beim Streaming (v2.1.191) | Hoch | Null | Niedrig | Mittel |
| Background-Shell-Reaping (v2.1.193) | Niedrig | Null | Niedrig | Niedrig |
| DISABLE_MOUSE_CLICKS Env-Var (v2.1.195) | Niedrig | Null | Niedrig | Niedrig |

---

## Empfohlene Aktionen

1. **Hook-Konfigurationen prüfen (sofort, 15 Min.):** Der Fix für hyphenated Hook-Matcher in v2.1.195 ändert das Verhalten bestehender Hooks. Alle Hooks in `.claude/settings.json` und CLAUDE.md, die Bindestriche enthalten (z.B. `code-reviewer`, `mcp__*`), müssen auf korrektes Matching geprüft werden. Wer bisher auf Substring-Matching angewiesen war, muss auf `.*`-Wildcards umstellen.

2. **OpenTelemetry-Konfiguration prüfen (sofort, 5 Min.):** Falls OTEL in der Cowork-OS-Umgebung aktiv ist und `OTEL_LOG_USER_PROMPTS` gesetzt ist, werden ab v2.1.193 automatisch auch Modellantworten geloggt. Datenschutz-Implikation prüfen; bei Bedarf `OTEL_LOG_ASSISTANT_RESPONSES=0` in die Umgebungsvariablen aufnehmen.

3. **/rewind testen und dokumentieren (diese Woche, 30 Min.):** Das neue `/rewind`-Feature ermöglicht das Zurücksetzen auf den Stand vor `/clear`. Für B2B-Klienten relevant als Recovery-Mechanismus bei versehentlichem `/clear` in laufenden Projekten. In die Cowork-OS-Dokumentation aufnehmen.

---

## Keine Aktion nötig

- **CLAUDE_CODE_DISABLE_MOUSE_CLICKS:** Für Cowork-OS-Workflows nicht relevant (kein Terminal-Fullscreen-Einsatz im normalen B2B-Betrieb).
- **Voice-Diktat-Fixes:** Nicht Teil des aktuellen Cowork-OS-Setups.
- **Bash-Modus File-Autocomplete:** Komfort-Feature, kein Handlungsbedarf.
- **Background-Shell-Reaping:** Nur relevant bei Speicherdruck; Standard-Verhalten ist akzeptabel.
- **MCP headersHelper Auth-Reconnect:** Verbessert bestehende Funktionalität ohne Konfigurationsänderung.
- **/voice Policy-Meldung, Sandbox-Netzwerk-Memory, /login URL-Fix, Agent-Panel-Fixes:** Infrastruktur-Verbesserungen ohne Handlungsbedarf.

---

*Erstellt: 2026-06-29 | Modell: Sonnet | Quellen: GitHub API (OK), Anthropic Blog (geblockt), Reddit (geblockt)*
