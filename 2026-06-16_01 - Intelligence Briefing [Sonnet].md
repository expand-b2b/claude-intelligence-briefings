# Claude Intelligence Briefing - 2026-06-16

**Scout:** Claude Sonnet 4.6 | **Scope:** Claude/Anthropic Ökosystem | **Für:** EXPAND B2B / Cowork OS

---

## Neue Releases

### v2.1.178 (15. Juni 2026) - Letzten 48 Stunden

**Tool(param:value) Syntax für Permission Rules**
Berechtigungen können jetzt parameter-spezifisch vergeben werden. Beispiel: `Agent(model:opus)` blockiert gezielt Opus-Subagenten. Das ermöglicht feingranulare Kontrolle über Subagenten-Budgets in Unternehmenssetups.

**Nested .claude/skills Verzeichnisse**
Skills in verschachtelten Unterordnern werden jetzt automatisch geladen. Bisher mussten alle Skills im Root-Level `.claude/skills` liegen.

**Verbesserter Auto-Modus**
Subagent-Spawns werden vor dem Start vom Classifier evaluiert. Das reduziert unnötige Agenten-Starts und senkt Tokenkosten.

**Weitere Fixes**
- Remote Control: Persistenter "/rc failed" Indikator bei Verbindungsproblemen
- Subagent-Transkripte, MCP-Server-Fixes, Vim-Modus-Verbesserungen
- `/bug` Kommando erfordert jetzt eine Beschreibung (verhindert leere Bug-Reports)

### v2.1.177 (13. Juni 2026)
Nur Changelog- und Feed-Updates, keine funktionalen Änderungen.

### v2.1.176 (12. Juni 2026)
- Session-Titel werden in der Gesprächssprache generiert (Deutsch bleibt Deutsch)
- `footerLinksRegexes` für Regex-basierte Link-Badges in der UI
- Bedrock Credential Caching verbessert
- `availableModels` Enforcement für Alias-Modelle

---

## Blog / Ankündigungen

Anthropic.com war heute nicht erreichbar (HTTP 403). Keine verifizierten Blog-Einträge für dieses Briefing.

Bekannter Kontext aus dem Changelog der letzten 7 Tage:

**Claude Fable 5 (9. Juni 2026)**
Neues Flaggschiff-Modell von Anthropic ("Mythos-Klasse"). Release via Claude Code v2.1.170. Model-ID laut Systemkontext: `claude-fable-5`. Noch keine verifizierten öffentlichen Benchmarks verfügbar.

---

## Community-Highlights

Reddit (r/ClaudeCode) war heute nicht erreichbar. Keine verifizierten Community-Daten.

Indirekter Hinweis aus dem Changelog: Die Einführung von Sub-agents die Sub-agents spawnen (bis 5 Ebenen tief, seit v2.1.172 am 10. Juni) dürfte in der Community für Diskussionen sorgen, da sich damit komplexe Orchestrierungsmuster umsetzen lassen.

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Tool(param:value) Permission Rules | Hoch | Minuten | Hoch | Hoch |
| Nested .claude/skills Auto-Loading | Hoch | Minuten | Mittel | Hoch |
| Verbesserter Auto-Modus (Subagent-Classifier) | Mittel | Keine (automatisch) | Mittel | Mittel |
| Session-Titel in Gesprächssprache | Niedrig | Keine (automatisch) | Niedrig | Niedrig |
| Claude Fable 5 verfügbar | Hoch | Stunden (Testen) | Hoch | Mittel |
| Sub-agents spawnen Sub-agents (5 Ebenen) | Mittel | Stunden | Mittel | Mittel |

---

## Empfohlene Aktionen

1. **Permission Rules aktualisieren (heute, 10 Minuten):** In `.claude/settings.json` die neue `Tool(param:value)` Syntax prüfen. Konkret: Budget-Limits für Subagenten durch `Agent(model:opus)` setzen, wenn Opus-Kosten kontrolliert werden sollen. Dokumentation unter code.claude.com/changelog.

2. **Skills-Struktur reorganisieren (diese Woche, 30 Minuten):** Mit dem neuen Auto-Loading können Skills jetzt in Unterordnern organisiert werden, z.B. `.claude/skills/sales/`, `.claude/skills/research/`. Das verbessert die Übersicht im Cowork OS ohne Funktionsverlust.

3. **Claude Fable 5 testen (diese Woche, 2 Stunden):** Fable 5 ist seit dem 9. Juni verfügbar. Vergleich mit Sonnet 4.6 für die wichtigsten Cowork OS Workflows sinnvoll, bevor ein Wechsel entschieden wird. Schwerpunkt: Reasoning bei komplexen Sales-Research-Aufgaben.

---

## Keine Aktion nötig

- `wheelScrollAccelerationEnabled` Setting: UI-Komfort, kein Geschäftswert
- `footerLinksRegexes`: Nur relevant bei eigenen Claude Code Deployments mit Custom-UI
- Bedrock GovCloud Fixes: Nicht relevant für aktuelle Infrastruktur
- `/bug` Pflicht-Beschreibung: Verhaltensänderung ohne Konfigurationsaufwand

---

## Quellen-Status

| Quelle | Status | Hinweis |
|---|---|---|
| GitHub Releases (anthropics/claude-code) | Verfügbar | Via WebFetch (github.com/anthropics/claude-code/releases) |
| Claude Code Changelog | Verfügbar | code.claude.com/docs/en/changelog |
| Anthropic Blog | Nicht erreichbar | HTTP 403 |
| API Release Notes (docs.anthropic.com) | Nicht erreichbar | HTTP 403 |
| r/ClaudeCode Reddit | Nicht erreichbar | Netzwerk-Allowlist |

---

*Erstellt: 2026-06-16 | Nächstes Briefing: 2026-06-17*
