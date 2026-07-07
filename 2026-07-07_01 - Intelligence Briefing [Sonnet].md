# Claude Intelligence Briefing - 2026-07-07

## Neue Releases

### Claude Code 2.1.202 (6. Juli 2026)
- Neue Einstellung "Dynamic workflow size" in `/config` zur Steuerung der Workflow-Größe
- `workflow.run_id` und `workflow.name` als OpenTelemetry-Attribute für Workflow-Aktivitäten
- `/review <pr>` wieder als schneller Single-Pass (statt Multi-Agenten)
- Fehlerbehebungen: Ctrl+R History Search, `/rename` in Background Sessions, mTLS-Handshake-Fehler

### Claude Code 2.1.201 (3. Juli 2026)
- Claude Sonnet 5: Sitzungen nutzen keine Mid-Conversation System-Role mehr für Harness-Reminders

### Claude Code 2.1.200 (3. Juli 2026)
- `AskUserQuestion`-Dialoge: Auto-Continue standardmäßig deaktiviert
- Permission Mode "default" in "Manual" umbenannt
- Fehlerbehebungen: `disabledMcpServers`/`enabledMcpServers` in `.claude.json`, Background-Session-Stabilität

### Claude Code 2.1.199 (2. Juli 2026)
- Gestapelte Slash-Skill-Aufrufe unterstützen jetzt bis zu 5 Skills gleichzeitig
- SSL/TLS-Fehlerbehandlung verbessert
- Bessere Subagent-Fehlerbehandlung bei Rate Limits

### Claude Code 2.1.198 (1. Juli 2026)
- **Subagents laufen standardmäßig im Hintergrund** (Breaking Change für bestehende Workflows)
- Claude in Chrome allgemein verfügbar
- `/dataviz` Skill hinzugefügt für Chart- und Dashboard-Design

---

## Blog / Ankündigungen

### Fable 5 wieder global verfügbar (1. Juli 2026)
Claude Fable 5 und Mythos 5 wurden am 12. Juni aufgrund US-Exportkontrollen gesperrt. Ab 1. Juli sind beide Modelle wieder weltweit verfügbar. Fable 5 ist bis 7. Juli in bis zu 50% des wöchentlichen Limits enthalten, danach über Usage Credits.
Relevanz: Fable 5 steht wieder für komplexe Reasoning-Aufgaben im Cowork OS zur Verfügung.

### Claude Sonnet 5 (Ende Juni 2026)
Neues Standardmodell mit 1-Millionen-Token-Kontextfenster. Einführungspreis: $2 pro Million Input-Token, $10 pro Million Output-Token bis 31. August 2026.
Relevanz: Direkte Kostenreduktion und massiv erweiterter Kontext für alle Cowork-OS-Workflows.

### Claude Science Beta (aktuell)
AI-Workbench für Wissenschaftler, integriert gängige Forschungstools, produziert prüfbare Artefakte und bietet flexiblen Zugang zu Rechenressourcen. Beta für macOS und Linux, verfügbar für Pro/Max/Team/Enterprise-Pläne.
Relevanz: Kein direkter B2B-Sales-Bezug, aber als Referenz-Use-Case für spezialisierte Agentenumgebungen interessant.

### Anthropic Claude Partner Network ($100 Mio.)
Anthropic investiert $100 Millionen in das Claude Partner Network für den Aufbau von Partnerschaftsprogrammen.
Relevanz: Möglichkeit für EXPAND B2B, Partnerschaftsstatus zu evaluieren.

---

## Community-Highlights (r/ClaudeCode, 342k Mitglieder)

- CLAUDE.md-Best-Practice bestätigt: unter 200 Zeilen halten, hierarchische Dateien in Unterordnern, schrittweise ergänzen
- Erfahrene Nutzer setzen auf mehrere Claude-Code-Instanzen in tmux-Panes (je Modul oder Feature-Branch eine Instanz)
- `--resume`-Flag wird aktiv genutzt, um Kontext-Warmup-Kosten zu vermeiden
- Top-Anwendungsfall Debugging mit erklärendem Reasoning bleibt die meistgenannte Stärke

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Gestapelte Slash-Skills (bis 5) | Hoch | Minuten | Hoch | **Sehr hoch** |
| Subagents standardmäßig im Hintergrund | Hoch | Minuten (Prüfung bestehender Workflows) | Hoch | **Sehr hoch** |
| Dynamic Workflow Size in /config | Hoch | Minuten | Mittel | **Hoch** |
| Claude Sonnet 5 Einführungspreis | Hoch | Keine (automatisch aktiv) | Hoch | **Sehr hoch** |
| Fable 5 wieder verfügbar | Mittel | Minuten | Mittel | **Mittel** |
| /dataviz Skill | Mittel | Minuten | Mittel | **Mittel** |
| AskUserQuestion Auto-Continue deaktiviert | Mittel | Minuten (bestehende Flows prüfen) | Niedrig | **Niedrig** |
| Claude Science Beta | Niedrig | Tage | Niedrig | **Niedrig** |
| Claude Partner Network | Niedrig | Wochen | Hoch | **Mittel** |

---

## Empfohlene Aktionen

1. **Bestehende Workflows auf Hintergrund-Subagents prüfen**: Seit 2.1.198 laufen Subagents standardmäßig im Hintergrund. Alle Workflows, die synchrones Verhalten erwartet haben, müssen geprüft werden (`run_in_background: false` explizit setzen wo nötig).

2. **Gestapelte Slash-Skills testen**: Mit bis zu 5 Skills pro Aufruf lassen sich komplexe Sequenzen in Cowork OS effizienter abbilden. Konkret: `/research + /dataviz + /code-review` in einem Aufruf.

3. **Sonnet-5-Kosten im Auge behalten**: Der Einführungspreis läuft bis 31. August. Vor September Budget-Planung für den regulären Tarif anstoßen.

4. **Dynamic Workflow Size testen**: Für besonders komplexe oder besonders schnelle Läufe die neue `/config`-Einstellung evaluieren.

---

## Keine Aktion nötig

- **Claude Science**: Kein Bezug zu B2B Sales Development in der aktuellen Roadmap.
- **mTLS-Bugfix (2.1.202)**: Wird automatisch durch Update behoben, keine manuelle Aktion.
- **Permission Mode Umbenennung**: Nur kosmetisch, keine funktionale Änderung.

---

*Quellen: [Claude Code Changelog](https://code.claude.com/docs/en/changelog) | [Anthropic News](https://www.anthropic.com/news) | [r/ClaudeCode](https://www.reddit.com/r/ClaudeCode)*
