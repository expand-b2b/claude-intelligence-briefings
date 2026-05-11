# Claude Intelligence Briefing - 2026-05-11

## Neue Releases

### Claude Code 2.1.136
**Wichtigste Änderungen:**
- Auto-Mode-Klassifizierer mit strikten Blockierungsregeln integriert: 2-stufige Analyse trennt schnelle Filterung von tieferer Risikobewertung.
- MCP-Server-Konfigurationen bleiben nach `/clear`-Befehl erhalten (vorher verloren).
- OAuth-Token-Refresh-Fehler bei mehreren gleichzeitigen MCP-Servern behoben.
- `--resume`/`--continue` funktioniert jetzt mit Projektpfaden, die Unterstriche enthalten.
- Plan-Modus blockiert Dateiänderungen korrekt.
- WSL2-Bildpaste via PowerShell-Fallback repariert.
- Neue Umgebungsvariable für Enterprise-Feedback-Umfragen via OpenTelemetry.
- Extended-Thinking-Fehler mit redigierten Blöcken nach Tool-Aufrufen gelöst.

### Claude Code 2.1.137
- VSCode-Erweiterung startet unter Windows wieder korrekt.

### Claude Code 2.1.138
- Interne Fehlerbehebungen (keine öffentlichen Details).

---

## Blog / Ankündigungen

**Code with Claude 2026 (6. Mai) - Vollständige Details nun verfügbar**

Das Anthropic-Entwicklerevent hat mehrere signifikante Releases gebracht. Im Briefing vom 8. Mai waren die Details noch unvollständig:

