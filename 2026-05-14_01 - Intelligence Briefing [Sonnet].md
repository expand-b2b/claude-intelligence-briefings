# Claude Intelligence Briefing - 2026-05-14

## Neue Releases

### v2.1.141 (2026-05-13) - Produktionsreif
Größtes Release der letzten Woche mit 40+ Änderungen. Highlights:

**Hooks und Automatisierung:**
- `terminalSequence`-Feld im Hook-JSON-Output: Hooks können jetzt Desktop-Benachrichtigungen, Fenstertitel und Bells auslösen, ohne ein Kontrollterminal zu benötigen
- `continueOnBlock` für `PostToolUse`-Hooks: Ablehnungsgrund wird an Claude zurückgegeben, Turn läuft weiter (kein Hard-Stop mehr)
- Hintergrund-Agents behalten jetzt den Permission-Mode bei statt auf Default zurückzufallen

**Infrastruktur:**
- `CLAUDE_CODE_PLUGIN_PREFER_HTTPS`: Plugins über HTTPS klonen statt SSH (für Umgebungen ohne GitHub-SSH-Key)
- `ANTHROPIC_WORKSPACE_ID`: Workload Identity Federation mit Workspace-Scoping
- `claude agents --cwd <path>`: Session-Liste auf Verzeichnis einschränken
- Bedrock: `awsCredentialExport` läuft jetzt immer, nicht nur bei fehlenden Ambient-Credentials

**UX-Fixes:**
- Rewind-Menü: "Summarize up to here" komprimiert früheren Kontext bei laufender Session
- Markdown-Tabellen mit Zeilenumbrüchen rendern wieder als Gitter (Regression seit 2.1.136 behoben)
- Multi-Zeilen-Statusline-Output bei breiten Terminals korrigiert
- `/feedback` kann jetzt Sessions der letzten 24h oder 7 Tage einschließen

### v2.1.140 (2026-05-12)
- Agent-Tool `subagent_type`-Matching akzeptiert jetzt Groß-/Kleinschreibung und Trennzeichen-Varianten (z.B. `"Code Reviewer"` löst zu `code-reviewer` auf)
- Plugin-System warnt jetzt in `/doctor`, wenn Komponenten-Ordner durch `plugin.json` überdeckt werden
- Bugfixes: Settings-Symlink-Reload, Background-Service-Startup, `/loop`-Scheduling

### v2.1.139 (2026-05-11) - Strategisch relevant
**Agent View (Research Preview):**
- `claude agents`: Zentrales Dashboard aller Claude-Code-Sessions (laufend, wartend, abgeschlossen)
- Dokumentation: https://code.claude.com/docs/en/agent-view

**Neue Befehle:**
- `/goal`: Abbruchbedingung festlegen, Claude arbeitet über Turns hinweg bis zur Erfüllung
- `claude plugin details <name>`: Zeigt Komponenten und Token-Kosten pro Session

**Hooks/MCP-Erweiterungen:**
- Hook `args: string[]`-Feld (exec-Form): Direktstart ohne Shell, keine Quoting-Probleme
- Hook `continueOnBlock` für PostToolUse (jetzt GA)
- MCP-stdio-Server erhalten `CLAUDE_PROJECT_DIR` in der Umgebung; Plugin-Configs können `${CLAUDE_PROJECT_DIR}` referenzieren

## Blog/Ankündigungen

Anthropic-Blog nicht erreichbar (Host-Allowlist). Keine verifizierten Blog-Neuigkeiten.

## Community-Highlights

Reddit r/ClaudeCode nicht erreichbar (Host-Allowlist). Keine Community-Daten verfügbar.

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|
| `continueOnBlock` für PostToolUse-Hooks | Hoch | Minuten | Hoch | Hoch |
| `claude agents` Agent-Dashboard | Hoch | Stunden | Hoch | Hoch |
| `/goal`-Befehl für autonome Tasks | Hoch | Minuten | Hoch | Hoch |
| `terminalSequence` für Desktop-Benachrichtigungen | Mittel | Stunden | Mittel | Mittel |
| `CLAUDE_PROJECT_DIR` in MCP-stdio-Servern | Mittel | Minuten | Mittel | Mittel |
| `subagent_type` case-insensitiv | Mittel | Minuten | Niedrig | Niedrig |
| `CLAUDE_CODE_PLUGIN_PREFER_HTTPS` | Niedrig | Minuten | Niedrig | Niedrig |

## Empfohlene Aktionen

1. **`continueOnBlock` in PostToolUse-Hooks einbauen**: Bestehende Quality-Gate-Hooks können jetzt Feedback an Claude zurückgeben statt hart zu blocken. Konkret: in `.claude/settings.json` bei PostToolUse-Hooks `"continueOnBlock": true` setzen und eine aussagekräftige Nachricht zurückgeben. Aufwand: 15 Minuten.

2. **`claude agents`-Dashboard testen**: Das neue Agent-Dashboard (Research Preview) ermöglicht die Übersicht aller parallelen Claude-Sessions. Für Cowork OS relevant bei Multi-Agent-Workflows. Mit `claude agents` starten und Feedback zur UX sammeln. Aufwand: 30 Minuten.

3. **`/goal`-Befehl in Sales-Development-Workflows einsetzen**: Der `/goal`-Befehl eignet sich für mehrstufige Recherche-Tasks (z.B. "Erstelle Briefing und committe es"). Token-Verbrauch und Turns live sichtbar. Aufwand: Minuten für den ersten Test.

4. **MCP-Server-Configs auf `${CLAUDE_PROJECT_DIR}` umstellen**: Bestehende MCP-Server-Konfigurationen mit absoluten Pfaden können jetzt auf die Variable umgestellt werden. Verbessert Portabilität zwischen Arbeitsumgebungen. Aufwand: 10 Minuten pro Server.

5. **`claude agents --cwd`-Flag in Projekt-Skripten nutzen**: Für Cowork OS mit mehreren parallelen Projekten ermöglicht `--cwd` die Filterung nach Projektkontext. In Shell-Aliases oder Projekt-Skripten integrieren.

## Keine Aktion nötig

- `ANTHROPIC_WORKSPACE_ID`: Nur relevant bei Workload Identity Federation mit mehreren Workspaces. Derzeit kein Bedarf.
- `CLAUDE_CODE_PLUGIN_PREFER_HTTPS`: Nur für Umgebungen ohne GitHub-SSH-Zugang. Nicht betroffen.
- Bedrock `awsCredentialExport`-Fix: Kein AWS Bedrock im aktuellen Setup.
- VSCode/IDE-spezifische Fixes: Nicht primär betroffen.
- Markdown-Tabellen-Rendering-Fix (Regression): Betrifft nur die TUI-Darstellung, kein Code-Handlungsbedarf.

---
*Quellen: GitHub Releases anthropics/claude-code (verifiziert). Anthropic Blog und Reddit r/ClaudeCode nicht erreichbar (Host-Allowlist aktiv).*
*Modell: claude-sonnet-4-6*
