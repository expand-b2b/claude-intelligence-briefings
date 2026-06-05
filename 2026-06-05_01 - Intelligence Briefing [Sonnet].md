# Claude Intelligence Briefing - 2026-06-05

## Neue Releases

### Claude Code 2.1.163 (04.06.2026)
- **requiredMinimumVersion / requiredMaximumVersion**: Managed Settings, die verhindern, dass veraltete oder zu neue Versionen gestartet werden. Relevant für kontrollierte Unternehmensumgebungen.
- **/plugin list**: Neuer Slash-Befehl mit `--enabled`/`--disabled`-Filter zur Übersicht installierter Plugins.
- **"c to copy" in /btw**: Kopiert die rohe Markdown-Antwort in die Zwischenablage.
- **Hook-Erweiterung**: `Stop`- und `SubagentStop`-Hooks können jetzt `additionalContext` zurückgeben, das dem Modell übergeben wird.
- **Escape-Syntax `\$`**: Ermöglicht literale `$`-Zeichen in Skill-Befehlen.
- **CLAUDE_CODE_SESSION_ID**: Wird jetzt für stdio-MCP-Server als Umgebungsvariable gesetzt.
- **Bugfixes**: Bash-Fehlerbehandlung, Windows-Pfade, Worktree-Isolation.

### Claude Code 2.1.162 (03.06.2026)
- **`claude agents --json` mit `waitingFor`**: Zeigt, auf was eine wartende Agenten-Session blockiert (z. B. Berechtigungsprompt). Nützlich für Monitoring und Automatisierung.
- **Remote Control als persistente Fußzeile**: Verbesserte UX für Remote-Sessions.
- **/effort-Bestätigungsdialog**: Verhindert versehentliche Aufwandsänderungen.
- **Devin Desktop** (ehemals Windsurf): Umbenennung im Ökosystem vermerkt.

### Claude Code 2.1.161 (02.06.2026)
- **OTEL_RESOURCE_ATTRIBUTES**: Observability-Metriken per Umgebungsvariable anreicherbar.
- **Parallele Tool-Ausführung**: Verbesserte Fehlerbehandlung bei gleichzeitigen Tool-Calls.
- **Clipboard-Fixes auf Linux**: Relevanter Fix für Linux-basierte Workflows.

---

## Blog und Ankündigungen

### Anthropic IPO-Vorbereitung (01.06.2026)
Anthropic hat vertraulich einen Entwurf des S-1-Formulars bei der SEC eingereicht. Der IPO hängt von Marktbedingungen ab. Für B2B-Kunden relevant: Anthropic gewinnt als Unternehmenspartner weiter an Glaubwürdigkeit und institutioneller Stabilität.

### Claude Partner Network: Services Track und Partner Hub (03.06.2026)
Anthropic führt einen formellen Partner-Track für Dienstleister ein. Unternehmen, die Claude-Implementierungen anbieten, können sich zertifizieren lassen. Direkter Kanal für EXPAND B2B-Positionierung als Claude-Implementierungspartner.

### Project Glasswing Expansion
Erweiterung auf ca. 150 neue Organisationen in 15+ Ländern. Fokus auf kritische Infrastruktur. Zeigt Anthropics Skalierung im Enterprise-Segment.

### Anthropic Claude for Small Business
Neues Angebot mit niedrigerer Einstiegshürde. Relevanter Markt für EXPAND B2B-Kunden aus dem KMU-Bereich.

### Managed Agents: Multiagent-Sessions und Outcomes in Public Beta
Unter dem Header `managed-agents-2026-04-01` nun öffentlich verfügbar. Memory für Managed Agents ebenfalls in Public Beta. MCP-Server-Konfigurationen lassen sich in aktiven Sessions aktualisieren.

### MCP-Connector-Update
Aktueller Beta-Header: `mcp-client-2025-11-20` (ersetzt `mcp-client-2025-04-04`). Große Tool-Outputs (>100K Token) werden automatisch in Dateien ausgelagert.

---

## Community-Highlights

