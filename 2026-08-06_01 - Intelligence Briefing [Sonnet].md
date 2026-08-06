# Claude Intelligence Briefing - 2026-08-06

Erstellt von: Claude Sonnet 4.6 (automatisierter Scout-Lauf)
Quellen: Claude Code Changelog (code.claude.com), GitHub Releases, Anthropic Python SDK Releases
Hinweis: anthropic.com und docs.anthropic.com heute nicht erreichbar (403), Reddit blockiert.

---

## Neue Releases

### Claude Code v2.1.223 (6. August 2026) -- Heute erschienen

- **Owner-Wildcard-Einträge** (`"owner/*"`): Plugins und Marketplace-Einschränkungen können jetzt per Wildcard auf alle Repositories eines Owners angewendet werden. Vereinfacht die Verwaltung in Setups mit mehreren Repos desselben Owners.
- **Warnungen bei eingeschränkten Subagent-Modellen**: Wenn ein Subagent ein Modell nicht verwenden darf (z.B. durch Marketplace-Regeln), erscheint jetzt eine explizite Warnung statt stillem Fallback.
- **`/teleport`-Hinweis** in lokalen Sessions: Benutzern wird aktiv erklärt, wie sie eine Cloud-Session lokal fortsetzen können.
- **Sicherheitsfixes**:
  - Bash Permission-Bypass behoben (Umgehung über Shell-Zeichenfolgen)
  - PowerShell-Pfadprobleme mit Leerzeichen und Sonderzeichen behoben
  - Workflow-Sandbox-Escape behoben: Workflow-Agents können jetzt nicht mehr aus ihrer Sandbox ausbrechen
  - Session-Resume-Fehler bei bestimmten Konversationsstrukturen behoben
- **Auto-Compaction** für 1M-Context-Modelle (Opus 5) verbessert: Stabilere Performance bei sehr langen Sessions.
- **Gateway Model Discovery Fix**: Probleme bei Modell-Erkennung über API-Gateways behoben.

### Claude Code v2.1.222 (4. August 2026) -- Bereits im gestrigen Briefing

Zur Vollständigkeit: Worktree-Isolation, PreToolUse Auto-Allow Fix, Proxy-Verbesserungen. Details im Briefing vom 2026-08-05.

### Anthropic Python SDK v0.120.2 / v0.120.1 (28. Juli 2026)

- **MCP SDK v2 Unterstützung**: Das Python SDK unterstützt jetzt MCP SDK v2 neben v1. Wichtig für alle, die MCP-Server mit Python schreiben.
- Bug: `mcp` Extra auf `<2` begrenzt (Kompatibilitätsproblem behoben).

### Anthropic Python SDK v0.120.0 (24. Juli 2026)

- **Claude Opus 5 offiziell im SDK** verfügbar
- **Tool Addition/Removal Blocks**: Tool-Änderungen können jetzt als strukturierte Events im Stream empfangen werden
- Server-seitige Fallback-Standardoptionen hinzugefügt

---

## Blog / Ankündigungen

Anthropic-Domains heute nicht erreichbar (HTTP 403). Keine neuen Blog-Artikel verifiziert.

Laufende Ankündigungen aus den Vortagen (aktualisierter Status):

| Ankündigung | Frist | Verbleibende Zeit | Status |
|---|---|---|---|
| Workbench-Abschaltung (platform.claude.com) | **17. August 2026** | 11 Tage | Dringend: Export prüfen |
| 50%-Weekly-Usage-Boost für Claude Code | **19. August 2026** | 13 Tage | Noch aktiv |
| Sonnet-5-Einführungspreise ($2/$10 MTok) | **31. August 2026** | 25 Tage | Noch aktiv |
| Claude für Open Source (6 Monate Max 20x) | Laufend | -- | Beobachten |

---

## Community-Highlights

Reddit (r/ClaudeCode) heute nicht erreichbar.

Themen aus den letzten Tagen (Kontext aus Changelog und SDK-Releases):

1. **Workflow-Sicherheit**: Der Workflow-Sandbox-Escape-Fix in v2.1.223 deutet darauf hin, dass Workflow-Agents bisher in bestimmten Szenarien außerhalb ihrer Sandbox agieren konnten. Betroffene Setups sollten updaten.
2. **MCP SDK v2**: Die Python-SDK-Updates zeigen, dass MCP SDK v2 aktiv weiterentwickelt wird. Community-MCP-Server werden nach und nach migrieren.
3. **Opus 5 im produktiven Einsatz**: Mit dem Python SDK und den Auto-Compaction-Verbesserungen wird Opus 5 (1M Context) für komplexe Agenten-Pipelines praxistauglicher.

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Workflow-Sandbox-Escape-Fix (v2.1.223) | Hoch (alle Workflow-Setups) | Minuten (Update) | Hoch | Hoch |
| Workbench-Abschaltung (11 Tage) | Mittel (falls genutzt) | Minuten (Export) | Hoch | Hoch |
| Owner-Wildcard (`"owner/*"`) | Mittel (Multi-Repo-Setups) | Stunden (Konfiguration) | Mittel | Mittel |
| MCP SDK v2 Unterstützung (Python) | Mittel (Python-MCP-Server) | Stunden (Migration testen) | Mittel | Mittel |
| Tool Addition/Removal Events (SDK) | Niedrig (noch kein Cowork-Use-Case) | Tage (neue Feature entwickeln) | Niedrig | Niedrig |
| Subagent-Modell-Warnungen | Niedrig (Info-Feature) | Minuten | Niedrig | Niedrig |
| Usage-Boost bis 19. Aug. aktiv | Hoch (jetzt nutzen) | Minuten | Mittel | Mittel |

---

## Empfohlene Aktionen

1. **Sofort (bis 17. August -- noch 11 Tage)**: Legacy-Workbench auf gespeicherte Prompts und Evals prüfen, exportieren. Frist rückt nah.
2. **Diese Woche**: Claude Code auf v2.1.223 updaten. Der Workflow-Sandbox-Escape-Fix ist sicherheitsrelevant für alle Setups, die `script`-basierte Workflows mit Agent-Delegierung verwenden.
3. **Bis 19. August**: Verbleibenden 50%-Usage-Boost aktiv einsetzen. Komplexe Analysen, Workflow-Tests oder große Skill-Entwicklungen jetzt durchführen.
4. **Bis 31. August**: Token-Verbrauch für Sonnet-5-basierte API-Flows messen und Budget für September anpassen.
5. **Mittelfristig**: Falls MCP-Server in Python gebaut werden oder geplant sind: MCP SDK v2 Kompatibilität des Python SDK testen (v0.120.2). Die parallele v1/v2-Unterstützung vereinfacht Migration.

---

## Keine Aktion nötig

- **Owner-Wildcard-Einträge**: Nur relevant bei Marketplace-Konfigurationen mit mehreren Repos desselben Owners. Für Single-Repo-Setups keine Auswirkung.
- **Subagent-Modell-Warnungen**: Informations-Feature, keine Konfigurationsänderung nötig.
- **PowerShell-Fix**: Nur auf Windows-Setups relevant.
- **`/teleport`-Hinweis**: Ergonomie-Verbesserung, keine Aktion erforderlich.
