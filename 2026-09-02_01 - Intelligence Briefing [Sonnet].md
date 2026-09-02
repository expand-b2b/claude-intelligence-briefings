# Claude Intelligence Briefing - 2026-09-02

## Neue Releases

### v2.1.258 (01.09.2026) - Aktuell
- Fix: Absturz beim Start auf macOS 12 (Monterey) behoben, eine Regression aus v2.1.255.
- Fix: Remote- und Scheduled Sessions scheiterten nach erneut gesendeter Permission-Freigabe mit einem "user messages must have non-empty content" Fehler. Direkt relevant fuer diesen Scout, da er selbst als Scheduled Session laeuft.

### v2.1.257 (01.09.2026)
- **Claude Fable 5.1**: Neues Standardmodell fuer Fable mit 1 Mio. Token Kontextfenster, Preis 10 Dollar Input pro Mtok, 50 Dollar Output pro Mtok.
- **Zeitformat-Einstellungen**: Neue `timeZone` Option und Zeitformat (12h, 24h, UTC oder strftime-Muster) fuer die Anzeige in Transcript und Statuszeile.
- **Containment Escape Regel im Auto-Mode**: Zusaetzliche Sicherheitsregel gegen das Verlassen des vorgesehenen Arbeitsbereichs durch Agenten.
- **`CLAUDE_CODE_SUBAGENT_MODEL_FORCE`**: Neue Umgebungsvariable, um das Modell fuer Subagenten zu erzwingen, unabhaengig von Agent-Konfiguration.
- Ueber 100 Bugfixes, unter anderem fuer veraltete Sandbox-Masken, Settings in nachtraeglich angelegten `.claude/` Ordnern und Worktree/Git-Credential-Probleme.

### v2.1.252 (31.08.2026)
- Fix: Bash-Befehle scheiterten auf manchen Macs mit "task output swap refused".
- Fix: "Always allow" wurde in Projekten ohne vorhandene `.claude/settings.local.json` nicht gespeichert.
- Fix: Remote Control Sessions blieben nach Tool-Abschluss haengen.

### v2.1.251 (28.08.2026)
- **`PreModelSwitch` / `PostModelSwitch` Hooks**: Neue Hook-Events, um Modellwechsel waehrend einer Session abzufangen und zu steuern.
- **Live-Streaming von Subagent-Tool-Aufrufen** an Remote Control Clients im Vordergrund.
- **Spend-Limit-Balken in `/usage`** und **Prompt-Cache-Statistiken pro Session in `/cost`**.
- Sicherheitsverbesserungen bei Symlink-Handling und Permission-Checks.

Ausserhalb von Claude Code: Anthropic hat am 01.09.2026 zusaetzlich **Claude Mythos 5.1** angekuendigt, parallel zu Fable 5.1. Die Cache-Read-Preise fuer Fable 5.1 wurden gesenkt, die uebrige Preisstruktur bleibt gegenueber Fable 5 unveraendert.

---

## Blog/Ankuendigungen

**Claude Fable 5.1 und Mythos 5.1 (01.09.2026)**: Anthropic positioniert beide Modelle als Spitzenmodelle fuer Coding, Wissensarbeit und lang laufende Problemloesungen. Fable 5.1 loest das bisherige Standardmodell fuer schnelle Antworten ab und bringt ein 1-Mio-Token-Kontextfenster mit. Relevanz fuer Cowork OS: groessere Kontextfenster erlauben laengere Recherche-Sessions und mehr Referenzmaterial (z.B. komplette Account-Historien) ohne Kompression.

Die Anthropic-Newsroom-Seite selbst war ueber den konfigurierten Proxy nicht direkt abrufbar (Egress geblockt). Die obige Information stammt aus einer Sekundaerquelle (9to5Mac) und einer Web-Suche, nicht aus der Primaerquelle. Zur Bestaetigung sollte anthropic.com/news bei Gelegenheit manuell geprueft werden.

---

## Community-Highlights

