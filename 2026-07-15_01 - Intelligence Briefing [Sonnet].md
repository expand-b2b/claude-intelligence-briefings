# Claude Intelligence Briefing - 2026-07-15

## Neue Releases

**Letzte 48 Stunden: v2.1.208 bis v2.1.210**

| Version | Datum | Wichtigste Änderungen |
|---|---|---|
| v2.1.210 | 14. Juli 2026 | Live elapsed-time counter für lange Tool-Aufrufe; Startup-Warnung für veraltete Permission Rules (Write/NotebookEdit/Glob -> Edit/Read); Fixes für `isolation: 'worktree'` Subagents; MCP OAuth Verbesserungen |
| v2.1.209 | 14. Juli 2026 | Fix: `/model` und andere Dialoge blockierten in `claude agents` Background-Sessions |
| v2.1.208 | 14. Juli 2026 | Screen reader mode (`--ax-screen-reader`); `vimInsertModeRemaps` Setting; `CLAUDE_CODE_PROCESS_WRAPPER` für Corporate Launcher; Mouse-click Support für Multi-Select Menus; Memory leaks in langen Sessions behoben |

**Vorwoche zur Einordnung (v2.1.206-207, 9.-11. Juli 2026):**
- v2.1.207: Auto mode ohne Opt-in auf Bedrock, Vertex AI und Foundry; Plugin-Security Fix (`${user_config.*}` in Shell-Form Commands blockiert)
- v2.1.206: `/cd` mit Directory-Vorschlägen; `/doctor` prüft jetzt auf überlange CLAUDE.md-Dateien; `/commit-push-pr` unterstützt `remote.pushDefault`

## Blog und Ankündigungen

**Claude Reflect** (9. Juli 2026)
Neues Beta-Feature: integriertes Dashboard für KI-Nutzungsanalyse. Zeigt Themen, Nutzungsmuster und Aufgabentypen über die Zeit. Noch kein direkter B2B-Nutzen, aber interessant als Vorlage für eigene Nutzungsberichte gegenüber Klienten.

**Claude Cowork auf Mobile und Web** (7. Juli 2026)
Cowork ist jetzt auf iOS/Android und im Browser verfügbar. Nutzer können eine Aufgabe am Desktop starten, Statusupdates auf dem Handy abrufen und das Ergebnis später abholen, auch wenn der Laptop geschlossen ist. Relevanz für Sales Development: asynchrones Arbeiten mit Agenten wird alltagstauglich.

**Fable 5 global verfügbar** (ab 1. Juli 2026)
Exportbeschränkungen auf Fable 5 und Mythos 5 aufgehoben. Fable 5 ist seit 1. Juli weltweit auf Claude Platform, Claude.ai, Claude Code und Claude Cowork verfügbar.

**Claude Science**
KI-Workbench für Wissenschaftler mit integriertem Tool-Zugriff, auditierbaren Artifacts und flexiblem Compute. Kein direkter B2B-Sales-Bezug, zeigt aber Anthropics Strategie der vertikalen Expansion in Fachbereiche.

## Community-Highlights

**r/ClaudeCode:** 342.000 Mitglieder, 4.200+ wöchentliche Beiträge. Häufigste Themen: Rate limits beim Pro-Plan ($20/Monat), MCP-Server-Setups, Plugin-Entwicklung.

**Ecosystem-Wachstum (Stand Juli 2026):**
- 21.700+ Skills im gesamten Ökosystem
- 12.500+ MCP Server
- ccpi CLI (`tonsofskills.com`): 425 Plugins, 2.810 Skills, 200 Agenten als Open-Source-Paketmanager

**W28 Plugin-Highlights (Woche 6.-10. Juli):**
- `mnemos`: Persistentes Gedächtnis über Sessions hinweg
- `databricks-pack`: Databricks-Integration für Datenanalyse
- `kobiton-automate`: Mobile-App-Testing-Automatisierung
- `claude agents`-Interface wurde um farbige Status-Badges und classifier-generierte Überschriften pro Agent erweitert

**MCP Tool Search:** Lazy Loading für MCP Server reduziert Context-Verbrauch laut Community um bis zu 95%.

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| /doctor prüft überlange CLAUDE.md | Hoch | Minuten | Mittel | Hoch |
| Veraltete Permission Rules Warnung | Hoch | Minuten | Mittel | Hoch |
| Auto mode auf Bedrock/Vertex/Foundry | Mittel | Stunden | Hoch | Hoch |
| Claude Cowork Mobile/Web | Hoch | Keine (ist live) | Hoch | Hoch |
| ccpi CLI Paketmanager | Mittel | Stunden | Mittel | Mittel |
| Claude Reflect Beta | Niedrig | Keine | Niedrig | Niedrig |
| Screen reader mode | Niedrig | Minuten | Niedrig | Niedrig |

## Empfohlene Aktionen

1. **CLAUDE.md Länge prüfen** (Aufwand: Minuten): `/doctor` ausführen und ggf. CLAUDE.md kürzen. Die neue Startup-Warnung bedeutet, dass zu lange Dateien aktiv als Problem markiert werden.

2. **Permission Rules bereinigen** (Aufwand: Minuten): Veraltete Regeln für `Write`, `NotebookEdit` und `Glob` auf `Edit`/`Read` umstellen, bevor sie als Fehler geloggt werden.

3. **Claude Cowork Mobile testen** (Aufwand: Stunden): Workflow für asynchrone Sales-Development-Aufgaben mit Cowork Mobile aufbauen. Konkret: Lead-Recherche am Desktop starten, Ergebnis per Handy abrufen.

4. **ccpi CLI evaluieren** (Aufwand: Stunden): `tonsofskills.com` und den ccpi Paketmanager prüfen, ob relevante Skills für EXPAND B2B bereits verpackt verfügbar sind, bevor eigene gebaut werden.

## Keine Aktion nötig

- **Claude Reflect:** Feature ist in Beta und primär für Privatnutzer. Kein B2B-Workflow-Mehrwert derzeit.
- **Claude Science:** Für wissenschaftliche Einrichtungen relevant, nicht für Sales Development.
- **Fable 5 global:** Bereits in vorherigen Briefings erfasst; kein neuer Handlungsbedarf.
- **Screen reader mode:** Nur bei Bedarf für Zugänglichkeitsanforderungen.
- **vimInsertModeRemaps:** Nischenfunktion für vim-Nutzer.

---

*Quellen: code.claude.com/docs/en/whats-new, code.claude.com/docs/en/changelog, anthropic.com/news, reddit.com/r/ClaudeCode, claudemarketplaces.com*
