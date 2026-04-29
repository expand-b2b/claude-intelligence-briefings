# Claude Intelligence Briefing - 2026-04-29

## Neue Releases

### v2.1.123 (2026-04-29)
Bugfix-Release. OAuth-Authentifizierung schlug mit 401-Retry-Schleife fehl, wenn `CLAUDE_CODE_DISABLE_EXPERIMENTAL_BETAS=1` gesetzt war. Fix ohne funktionale Änderungen.

### v2.1.122 (2026-04-28)
Umfangreiches Release mit mehreren nützlichen Neuerungen:

- **ANTHROPIC_BEDROCK_SERVICE_TIER**: Neue Umgebungsvariable zur Auswahl eines Bedrock Service Tiers (`default`, `flex`, `priority`). Relevant für Enterprise-Setups mit AWS Bedrock.
- **PR-URL in /resume**: Eine PR-URL im Suchfeld von `/resume` findet jetzt direkt die Session, die diesen PR erstellt hat. Unterstützt GitHub, GitHub Enterprise, GitLab und Bitbucket.
- **/mcp Verbesserungen**: Doppelte claude.ai-Konnektoren werden erkannt und mit Hinweis angezeigt; Fehlermeldungen bei ausstehender OAuth-Autorisierung wurden verbessert.
- **OpenTelemetry**: Numerische Attribute in `api_request`/`api_error` werden jetzt als Zahlen statt Strings übertragen; neues `at_mention`-Log-Event für @-Erwähnungen.
- **Bugfixes**: `/branch` repariert (fehlerhafte Tool-Result-Blöcke), `/model` für Bedrock ARNs, Vertex AI Fehler bei strukturierten Abfragen, Bild-Resize-Fehler (2000px statt 2576px).

### v2.1.121 (2026-04-28)
Feature-Release mit strategisch wichtigen Ergänzungen:

- **alwaysLoad für MCP-Server**: Neue Option in der MCP-Server-Konfiguration. Wenn `true`, überspringt der Server die Tool-Search-Verzögerung und alle Tools sind sofort verfügbar. Relevant für produktive MCP-Setups.
- **claude plugin prune**: Entfernt verwaiste Auto-Install-Plugin-Abhängigkeiten; `plugin uninstall --prune` kaskadiert.
- **Typ-Filter in /skills**: Suchfeld in der Skills-Übersicht erleichtert das Finden von Skills in langen Listen.
- **PostToolUse ersetzt Tool-Output**: PostToolUse-Hooks können jetzt via `hookSpecificOutput.updatedToolOutput` den Output aller Tools ersetzen (bisher nur MCP-Tools). Öffnet neue Automatisierungsmöglichkeiten.
- **CLAUDE_CODE_FORK_SUBAGENT=1**: Funktioniert jetzt auch in nicht-interaktiven Sessions.
- **MCP Auto-Retry**: Server mit transienten Startfehlern versuchen es jetzt automatisch bis zu 3-mal.
- **Vertex AI mTLS**: Unterstützung für X.509-Zertifikat-basiertes Workload Identity Federation.
- **Schnellerer Start**: Recent-Activity-Panel aus dem Release-Notes-Splash entfernt.

### v2.1.118 und v2.1.119 (2026-04-23, außerhalb 48h-Fenster)
Für die Dokumentation: Vim Visual Mode, `/usage` als Zusammenführung von `/cost` und `/stats`, Custom Themes via `/theme`, Hooks können MCP-Tools direkt aufrufen (`type: "mcp_tool"`), `--from-pr` unterstützt GitLab/Bitbucket/GitHub Enterprise, `/config` Einstellungen persistieren jetzt in `~/.claude/settings.json`.

## Blog/Ankündigungen

Quelle nicht erreichbar (Netzwerk-Allowlist). Keine Daten aus anthropic.com/news verfügbar.

## Community-Highlights

Quelle nicht erreichbar (Netzwerk-Allowlist). Keine Daten aus r/ClaudeCode verfügbar.

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| alwaysLoad für MCP-Server (v2.1.121) | Hoch | Minuten | Hoch | Hoch |
| PostToolUse ersetzt Tool-Output (v2.1.121) | Hoch | Stunden | Hoch | Hoch |
| PR-URL in /resume (v2.1.122) | Mittel | Minuten | Mittel | Mittel |
| Typ-Filter in /skills (v2.1.121) | Mittel | Keine | Mittel | Mittel |
| BEDROCK_SERVICE_TIER (v2.1.122) | Niedrig | Minuten | Mittel | Niedrig |
| MCP Auto-Retry 3x (v2.1.121) | Mittel | Keine | Niedrig | Niedrig |
| claude plugin prune (v2.1.121) | Niedrig | Minuten | Niedrig | Niedrig |
| OAuth-Fix 401 (v2.1.123) | Niedrig | Keine | Niedrig | Keine |

## Empfohlene Aktionen

1. **alwaysLoad für kritische MCP-Server aktivieren**: In der MCP-Konfiguration des Cowork OS für häufig genutzte Server (z.B. GitHub MCP) `"alwaysLoad": true` setzen. Verhindert Tool-Search-Verzögerungen bei bekannten, produktiv genutzten Servern. Aufwand: 5 Minuten.

2. **PostToolUse-Hook-Potenzial prüfen**: Die neue Möglichkeit, Tool-Output per Hook zu ersetzen, ermöglicht z.B. das automatische Formatieren, Validieren oder Anreichern von Tool-Ergebnissen in der Cowork-OS-Pipeline. Einen konkreten Use Case identifizieren und testen. Aufwand: 2 bis 4 Stunden.

3. **Claude Code auf v2.1.123 aktualisieren**: Wer `CLAUDE_CODE_DISABLE_EXPERIMENTAL_BETAS=1` nutzt, sollte updaten, um OAuth-Probleme zu vermeiden. `claude update`. Aufwand: 1 Minute.

## Keine Aktion nötig

- **BEDROCK_SERVICE_TIER**: Nur relevant, wenn AWS Bedrock als Backend genutzt wird. Bei direkter API-Nutzung keine Auswirkung.
- **Vertex AI mTLS**: Enterprise-Feature für spezifische Cloud-Deployments. Nicht relevant für Standard-Setups.
- **claude plugin prune**: Wartungs-Befehl für später. Kein akuter Handlungsbedarf.
- **MCP Auto-Retry**: Verbessert Stabilität automatisch, kein Konfigurationsaufwand.

---
*Quellen: GitHub Releases anthropics/claude-code (erfolgreich). Anthropic Blog und r/ClaudeCode konnten aufgrund von Netzwerk-Allowlist-Einschränkungen nicht abgerufen werden.*