**Claude Code Auto Mode (allgemein verfügbar)**
Mehrstufige Sicherheitsarchitektur ermöglicht autonome Workflows mit definierten Kontrollpunkten:
- Schneller Erstfilter lässt sichere Aktionen ohne Overhead durch.
- Unsichere oder unklare Operationen werden an einen zweiten, tieferen Klassifizierer eskaliert.
- Visuelles Signal: Spinner wird rot bei ausstehendem Approval.
- Dokumentation: [Anthropic Engineering Blog](https://www.anthropic.com/engineering/claude-code-auto-mode)

**Claude Code Routines (Research Preview)**
Einmalig konfigurierte Automatisierungen, die in der Cloud laufen, ohne dass der lokale Rechner offen sein muss:
- Trigger: Zeitplan (stündlich/nächtlich/wöchentlich), API-Aufruf oder GitHub-Repository-Events.
- Jede Routine erhält einen eigenen API-Endpoint mit Auth-Token.
- Kontingente: Pro 5/Tag, Max 15/Tag, Team/Enterprise 25/Tag.
- Beispielszenarien: Nächtliche Bug-Fixes aus Linear, automatische Draft-PRs, PR-Review auf Push.

**Claude Code Desktop App - Neues Design**
- Session-Sidebar für parallele Aufgaben.
- Drag-and-Drop-Workspace, integrierter Terminal und Datei-Editor.
- Schnellere Diffs, erweiterte Vorschauen.
- SSH-Support auf Mac.

**Remote Agents**
Laptop-Steuerung via Mobilgerät: Claude Code Sessions vom Handy aus starten und überwachen.

**Code Review Feature**
Neues eigenständiges Feature für Team-Code-Reviews innerhalb von Claude Code.

**Claude Managed Agents - Drei neue Fähigkeiten**
1. Multi-Agent-Orchestrierung: Mehrere Agenten koordiniert auf komplexe Aufgaben ansetzen.
2. Outcome Setting: Erfolgskriterien als Ziel definieren statt Schritt-für-Schritt-Anweisungen.
3. "Dreaming": Agenten reviewen vergangene Sessions und erstellen neue Memories zur Selbstverbesserung.

**Anthropic/SpaceX-Deal (6. Mai 2026)**
Anthropic nutzt die gesamte Rechenkapazität des Colossus-1-Rechenzentrums in Memphis:
- 300 MW Kapazität, mehr als 220.000 NVIDIA-GPUs.
- Direkte Folge: Peak-Hours-Limit für Pro- und Max-Kunden entfernt.
- Kontext: SpaceX und xAI wurden zuvor von Elon Musk zusammengelegt. Musk hatte Anthropic noch im Februar 2026 scharf kritisiert. TechCrunch (10. Mai) äußert sich skeptisch zum Deal.
- Quelle: [Anthropic News](https://www.anthropic.com/news/higher-limits-spacex)

**Anthropic Institute - Forschungsagenda veröffentlicht (7. Mai 2026)**
Vier Schwerpunkte: Wirtschaftliche Diffusion von KI, Bedrohungen und Resilienz, KI-Systeme in der Praxis, KI-getriebene Forschung und Entwicklung.

---

## Community-Highlights

**tmux-Multisession-Workflows dominieren r/ClaudeCode**
Fortgeschrittene Nutzer betreiben mehrere Claude-Code-Instanzen parallel in tmux-Panes. Praktisches Setup für parallele Entwicklungsaufgaben, die nicht voneinander abhängen.

**Routines als "mildly clever cron jobs" (The Register)**
Die Community sieht Routines als nützlich, aber nicht revolutionär. Kernkritik: Die Cloud-Ausführung bedeutet, dass Anthropic alle Routine-Prompts und Repo-Inhalte verarbeitet. Für sensible Codebases relevant.

**Opus-4.7-Halluzinationsprobleme dauern an**
Der Thread mit 1.700 Upvotes ("Gaslightus 4.7") zieht weiter Kommentare. Neue Berichte über erfundene Testergebnisse in automatisierten CI-Pipelines. Relevanz: Nicht unbeaufsichtigt in kritischen Workflows einsetzen.

**TechCrunch skeptisch zum xAI/Anthropic-Deal**
Artikel vom 10. Mai hinterfragt strategische Risiken: Abhängigkeit von Infrastruktur eines direkten KI-Konkurrenten (xAI/Grok). Kein Handlungsbedarf, aber Entwicklung beobachten.

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Routines (tägliche Briefings automatisieren) | Hoch | Stunden | Hoch | Hoch |
| Auto Mode in Produktions-Workflows | Hoch | Stunden | Hoch | Hoch |
| MCP-Konfig bleibt nach /clear erhalten | Hoch | keine | Mittel | Hoch |
| Managed Agents: "Dreaming" / Selbstverbesserung | Hoch | Tage | Hoch | Mittel |
| Code Review Feature | Mittel | Stunden | Mittel | Mittel |
| Remote Agents | Mittel | Minuten | Mittel | Mittel |
| Peak-Hours-Limit entfernt (Pro/Max) | Hoch | keine | Hoch | Hoch |
| Desktop App Redesign (Parallel-Sessions) | Mittel | Minuten | Mittel | Mittel |
| Routines: Datenschutzrisiko bei sensiblen Repos | Hoch | Stunden (Evaluation) | Hoch | Hoch |
| Opus 4.7 in CI-Pipelines (Halluzinationsrisiko) | Hoch | Stunden (Testing) | Hoch | Hoch |

---

## Empfohlene Aktionen

1. **Routines für tägliche Briefings einrichten:** Das Briefing-System ist ein idealer Anwendungsfall. Einmalig als Routine konfigurieren mit nächtlichem Trigger, dann läuft der Prozess ohne manuellen Start. Aufwand: 2 Stunden. Datenschutzfrage vorab klären: Welche Quellen werden im Prompt übergeben?

2. **Auto Mode für interne Workflows testen:** In einem abgesicherten Testprojekt den 2-Stufen-Klassifizierer erproben. Ziel: Verstehen, welche Operationen manuelles Approval auslösen und ob das mit den Cowork-OS-Hooks kompatibel ist. Aufwand: 2 Stunden.

3. **MCP-Konfigurationsfix nutzen:** Der Fix in 2.1.136 (MCP-Konfig bleibt nach `/clear` erhalten) behebt ein bekanntes Problem bei langen Sessions. Update auf 2.1.136+ priorisieren.

4. **Routines-Datenschutz evaluieren, bevor Klienten empfohlen werden:** Routines laufen auf Anthropic-Cloud-Infrastruktur. Für Klienten mit sensitiven Codebases (Finanz, Gesundheit) vor Empfehlung die Datenschutzbedingungen prüfen und dokumentieren.

5. **Peak-Hours-Limit als Verkaufsargument nutzen:** Das Entfernen des Peak-Hours-Limits für Pro und Max, kombiniert mit der Nutzungslimit-Verdoppelung aus der letzten Woche, ist ein konkretes Argument gegenüber Klienten, die wegen Unterbrechungen im Tagesbetrieb gezögert haben.

6. **Opus 4.7 aus automatisierten CI-Pipelines heraushalten:** Bis Community-Berichte über Halluzinationen in automatisierten Kontexten abklingen, ausschließlich Sonnet 4.6 in unbeaufsichtigten Pipelines verwenden.

---

## Keine Aktion nötig

- Claude Code 2.1.137/2.1.138: Reine Bugfixes für Windows-VSCode und interne Stabilität. Kein Handlungsbedarf außer regulärem Update.
- Remote Agents: Interessant, aber kein akuter Anwendungsfall im aktuellen Cowork-OS-Setup.
- Anthropic Institute-Agenda: Strategisch relevant auf 6-Monats-Horizon, aber kein sofortiger operativer Einfluss.
- xAI/Anthropic-Deal (Skepsis TechCrunch): Beobachten, aber kein Handlungsbedarf. Der Deal verbessert kurzfristig die Verfügbarkeit.

---

*Quellen: [Claude Code Changelog](https://github.com/anthropics/claude-code/blob/main/CHANGELOG.md) · [Anthropic Engineering: Auto Mode](https://www.anthropic.com/engineering/claude-code-auto-mode) · [Routines Announcement](https://claude.com/blog/introducing-routines-in-claude-code) · [SpaceX/Higher Limits](https://www.anthropic.com/news/higher-limits-spacex) · [InfoQ: Auto Mode](https://www.infoq.com/news/2026/05/anthropic-claude-code-auto-mode/) · [The Register: Routines](https://www.theregister.com/2026/04/14/claude_code_routines/) · [morphllm: Reddit Analysis](https://www.morphllm.com/claude-code-reddit)*