Reddit r/ClaudeCode war ueber den Proxy heute nicht erreichbar (Verbindung von der Egress-Policy abgelehnt). Eine Web-Suche lieferte keine spezifischen Top-Posts der letzten 48 Stunden, nur allgemeine Subreddit-Statistiken (ca. 395.000 Mitglieder, haeufige Themen: Workflows, Bugs, "Built with Claude"). Keine verifizierten Highlights fuer heute.

Im MCP-Umfeld keine neuen Entwicklungen in den letzten 48 Stunden. Die MCP-Spezifikation 2026-07-28 und die Registry (API-Freeze v0.1 seit Oktober 2025) sind unveraendert.

---

## Relevanz fuer Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschaeftswert | Prioritaet |
|---|---|---|---|---|
| Fix fuer Scheduled-Session-Fehler (v2.1.258) | Hoch | Keine (Auto-Update) | Hoch | Hoch |
| `CLAUDE_CODE_SUBAGENT_MODEL_FORCE` (v2.1.257) | Hoch | Minuten | Mittel | Hoch |
| Claude Fable 5.1, 1 Mio Kontext (Blog) | Mittel | Stunden (Testen) | Hoch | Mittel |
| `PreModelSwitch`/`PostModelSwitch` Hooks (v2.1.251) | Mittel | Stunden | Mittel | Mittel |
| Zeitformat/`timeZone` Settings (v2.1.257) | Niedrig | Minuten | Niedrig | Niedrig |
| Containment Escape Regel Auto-Mode (v2.1.257) | Mittel | Keine (automatisch) | Mittel | Mittel |
| Spend-Limit-Balken in `/usage` (v2.1.251) | Niedrig | Keine | Niedrig | Niedrig |

---

## Empfohlene Aktionen

1. **Update auf v2.1.258 sicherstellen** (heute): Der Fix fuer den "non-empty content" Fehler bei Scheduled Sessions betrifft direkt diesen taeglichen Briefing-Scout. Pruefen, ob die aktuelle Umgebung bereits aktualisiert ist.

2. **`CLAUDE_CODE_SUBAGENT_MODEL_FORCE` evaluieren** (diese Woche): Fuer Subagenten in Recherche-Skills (z.B. account-recherche, lead-liste-scoring) ein guenstigeres, schnelleres Modell erzwingen, waehrend der Hauptagent bei Fable/Sonnet bleibt. Potenzielle Kosteneinsparung bei hohem Subagent-Volumen.

3. **Claude Fable 5.1 testweise fuer laengere Recherche-Aufgaben einsetzen** (diese Woche): Das 1-Mio-Token-Fenster eignet sich fuer Aufgaben wie das Verarbeiten kompletter Messelisten oder langer Transkripte in einem Durchgang statt in Chunks.

4. **Anthropic-Newsroom manuell pruefen** (bei Gelegenheit): Da der automatisierte Zugriff blockiert ist, sollte Friedrich gelegentlich manuell auf anthropic.com/news nachsehen, um die Fable/Mythos 5.1 Ankuendigung und moegliche Folgeankuendigungen aus erster Hand zu bestaetigen.

---

## Keine Aktion noetig

- **Zeitformat/`timeZone` Settings**: Kosmetische Einstellung ohne Workflow-Relevanz.
- **Spend-Limit-Balken in `/usage`**: Nur relevant bei aktivem Budget-Limit, aktuell nicht konfiguriert.
- **Containment Escape Regel**: Wird automatisch mit dem Auto-Mode-Update aktiv, kein manueller Schritt noetig.
- **MCP-Registry/Spezifikation**: Keine Aenderung seit letztem Briefing.
- **Bugfixes v2.1.252/v2.1.251 (Mac-spezifisch, Remote Control)**: Werden durch regulaeres `claude update` automatisch eingespielt.

---

*Hinweis: GitHub API (api.github.com) und Reddit waren ueber den Session-Proxy direkt nicht erreichbar (Repo-Scope bzw. Egress-Policy). Daten stammen aus WebFetch/WebSearch als Ersatzquellen.*

*Quellen: code.claude.com/docs/en/changelog | anthropic.com/news (indirekt via Suche) | Generiert: 2026-09-02 | Modell: claude-sonnet-5*
