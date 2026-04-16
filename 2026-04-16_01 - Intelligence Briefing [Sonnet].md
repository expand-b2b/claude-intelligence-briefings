# Claude Intelligence Briefing - 2026-04-16

## Neue Releases

### Claude Code v2.1.92 bis v2.1.101 (Woche 15, 6.–10. April 2026)
- **Ultraplan (Early Preview):** Plan in der Cloud entwerfen, im Web-Editor kommentieren, remote ausführen oder lokal zurückziehen. Beim ersten Start wird automatisch eine Cloud-Umgebung erstellt.
- **Monitor Tool:** Streamt Hintergrund-Events in die Konversation. Claude kann damit Logs live verfolgen und darauf reagieren.
- **/loop:** Paced sich selbst, wenn kein Intervall angegeben wird.
- **/team-onboarding:** Verpackt ein Setup als wiederholbares Einführungsguide.
- **/autofix-pr:** Aktiviert automatische PR-Korrekturen direkt aus dem Terminal.

### Claude Code Desktop Redesign (14. April 2026)
Vollständig überarbeitete Desktop-App:
- Multi-Session-Sidebar
- Drag-and-Drop-Pane-Layout
- Integriertes Terminal
- In-App-Datei-Editor
- Erweitertes HTML- und PDF-Preview
- Neu entwickelter Diff-Viewer

### Claude Sonnet 4.6
- Verbessertes agentic Search bei geringerem Token-Verbrauch
- Extended Thinking unterstützt
- 1M-Token-Kontextfenster (Beta)
- Aktuell genutztes Modell in dieser Session

---

## Blog / Ankündigungen

### Claude Mythos Preview + Project Glasswing (7. April 2026)
Neues General-Purpose-Modell mit besonderer Stärke bei Computer-Security-Aufgaben. Anthropic nutzt Mythos proaktiv, um kritische Software zu sichern (Project Glasswing). Relevanz für B2B: Security-Positionierung von Anthropic wird stärker.

### Cloud Routines
Neue Funktion: Gespeicherte Claude Code Konfigurationen (Prompt + Repositories + Connectors) können automatisch ausgeführt werden, ohne autonome Agenten. Damit lassen sich wiederkehrende Aufgaben wie Code-Reviews, Deployments oder Reports automatisieren.

### Claude for Financial Services (10. April 2026)
Lösung für Finanzanalyse, integriert Marktdaten-Feeds mit internen Plattformen (z.B. Databricks, Snowflake). Relevant als Referenz für B2B-Vertrieb in datenintensiven Branchen.

### API: Code Execution jetzt kostenfrei
Code-Ausführung in der Sandbox ist kostenlos, wenn sie mit Web Search oder Web Fetch kombiniert wird. Programmatisches Tool Calling und Web Search sind jetzt GA (General Availability).

---

## Community-Highlights

### Source-Code-Leak (Claude Code v2.1.88, entdeckt 31. März)
Sicherheitsforscher Chaofan Shou fand, dass der komplette Quellcode (~1.900 Dateien, 512.000+ Zeilen) via Source Map im npm-Paket öffentlich zugänglich war. Community-Diskussionen über Copyright und "clean-room"-Fragen. Anthropic hat den Leak inzwischen behoben. Wichtigster Fund: Feature "Kairos" (immer-aktiver Hintergrund-Agent) und ein "Buddy"-Tamagotchi-System mit 18 Tierarten.

### Qualitätsverschlechterung (1.060 Upvotes)
Community-Thread mit erheblichem Engagement: Nutzer berichten, dass Code-Edits häufiger mehrere Versuche brauchen und falsche Dateien bearbeitet werden. Zeigt erhöhte Erwartungshaltung der Community, aber auch Regressionsrisiko bei schnellen Release-Zyklen.

### r/ClaudeCode Wachstum
4.200+ wöchentliche Beitragende, dreimal mehr als r/Codex. Zeigt Dominanz im Developer-AI-Segment.

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Cloud Routines | Hoch | Stunden | Hoch | Hoch |
| Monitor Tool (Log-Streaming) | Hoch | Minuten | Mittel | Hoch |
| Ultraplan (Early Preview) | Mittel | Stunden | Hoch | Mittel |
| Desktop Redesign (Multi-Session) | Mittel | Minuten | Mittel | Mittel |
| /team-onboarding Skill | Hoch | Stunden | Hoch | Hoch |
| /autofix-pr Skill | Mittel | Minuten | Mittel | Mittel |
| Claude Sonnet 4.6 (1M Kontext) | Hoch | Minuten | Hoch | Hoch |
| Code Execution kostenlos (Sandbox) | Mittel | Minuten | Mittel | Mittel |
| Mythos + Project Glasswing | Niedrig | Tage | Mittel | Niedrig |
| Claude for Financial Services | Niedrig | Tage | Mittel | Niedrig |

---

## Empfohlene Aktionen

1. **Cloud Routines testen:** Für wiederkehrende Aufgaben (tägliche Briefings, PR-Reviews, Kunden-Onboarding) eine Routine konfigurieren. Spart manuelle Trigger-Arbeit.
2. **/team-onboarding einrichten:** Das neue Skill als Vorlage für Client-Onboarding im Cowork OS nutzen. Könnte bestehende Onboarding-Dokumentation ersetzen.
3. **Monitor Tool in bestehende Hooks integrieren:** Log-Streaming für Hintergrundprozesse (z.B. Build-Validierung) aktivieren. Aufwand: unter 30 Minuten.
4. **Ultraplan Waitlist prüfen:** Early Preview beobachten. Besonders für komplexe Mehrtages-Tasks im B2B-Kontext relevant, sobald stabil.
5. **Desktop-App aktualisieren:** Multi-Session-Sidebar und integriertes Terminal sind direkte Produktivitätsgewinne für Entwickler im Team.

---

## Keine Aktion nötig

- **Mythos / Project Glasswing:** Noch kein API-Zugang, reine Forschungsphase.
- **Claude for Financial Services:** Nicht im Kerngeschäft von EXPAND B2B.
- **Source-Code-Leak:** Anthropic hat den Leak behoben. Kein Handlungsbedarf, außer npm-Paket aktuell halten (sowieso empfohlen).
- **Qualitätsverschlechterungs-Thread:** Beobachten, aber kein unmittelbarer Handlungsbedarf. Qualität von Sonnet 4.6 selbst testen.

---

## Quellen

- [Anthropic News](https://www.anthropic.com/news)
- [Claude Code What's New](https://code.claude.com/docs/en/whats-new)
- [Claude Code Desktop Redesign (SiliconANGLE)](https://siliconangle.com/2026/04/14/anthropics-claude-code-gets-automated-routines-desktop-makeover/)
- [Claude Code Changelog (claudefa.st)](https://claudefa.st/blog/guide/changelog)
- [Claude Code Reddit Community Analyse (morphllm.com)](https://www.morphllm.com/claude-code-reddit)
- [Claude Code Source Code Leak (Cybernews)](https://cybernews.com/security/anthropic-claude-source-code-discovered-features/)
- [Qualitätsverschlechterung Thread (Trend Reader)](https://trend.hulryung.com/en/posts/2026-04-07-1800-claude-code-regression-ai-coding-tool-quality-degradation-user-backlash-2026/)
- [Anthropic API Release Notes](https://docs.anthropic.com/en/release-notes/overview)
