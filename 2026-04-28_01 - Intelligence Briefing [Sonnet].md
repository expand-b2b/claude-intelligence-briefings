# Claude Intelligence Briefing - 2026-04-28

## Neue Releases

### Claude Code v2.1.121 (28. April 2026)

Heute veröffentlicht, das bisher umfangreichste Update dieser Woche.

**MCP und Hooks:**
- `alwaysLoad`-Option für MCP-Server-Konfiguration: Tools sind jetzt permanent verfügbar, ohne manuelles Aktivieren
- PostToolUse-Hooks können Tool-Ausgabe ersetzen via `hookSpecificOutput.updatedToolOutput`
- Hooks können MCP-Tools direkt aufrufen via `type: "mcp_tool"` (eingeführt in v2.1.118)

**UI:**
- Suchfeld in `/skills` zum Filtern nach Namen
- Scrollbare Dialoge mit Pfeiltasten, PgUp/PgDn, Home/End

**Bugfixes:**
- Speicherleck bei `/usage` behoben (bis zu 2 GB Einsparung)
- Unbegrenztes Speicherwachstum bei vielen Bildern behoben
- Bash-Tool-Absturz bei gelöschtem Arbeitsverzeichnis behoben

### Claude Code v2.1.119 (23. April 2026)

- `/config`-Einstellungen werden jetzt dauerhaft in `~/.claude/settings.json` gespeichert
- `--from-pr` akzeptiert jetzt GitLab MR, Bitbucket und GitHub Enterprise URLs
- Hooks enthalten jetzt `duration_ms` (Ausführungszeit des Tools)
- `prUrlTemplate`-Einstellung für eigene Code-Review-URLs

### Claude Code v2.1.118 (23. April 2026)

- Vim Visual Mode (`v`) und Visual-Line-Mode (`V`)
- Custom Themes: Erstellung und Wechsel über `/theme` oder JSON-Bearbeitung in `~/.claude/themes/`
- `/model`-Auswahl bleibt über Neustarts hinweg erhalten
- `/cost` und `/stats` zu `/usage` zusammengeführt

### Claude Code v2.1.117 (22. April 2026)

- Forked Subagents auf externen Builds aktivierbar via `CLAUDE_CODE_FORK_SUBAGENT=1`
- `/resume` bis zu 67% schneller bei großen Sessions (40 MB+)
- Schnellerer MCP-Start durch parallele Server-Verbindungen
- Opus 4.7 Kontextfenster-Berechnung korrigiert (200K auf 1M)

### MCP Registry v1.7.1 und v1.7.2 (27. April 2026)

- Erhöhte Registry-Verfügbarkeit und Stabilität
- Optimierte Datenbankabfragen
- Timing-Metriken für Publish-Phase hinzugefügt

---

## Blog/Ankündigungen

Anthropic-News-Seite war heute nicht erreichbar (HTTP 403). Keine verifizierten neuen Ankündigungen aus dieser Quelle.

---

## Community-Highlights

Reddit (r/ClaudeCode) war heute nicht erreichbar. Auf Basis der Release-Notes lassen sich folgende Community-relevante Themen ableiten:

- Die `alwaysLoad`-MCP-Option dürfte in der Community stark diskutiert werden, da sie einen jahrelangen Workflow-Schmerzpunkt löst
- Custom Themes und Vim-Visual-Mode sind Features, die regelmäßig in Community-Anfragen auftauchen
- Das 2-GB-Speicherleck bei `/usage` war vermutlich ein bekanntes Problem bei intensiven Nutzern

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| `alwaysLoad` für MCP-Server | Hoch | Minuten | Hoch | Hoch |
| PostToolUse-Hook ersetzt Tool-Output | Hoch | Stunden | Mittel | Mittel |
| Hooks rufen MCP-Tools auf | Hoch | Stunden | Hoch | Hoch |
| `/skills`-Suchfeld | Mittel | keine (sofort nutzbar) | Mittel | Mittel |
| `duration_ms` in Hooks | Mittel | Minuten | Mittel | Mittel |
| `/config` persistiert in settings.json | Hoch | Minuten | Mittel | Hoch |
| `prUrlTemplate` für Code-Review-URLs | Niedrig | Minuten | Niedrig | Niedrig |
| Custom Themes | Niedrig | Minuten | Niedrig | Niedrig |
| MCP Registry v1.7.2 Stabilität | Mittel | keine | Mittel | Mittel |
| `/resume` 67% schneller | Mittel | keine (sofort) | Mittel | Mittel |

---

## Empfohlene Aktionen

1. **`alwaysLoad` in MCP-Konfiguration setzen** für alle Kern-MCP-Server im Cowork OS. Reduziert Reibung bei jedem Session-Start erheblich. Aufwand: unter 10 Minuten.

2. **PostToolUse-Hook mit `hookSpecificOutput.updatedToolOutput` testen** für Ausgabe-Normalisierung oder Logging-Workflows im B2B-Sales-Kontext. Aufwand: 1-2 Stunden für Proof of Concept.

3. **Hooks mit MCP-Tool-Aufrufen (`type: "mcp_tool"`) evaluieren** für automatisierte Aktionen nach bestimmten Tool-Ausführungen, z.B. automatisches CRM-Update nach einem Bash-Befehl. Aufwand: Halber Tag.

4. **`/config`-Persistenz nutzen**: Settings jetzt direkt über `/config` verwalten statt manuell in JSON-Dateien. Für Onboarding neuer Team-Mitglieder relevant.

---

## Keine Aktion nötig

- Custom Themes: kein Geschäftswert für B2B-Workflows
- Vim Visual Mode: nur für Vim-Nutzer relevant
- MCP Registry-Bugfixes: kein direkter Handlungsbedarf, läuft im Hintergrund
- `DISABLE_UPDATES`-Env-Var: nur relevant für verwaltete Enterprise-Deployments
- `/cost` und `/stats` zu `/usage` zusammengeführt: reine UI-Änderung, keine Workflow-Anpassung nötig

---

*Quellen: github.com/anthropics/claude-code/releases, github.com/modelcontextprotocol/registry/releases*
*Nicht erreichbar heute: anthropic.com/news (403), reddit.com/r/ClaudeCode (blockiert)*