**r/ClaudeCode** hat über 4.200 wöchentliche Beitragende (3x mehr als r/Codex). Claude Code ist das meistdiskutierte KI-Coding-Tool auf Reddit.

Aktuelle Hauptthemen der Community:
- Wie man Rate-Limits des Pro-Plans ($20/Monat) durch strukturiertere Prompts und Subagenten-Einsatz umgeht
- Einsatz von Claude Code für CI/CD-Pipelines und Git-Automatisierung
- Workflows mit großen Codebasen (200k-Kontext) und Document-Automation via Playwright
- Vergleiche: Claude Code vs. Cursor (46% vs. 19% "most loved" in Entwickler-Surveys)

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Claude Partner Network (Services Track) | Hoch | Tage | Hoch | Hoch |
| Hook-Erweiterung (additionalContext) | Hoch | Stunden | Mittel | Hoch |
| requiredMinimumVersion in Managed Settings | Mittel | Minuten | Mittel | Mittel |
| Managed Agents Memory (Public Beta) | Hoch | Stunden | Hoch | Hoch |
| Multiagent-Sessions Public Beta | Hoch | Tage | Hoch | Hoch |
| CLAUDE_CODE_SESSION_ID für MCP-Server | Mittel | Minuten | Mittel | Mittel |
| /plugin list Befehl | Niedrig | Minuten | Niedrig | Niedrig |
| Claude for Small Business | Mittel | Minuten | Hoch | Mittel |
| MCP-Connector neuer Beta-Header | Hoch | Minuten | Mittel | Hoch |
| OTEL_RESOURCE_ATTRIBUTES | Niedrig | Stunden | Niedrig | Niedrig |

---

## Empfohlene Aktionen

1. **Claude Partner Network prüfen**: Bewerbung als Services-Track-Partner evaluieren. Gibt EXPAND B2B offiziellen Status als Claude-Implementierungspartner. URL: anthropic.com/partners. Aufwand: 1-2 Stunden für Erstbewerbung.

2. **Managed Agents Memory aktivieren**: Beta-Header `managed-agents-2026-04-01` in bestehenden API-Integrationen eintragen und Memory-Feature im Cowork-OS-Kontext testen. Ermöglicht persistent arbeitende Agenten ohne Prompt-Wiederholung. Aufwand: 2-4 Stunden.

3. **Stop-Hook mit additionalContext erweitern**: Bestehende Hooks in `.claude/settings.json` prüfen, ob `additionalContext` aus Stop-Events genutzt werden kann, um dem Modell Kontext über Abbruchgründe zu liefern. Aufwand: 30-60 Minuten.

4. **MCP-Connector auf neuen Beta-Header migrieren**: `mcp-client-2025-11-20` statt `mcp-client-2025-04-04` setzen, da alter Header deprecated ist. Aufwand: unter 15 Minuten.

5. **Multiagent-Sessions für B2B-Demos testen**: Öffentliche Beta für orchestrierte Agenten-Workflows als Differenzierungsmerkmal im Sales-Prozess einsetzen. Aufwand: 1 Tag Prototyp.

---

## Keine Aktion nötig

- **/plugin list**: Nützlich, aber kein unmittelbarer Handlungsbedarf für Cowork OS.
- **Devin Desktop Umbenennung**: Rein informativ, kein Einfluss auf bestehende Setups.
- **OTEL_RESOURCE_ATTRIBUTES**: Relevant nur wenn eigenes Observability-Stack vorhanden; derzeit kein Priorität.
- **"c to copy" Shortcut**: UX-Feature, kein Implementierungsaufwand.
- **Anthropic IPO-Filing**: Strategisch interessant, aber keine unmittelbare operative Relevanz.

---

*Quellen: [Claude Code Changelog](https://code.claude.com/docs/en/changelog) | [Anthropic News](https://www.anthropic.com/news) | [Anthropic API Release Notes](https://docs.anthropic.com/en/release-notes/overview) | [r/ClaudeCode Community](https://www.reddit.com/r/ClaudeCode)*
