# Claude Intelligence Briefing - 2026-06-26

**Erstellt:** 2026-06-26 | **Modell:** Sonnet | **Quellen:** GitHub Releases (OK), Anthropic Blog (gesperrt), Reddit (nicht erreichbar)

---

## Neue Releases

### v2.1.193 (2026-06-25, gestern)

**Sicherheit und Kontrolle:**
- Neues Setting `autoMode.classifyAllShell`: Leitet alle Bash/PowerShell-Befehle durch den Auto-Mode-Classifier, nicht nur "arbitrary-code-execution"-Muster. Ermöglicht feinere Kontrolle darüber, welche Shell-Befehle automatisch ausgeführt werden.
- Auto-Mode-Ablehnungsgründe erscheinen jetzt im Transcript, im Toast und unter `/permissions > Recently Denied`.
- Neues OpenTelemetry-Log-Event `claude_code.assistant_response`: Enthält den Antworttext des Modells. Standardmäßig redaktiert; aktivierbar über `OTEL_LOG_ASSISTANT_RESPONSES=1`. **Achtung:** Wer bereits `OTEL_LOG_USER_PROMPTS` gesetzt hat, erhält nach dem Update auch Antworten geloggt. Wer das nicht will: `OTEL_LOG_ASSISTANT_RESPONSES=0` explizit setzen.
- Automatisches Reaping von idle Background-Shell-Prozessen bei Memory-Druck (deaktivierbar über `CLAUDE_CODE_DISABLE_BG_SHELL_PRESSURE_REAP=1`).

**Produktivität:**
- Live-Dateipfad-Autovervollständigung im Bash-Modus (`!`).
- Startup-Hinweis wenn MCP-Server eine Authentifizierung benötigen, mit direktem Link zu `/mcp`.
- MCP `headersHelper`-Auth: Der Helper läuft jetzt automatisch neu und verbindet sich neu, wenn ein Tool-Call 401 oder 403 zurückgibt.
- Plugin Auto-Rename: Marketplace `renames`-Maps werden jetzt automatisch übernommen.
- Hintergrundagenten: Nach dem Start wird Claude nicht mehr angewiesen, "die Antwort zu beenden" - kann gleichzeitig an anderen Aufgaben weiterarbeiten.

**Bugfixes (wichtige):**
- Hintergrundagenten, die nach dem Stoppen neu gestartet wurden, bleiben jetzt dauerhaft gestoppt.
- Backgrounding löst nicht mehr fälschlich "N background tasks would be abandoned" aus.
- Phantom-Subagent ("general-purpose (resumed)") wird nicht mehr erstellt beim Backgrounding.
- Agent-Panel zeigt keine Geschwister-Agenten mehr, wenn ein Subagent betrachtet wird.

---

### v2.1.191 (2026-06-24)

**Wichtigste Neuerung:**
- `/rewind`: Konversation kann jetzt von vor einem `/clear`-Befehl wiederaufgenommen werden. Nützlich wenn man versehentlich den Kontext gelöscht hat.

**MCP-Verbesserungen:**
- Capability Discovery (`tools/list` etc.) wiederholt jetzt bei transienten Netzwerkfehlern.
- MCP OAuth: Erkennung und Token-Requests werden bei transienten Fehlern einmal wiederholt; Headless-Umgebungen überspringen Browser-Popup.
- HTTP-404-Fehler zeigen jetzt die URL und verweisen auf die MCP-Konfiguration.

**Performance:**
- CPU-Nutzung beim Streaming um ca. 37% reduziert durch Zusammenfassung von Text-Updates auf 100ms-Intervalle.
- Reduziertes Memory-Wachstum bei langen Sessions.

**Sandbox:**
- Erlaubte Sandbox-Netzwerk-Hosts werden jetzt für die gesamte Session gespeichert (kein Re-Prompting).

**Bugfixes (wichtige):**
- Hooks mit kommaseparierten Matchern (`"Bash,PowerShell"`) wurden nie ausgelöst - jetzt gefixt.
- `/permissions` Recently-denied: Genehmigungen werden jetzt korrekt gespeichert.
- Managed Settings: `forceRemoteSettingsRefresh` wirkt jetzt korrekt bei MDM/File-Policy.

---

### v2.1.187 (2026-06-23, Referenz)

**Sicherheit:**
- `sandbox.credentials`-Setting: Verhindert, dass Sandbox-Befehle Credential-Dateien und Secret-Umgebungsvariablen lesen können.

**Enterprise:**
- Org-konfigurierte Modelleinschränkungen: Admins können Modelle auf Organisationsebene einschränken. Greift in Model-Picker, `--model`, `/model` und `ANTHROPIC_MODEL`.

