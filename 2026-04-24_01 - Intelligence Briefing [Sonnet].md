# Claude Intelligence Briefing - 2026-04-24

## Neue Releases

### Claude Code v2.1.113 bis v2.1.119 (17.-23. April 2026)

**v2.1.119** (23. April)
- `/config`-Einstellungen persistieren jetzt direkt nach `~/.claude/settings.json`
- Neues Setting `prUrlTemplate` für eigene Code-Review-URLs
- `--from-pr` unterstützt jetzt GitLab, Bitbucket und GitHub Enterprise
- `PostToolUse`- und `PostToolUseFailure`-Hooks erhalten jetzt `duration_ms`
- `CLAUDE_CODE_HIDE_CWD`-Umgebungsvariable
- PowerShell-Befehle können auto-genehmigt werden

**v2.1.118** (23. April)
- Vim Visual Mode (`v`) und Visual-Line Mode (`V`) in der Eingabe
- `/cost` und `/stats` wurden zu `/usage` zusammengefasst
- Custom Themes direkt aus `/theme` erstellen
- Hooks können jetzt MCP Tools direkt aufrufen (`type: "mcp_tool"`)
- `DISABLE_UPDATES`-Umgebungsvariable

**v2.1.117** (22. April)
- Forked Subagents auf externen Builds (`CLAUDE_CODE_FORK_SUBAGENT=1`)
- Agent-Frontmatter `mcpServers` für Main-Thread-Sessions konfigurierbar
- `/model` mit Persistenz über Sessions hinweg
- `/resume` zeigt jetzt Zusammenfassung großer Sessions
- Parallele MCP-Server-Verbindungen (Standard)

**v2.1.116** (20. April)
- `/resume` bei Sessions über 40 MB bis zu 67 % schneller
- Thinking Spinner zeigt Fortschritt ("still thinking", "almost done thinking")
- `/doctor` kann während einer laufenden Antwort geöffnet werden

**v2.1.113** (17. April)
- Native Claude Code Binary statt gebündeltem JavaScript (schnellerer Start)
- Neues Setting `sandbox.network.deniedDomains`
- `Ctrl+A/E` für Zeilenanfang/-ende in Multiline-Eingabe

## Blog/Ankündigungen

**Claude Mythos Preview + Project Glasswing** (7. April 2026)
Anthropic veröffentlichte eine Preview des neuen Modells "Claude Mythos", das besonders stark bei Cybersecurity-Aufgaben abschneidet. Parallel dazu wurde "Project Glasswing" gestartet, um kritische Software mit Mythos abzusichern. Für Cowork OS direkt noch nicht relevant, aber strategisch wichtig als nächste Modellgeneration.

**Anthropic-Amazon-Partnerschaft ausgebaut** (April 2026)
Amazon sichert Anthropic bis zu 5 GW Compute-Kapazität, darunter Trainium2 und fast 1 GW Trainium3 bis Ende 2026. Anthropics annualisierter Umsatz übersteigt 30 Milliarden USD. Relevanz: Kapazitätsengpässe bei der API werden mittelfristig unwahrscheinlicher.

**Anthropic Economic Index Survey** (22. April 2026)
Monatliche Umfrage zur wirtschaftlichen Wirkung von KI, durchgeführt via Anthropic Interviewer. Interessant für B2B-Kommunikation gegenüber Klienten.

**Desktop App + Routines** (14. April 2026)
Neues Desktop-App-Release mit Sidebar, integriertem Terminal und Drag-and-Drop-Panes. Routines (Research Preview) erlauben es, gespeicherte Claude Code-Konfigurationen (Prompt + Repos + Connectors) einmalig zu paketieren und automatisch auszuführen.

**Claude Code Webinar: "What We Shipped"** (7. April 2026)
Anthropic hielt ein Live-Q&A mit dem Claude Code Team zu aktuellen Features.

## Community-Highlights

**Source-Code-Leak** (31. März 2026, nachklingend bis April)
Eine 59,8-MB-.map-Datei im npm-Paket v2.1.88 enthüllte den vollständigen TypeScript-Quellcode (~1.900 Dateien, 512.000+ Zeilen). Reddit-Post erreichte 1.719 Upvotes. Anthropic hat das Leak behoben. Keine direkten Sicherheitsrisiken für Nutzer, aber interessant für tiefere Einblicke in die Architektur.

**Pricing-Kontroverse** (22. April 2026)
Claude Code erschien kurzzeitig auf einer neuen Preisseite als exklusiv für den $100/$200-Max-Plan. Nach Community-Backlash auf Reddit, Hacker News und Twitter wurde die Änderung zurückgenommen. Aktuell bleibt Claude Code Teil des Pro-Plans ($20/Monat). Situation beobachten.

