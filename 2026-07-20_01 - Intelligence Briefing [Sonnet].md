# Claude Intelligence Briefing - 2026-07-20

## Neue Releases

### Claude Code v2.1.215 (19. Juli 2026)

Kleines, aber verhaltensänderndes Release mit einer einzigen Änderung:

- **`/verify` und `/code-review` laufen nicht mehr automatisch.** Claude startet diese Skills nicht mehr aus eigenem Antrieb; sie müssen explizit mit `/verify` oder `/code-review` aufgerufen werden. Das betrifft alle Setups, in denen Claude bisher nach Änderungen selbstständig Code-Reviews auslöste.

---

### Claude Code v2.1.214 (18. Juli 2026)

Großes Release mit acht Sicherheitsfixes und mehreren neuen Features. Das bedeutendste einzelne Update seit Wochen.

**Sicherheitsfixes (dringendes Update empfohlen):**

- Permission-Check-Bypass in Windows PowerShell 5.1 behoben
- Bash-Permission-Checks schlugen bei File-Descriptor-Redirects fehl (`>`, `>>` in bestimmten Formen) -- behoben
- Bash-Permission-Checks überließen Befehle über 10.000 Zeichen ungeprüft dem Auto-Approve -- behoben
- Zsh-Variablen-Subscripts in `[[ ]]`-Vergleichen wurden als sicher eingestuft -- behoben
- Bestimmte `help`- und `man`-Befehle mit unsicheren Optionen wurden auto-approved -- behoben
- Permission-Prompt auf Remote-Sessions konnte vor lokalem Bestätigungsdialog fortfahren -- behoben
- `docker`-Befehle mit Daemon-Redirect-Flags (`--url`, `--connection`, `--identity`, Podman remote mode) liefen bisher ohne Prompt -- werden jetzt abgefragt
- `pkill -f` konnte versehentlich den eigenen Claude-Prozess beenden (Linux) -- behoben

**Neue Features:**

- **EndConversation Tool:** Claude kann Sessions bei hochgradig abusiven Nutzern oder Jailbreak-Versuchen aktiv beenden. Gilt für Client-facing Setups via Agent SDK.
- **Progress Heartbeat:** Lange laufende Tool-Calls geben jetzt periodische Fortschrittsmeldungen aus, statt stumm zu sein.
- **Memory-Datei ISO-Timestamp:** MEMORY.md-Dateien erhalten jetzt automatisch ein `modified`-Frontmatter-Feld mit ISO-Timestamp bei jedem Speichervorgang.
- **OpenTelemetry:** Neue Attribute `message.uuid`, `client_request_id`, `tool_source` für Message-Level-Korrelation und Tool-Provenienz in OTel-Log-Events.
- **`CLAUDE_CODE_OTEL_CONTENT_MAX_LENGTH`:** Neue Env-Var zur Konfiguration der 60-KB-Trunkierungsgrenze bei OTel-Content-Attributen.
- **Reasoning Effort in subagentStatusLine:** Benutzerdefinierte Agent-Zeilen können jetzt Model und Effort-Level anzeigen.

**Wichtige Bugfixes:**

- **Scheduled Tasks ignorierten eigene konfigurierte Prompts** (Regression). Ein geplanter Task sendete den konfigurierten Prompt nicht korrekt an die Session. Jetzt behoben -- betrifft dieses Briefing-System direkt.
- Background-Sessions: gelöschte Sessions blieben im Agent View, Leerlauf-Sessions hielten Daemon und Worker-Prozesse unnötig am Leben -- behoben.
- Memory-Frontmatter-Werte wurden am ersten `#` im Text abgeschnitten (stille Trunkierung) -- behoben.
- Session-Kosten- und Token-Telemetrie zählte bei bestimmten Streams doppelt -- behoben.
- MCP-Transient-Errors bei `prompts`/`resources`-Refresh löschten die Slash-Commands des Servers -- behoben.
- Hooks mit Exit-Code 2 blockierten nicht wie dokumentiert, wenn das Hook-JSON Schema-Validierung fehlschlug -- behoben.
- PowerShell-Tool (Windows): Stdin-Hang, UnicodeDecodeError, UnicodeEncodeError bei Python-Skripten behoben.
- `CLAUDE_CODE_MAX_SUBAGENTS_PER_SESSION`-Override funktionierte nicht für dispatched Sessions via `claude agents --effort ultracode` -- behoben.
- Streams schlugen mit "Socket is closed" hinter Corporate Proxies auf Windows fehl -- behoben.
- Settings-Datei über 2 MiB führte zu unbegrenztem Speicherwachstum; jetzt wird mit klarer Fehlermeldung abgebrochen.