**MCP:**
- Neues CLI: `claude mcp login <name>` und `claude mcp logout <name>` für MCP-Server-Authentifizierung ohne interaktives Menü. Unterstützt `--no-browser` für SSH-Umgebungen.
- Remote-MCP-Tool-Calls hängen nicht mehr unbegrenzt: Nach 5 Minuten ohne Antwort wird abgebrochen (konfigurierbar via `CLAUDE_CODE_MCP_TOOL_IDLE_TIMEOUT`).

**UI:**
- Status-Filterung (Taste `f`) in der `/workflows`-Agent-Detailansicht.
- "Skills"-Bereich im `/plugin`-Tab.
- Bash-Befehle mit `!` lösen jetzt automatisch eine Claude-Antwort auf die Ausgabe aus (deaktivierbar: `"respondToBashCommands": false`).

---

## Blog/Ankündigungen

Anthropic-Blog war heute nicht erreichbar (Netzwerksperre). Keine neuen Ankündigungen erfasst.

---

## Community-Highlights

Reddit (r/ClaudeCode) war heute nicht erreichbar. Keine Community-Daten verfügbar.

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| `autoMode.classifyAllShell` Setting | Hoch | Minuten | Hoch | Hoch |
| Auto-Mode Denial Reasons im Transcript | Hoch | Minuten | Mittel | Hoch |
| `sandbox.credentials` (v2.1.187) | Hoch | Minuten | Hoch | Hoch |
| `/rewind` vor `/clear` | Mittel | keine | Mittel | Mittel |
| Hook-Fix: kommaseparierte Matcher | Hoch | Minuten | Hoch | Hoch |
| MCP headersHelper Auto-Reconnect bei 401/403 | Hoch | keine | Mittel | Mittel |
| `claude mcp login/logout` CLI | Mittel | Minuten | Mittel | Mittel |
| Org Modelleinschränkungen (v2.1.187) | Mittel | Stunden | Hoch | Mittel |
| CPU-Reduktion 37% beim Streaming | Niedrig | keine | Mittel | Niedrig |
| Bash-`!` löst Claude-Antwort aus | Mittel | Minuten | Mittel | Mittel |
| OTEL Assistant-Response-Logging | Mittel | Minuten | Mittel | Mittel |

---

## Empfohlene Aktionen

1. **Hook-Matcher prüfen (sofort):** Falls in CLAUDE.md oder settings.json Hooks mit kommaseparierten Matchern wie `"Bash,PowerShell"` konfiguriert sind, wurden diese nie ausgelöst. Nach Update auf v2.1.191 prüfen ob Hooks jetzt korrekt feuern und ggf. anpassen.

2. **`autoMode.classifyAllShell` aktivieren:** In settings.json `"autoMode": { "classifyAllShell": true }` setzen für strikte Kontrolle über alle Shell-Befehle im Auto-Mode. Besonders für Cowork OS-Deployments empfehlenswert.

3. **OTEL-Logging prüfen:** Falls OpenTelemetry genutzt wird und `OTEL_LOG_USER_PROMPTS` gesetzt ist: Explizit `OTEL_LOG_ASSISTANT_RESPONSES=0` setzen um ungewolltes Logging von Modellantworten zu verhindern.

4. **`sandbox.credentials` eintragen:** In Produktionsumgebungen `"sandbox": { "credentials": true }` in settings.json aktivieren um Credential-Leaks aus Sandbox-Befehlen zu verhindern.

5. **MCP-Server auf v2.1.187+ Timeout prüfen:** Remote-MCP-Tools, die bei hängendem Server 5 Minuten blockieren, werden jetzt automatisch abgebrochen. Falls eigene MCP-Server langsam sind, `CLAUDE_CODE_MCP_TOOL_IDLE_TIMEOUT` anpassen.

---

## Keine Aktion nötig

- `/rewind`: Nützliches Feature, aber kein Handlungsbedarf. Steht automatisch zur Verfügung.
- CPU-Optimierung (37% Reduktion): Automatisch durch Update.
- Memory-Optimierung bei langen Sessions: Automatisch durch Update.
- Sandbox-Netzwerk-Host-Persistenz: Automatisch verbessert.
- Plugin Auto-Rename: Greift automatisch bei Marketplace-Updates.
- MCP Discovery Retry: Automatisch verbessert, kein Config-Aufwand.

---

*Quellen: github.com/anthropics/claude-code/releases | Anthropic Blog: nicht erreichbar | Reddit r/ClaudeCode: nicht erreichbar*