**Rate-Limit-Probleme** (März/April 2026)
Mehrere Threads berichten von unerwartet schnellem Verbrauch des Rate Limits. Nutzer diskutieren Rückerstattungen und mögliche stille Änderungen an der Messung. Relevant für Klienten, die Claude Code intensiv nutzen.

**Claude Code als Developer-Betriebssystem** (April 2026)
Mehrere Artikel und Community-Posts beschreiben Claude Code 2026 als primäre Entwicklungsumgebung, nicht mehr als Ergänzung. Positives Signal für B2B-Positionierung.

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Hooks rufen MCP Tools auf (v2.1.118) | Hoch | Minuten | Hoch | Sehr hoch |
| Routines Research Preview (Desktop App) | Hoch | Stunden | Hoch | Sehr hoch |
| Agent-Frontmatter mcpServers (v2.1.117) | Hoch | Stunden | Hoch | Hoch |
| Forked Subagents (v2.1.117) | Hoch | Stunden | Hoch | Hoch |
| /config Persistenz zu settings.json (v2.1.119) | Hoch | Minuten | Mittel | Hoch |
| PostToolUse duration_ms in Hooks (v2.1.119) | Mittel | Minuten | Mittel | Mittel |
| GitLab/Bitbucket --from-pr (v2.1.119) | Mittel | Minuten | Mittel | Mittel |
| prUrlTemplate Setting (v2.1.119) | Mittel | Minuten | Mittel | Mittel |
| Native Binary (schnellerer Start) (v2.1.113) | Hoch | Keine | Niedrig | Mittel |
| Claude Mythos Preview | Niedrig | Tage | Hoch | Beobachten |
| Pricing-Änderung (rückgängig gemacht) | Niedrig | Keine | Niedrig | Beobachten |

## Empfohlene Aktionen

1. **Hooks auf MCP-Tool-Aufrufe umstellen**: Mit `type: "mcp_tool"` in Hooks können jetzt MCP-Tools direkt aus PostToolUse-Hooks aufgerufen werden. Das Cowork OS-Setup sollte geprüft werden, ob Aktionen, die bisher über Bash-Hooks laufen, eleganter als MCP-Tool-Aufruf formulierbar sind.

2. **Routines evaluieren**: Die Research Preview von Routines passt direkt zur Idee des Cowork OS als paketierte Arbeitsweise. Einen Routine-Prototyp für den Standard-Salesperson-Workflow aufbauen und testen.

3. **Agent-Frontmatter mcpServers nutzen**: Skills und Agents in CLAUDE.md können jetzt `mcpServers`-Konfigurationen direkt im Frontmatter tragen. Bestehende Agenten prüfen und ggf. spezifische MCP-Server nur dort einbinden, wo sie gebraucht werden.

4. **Forked Subagents für parallele Aufgaben**: `CLAUDE_CODE_FORK_SUBAGENT=1` aktivieren und einen Parallelisierungs-Workflow für Rechercheaufgaben testen, die unabhängig voneinander laufen können.

5. **prUrlTemplate für Code-Review konfigurieren**: Falls Klienten eigene GitLab- oder GitHub-Enterprise-Instanzen nutzen, `prUrlTemplate` und `--from-pr` für deren Repos einrichten.

## Keine Aktion nötig

- **Pricing-Kontroverse**: Wurde zurückgenommen. Klienten müssen nichts unternehmen.
- **Rate-Limit-Probleme**: Situation beobachten; bisher kein systematischer Fehler bestätigt.
- **Source-Code-Leak**: Behoben. Kein Handlungsbedarf.
- **Claude Mythos Preview**: Noch in Preview, kein stabiler API-Zugang. Erst bei GA evaluieren.
- **Custom Themes**: Ästhetisches Feature, kein geschäftlicher Mehrwert.
- **/usage statt /cost+/stats**: Nur Umgewöhnung, keine Konfigurationsänderung nötig.

---

*Quellen: [Claude Code Changelog](https://code.claude.com/docs/en/changelog) · [What's New](https://code.claude.com/docs/en/whats-new) · [Anthropic News](https://www.anthropic.com/news) · [Claude Code Releases](https://github.com/anthropics/claude-code/releases) · [r/ClaudeCode](https://www.reddit.com/r/ClaudeCode/) · [Simon Willison: Claude Code Confusion](https://simonwillison.net/2026/Apr/22/claude-code-confusion/)*