---

## Blog/Ankündigungen

Anthropic-Blog und API-Release-Notes sind aus dem Scripting-Kontext nicht direkt abrufbar (Host nicht in Allowlist). Keine externen Ankündigungen in diesem Briefing berücksichtigt.

Quelle: [Claude Code Changelog](https://code.claude.com/docs/en/changelog)

---

## Community-Highlights

Reddit-Direktzugang aus dem Scripting-Kontext nicht verfügbar. Auf Basis des Changelogs ableitbare Community-Trends:

- **Verhaltensänderung `/verify` und `/code-review`:** Wer diese Skills in CLAUDE.md als automatisch erwartete Maßnahme beschrieben hat, muss seine Instructions anpassen. Claude löst sie nicht mehr selbst aus.
- **Sicherheitsfixes-Cluster:** Acht Permission-Fixes in einem Release sind ungewöhnlich. Deutet auf systematisches Security-Audit hin. Sofortiges Update empfohlen für alle Produktions-Setups.
- **Scheduled Tasks Fix:** Die Regression, bei der geplante Tasks ihre eigenen Prompts ignorierten, wird in der Community ein bekanntes Problem gewesen sein. Dieses Briefing-System war ebenfalls betroffen.
- **EndConversation Tool:** Interessant für B2B-Setups mit direktem Kunden-Zugang zu Claude-Sessions.

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| `/verify` und `/code-review` nicht mehr automatisch | Hoch | Minuten (CLAUDE.md prüfen) | Hoch | Sofort |
| 8 Sicherheitsfixes (Permission-Checks) | Hoch | keine (Update reicht) | Hoch | Sofort updaten |
| Scheduled Tasks Prompt-Fix | Hoch | keine (automatisch) | Hoch | Bereits behoben |
| Memory-ISO-Timestamp in MEMORY.md | Mittel | keine (automatisch) | Mittel | Sofort nutzen |
| Progress Heartbeat bei langen Tool-Calls | Mittel | keine (automatisch) | Mittel | Sofort sichtbar |
| EndConversation Tool (SDK) | Mittel | Stunden (bei Client-facing Setups) | Mittel | Wenn SDK genutzt |
| Docker Daemon-Redirect Permissions | Mittel | keine (automatisch) | Mittel | Bei Docker-Setups |
| OTel-Verbesserungen | Niedrig | Stunden (bei OTel-Setup) | Niedrig | Nur bei OTel |

---

## Empfohlene Aktionen

1. **Claude Code sofort updaten** (`claude update`): Acht Security-Fixes in v2.1.214 machen ein zeitnahes Update zwingend.
2. **CLAUDE.md und Skills auf `/verify`/`/code-review` prüfen:** Falls diese Skills irgendwo als "wird automatisch ausgeführt" beschrieben sind, muss das korrigiert werden. Claude startet sie ab v2.1.215 nur noch auf expliziten Aufruf.
3. **Scheduled-Task-Setups testen:** Der Prompt-Fix aus v2.1.214 behebt eine Regression bei automatischen Tasks. Prüfen, ob geplante Routinen wieder korrekt feuern.
4. **MEMORY.md beobachten:** Der neue `modified`-Timestamp erscheint automatisch beim nächsten Schreibvorgang. Prüfen, ob bestehende MEMORY.md-Parsing-Logik damit umgehen kann.

---

## Keine Aktion nötig

- OTel-Attribute (`message.uuid` etc.): Nur relevant bei aktivem OpenTelemetry-Setup, das speziell Message-Level-Daten auswertet.
- `CLAUDE_CODE_OTEL_CONTENT_MAX_LENGTH`: Nur relevant, wenn große Inhalte an OTel-Backend gesendet werden und die 60-KB-Grenze stört.
- PowerShell-Fixes (Windows): Kein Windows-Einsatz im aktuellen Setup.
- Corporate-Proxy-Socket-Fix: Kein Corporate-Proxy im aktuellen Setup.
