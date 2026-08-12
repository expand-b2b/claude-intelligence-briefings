# Claude Intelligence Briefing - 2026-08-12

## Neue Releases

### Claude Code 2.1.228 (11. August 2026)
**Sicherheit und Stabilität:**
- Synced Skills jetzt stärker abgesichert: kein `!`-Befehl-Execute, keine `@`-Datei-Expansion mehr möglich
- Interactive-Session-Redraw-Fehler nach internem Layout-Problem behoben
- Git/Git Bash-Erkennung auf Windows verbessert (Start aus übergeordnetem Ordner)
- Remote Control `/resume` leckt keine Gesprächsinformationen mehr in verbundene Sessions
- Session-Cleanup löscht keine Inhalte aus Project-Memory-Ordnern mehr

**Neue Funktionen:**
- Write-Tool: Neuere Modelle können Dateien jetzt ohne vorheriges Lesen überschreiben
- Cross-Session-Nachrichten werden inline statt eingeklappt angezeigt
- Vertex AI Credential Handling deutlich schneller (Fehlerfall in Sekunden statt Minuten)
- Compaction-Fortschritt mit Countdown-Anzeige und Stall-Hinweis

### Claude Code 2.1.227 (10. August 2026)
- Feature Flags werden jetzt korrekt mit Subscription-Tier ausgewertet (bei abgelaufenem Token)
- Slash-Command-Menü: Gematchte Zeichen werden fett markiert, besserer Emoji-Support
- Weniger Event-Loop-Stalls bei Datei-nicht-gefunden-Vorschlägen

### Claude Code 2.1.225 (8. August 2026)
- Gateway-Ausgabenlimit-Unterstützung (Spending Limits für API-Gateways)
- Workspace-Trust-Prompt für `claude agents` in nicht vertrauenswürdigen Verzeichnissen
- VSCode Focus View verbessert: Tool-Aktivität kompakter gefaltet

## Blog / Ankündigungen

### Claude Sonnet 5 - Preise jetzt dauerhaft
Anthropic hat bestätigt, dass die Einführungspreise für Sonnet 5 permanent werden: **$2 pro Million Input-Token, $10 pro Million Output-Token**. Der ursprünglich geplante Preisanstieg ab 1. September entfällt. Das macht Sonnet 5 zur günstigsten Option für hochwertige B2B-Anwendungen.

### Höhere Rate Limits + SpaceX Compute-Deal
Anthropic verdoppelt die Claude Code Rate Limits für Pro, Max, Team und Enterprise (sitzungsbasiert). Konkret:
- Fünf-Stunden-Limits für alle Pläne verdoppelt
- Peak-Hours-Reduktion für Pro und Max Accounts entfällt
- Hintergrund: Compute-Deal mit SpaceX gibt Zugang zu über 300 Megawatt (mehr als 220.000 NVIDIA GPUs) noch im August

### Fable 5 Redeployment
Anthropic hat Fable 5 nach einer temporären Abschaltung wieder aktiviert. Details zur Ursache wurden nicht veröffentlicht.

### AI for Science: Seltene Krankheiten
Neue Forschungsstipendien für seltene Krankheiten verfügbar. Relevant für Healthcare-Klienten, nicht für EXPAND B2B direkt.

### Tino Cuéllar als Chief Global Affairs Officer (4. August)
Neuer Führungsposten bei Anthropic. Kein direkter technischer Impact.

## Community-Highlights

Aktive GitHub-Repositories mit Claude-Code-Community-Wissen:
- `januff/claude-code-tips`: 100+ Community-Tips, SQLite-Datenbank mit Volltextsuche, Obsidian-Vault mit 555 verlinkten Notizen, automatische Pipeline für Klassifizierung und Kontextualisierung
- `robintux/claude-code-tips_2026`: 45 Tips inkl. Gemini CLI als Claude-Code-Assistent und Container-Betrieb
- `ykdojo/claude-code-tips`: 40+ Tips mit Custom Status Line und dx-Plugin

**Meistdiskutierte Praktiken:**
- **Auto Memory**: Claude schreibt sich selbst Notizen in ein persistentes Verzeichnis, getrennt von CLAUDE.md (die Nutzer schreiben) - Claude speichert eigene Muster und Erkenntnisse
- **Lean CLAUDE.md + Plan Mode vor jedem Edit**: als zuverlässigstes Workflow-Muster bestätigt
- **Parallele Agents in Git Worktrees**: als Standard für umfangreiche Tasks empfohlen
- **Hooks als Guardrails**: Verification-Loop zur Reduzierung von Halluzinationen

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Rate Limits verdoppelt (kein Peak-Reduction) | Hoch | Minuten (automatisch) | Hoch | Sofort |
| Sonnet 5 Preise dauerhaft $2/$10 | Hoch | Minuten (API-Config prüfen) | Hoch | Sofort |
| Synced Skills Sicherheitshärtung | Hoch | Minuten (kein `!` in Skills) | Mittel | Diese Woche |
| Write-Tool ohne Prior Read | Mittel | Minuten (in Workflows nutzen) | Mittel | Diese Woche |
| Gateway Spending Limits | Mittel | Stunden (Config + Test) | Hoch | Diese Woche |
| Auto Memory Konzept | Hoch | Stunden (Implementierung prüfen) | Mittel | Nächste Woche |
| Vertex AI Credential-Beschleunigung | Niedrig | Keine (automatisch) | Niedrig | Keine Aktion |
| Compaction-Countdown | Niedrig | Keine (automatisch) | Niedrig | Keine Aktion |

## Empfohlene Aktionen

1. **Rate Limits prüfen**: Bestehende Claude Code Pro/Max-Sessions profitieren sofort von verdoppelten Limits und keiner Peak-Hours-Reduktion. Intensive Coding-Sessions jetzt ohne Zeitbeschränkung möglich.

2. **Sonnet 5 als Standard evaluieren**: Mit dauerhaftem $2/$10-Preis ist Sonnet 5 jetzt kosteneffizient für B2B-Workflows. Aktuelle Modell-Konfigurationen in Cowork-OS-Skills überprüfen und ggf. auf `claude-sonnet-5` anheben.

3. **Skills auf `!`-Befehle prüfen**: Das Sicherheitsupdate in 2.1.228 blockiert `!`-Befehlsausführung in Synced Skills. Alle Skills im Repo auf Compatibility prüfen und ggf. anpassen.

4. **Gateway Spending Limits einrichten**: Für B2B-Klienten mit API-Zugang sind Ausgabenlimits jetzt direkt in Claude Code konfigurierbar. Das vereinfacht Budget-Kontrolle bei mandantenfähigen Setups.

5. **Auto Memory Funktion testen**: Claude schreibt sich selbst Notizen über Projektmuster. In längeren Projekten kann das CLAUDE.md-Pflege reduzieren. Bewusst aktivieren und beobachten.

## Keine Aktion nötig

- Vertex AI Credential-Beschleunigung: automatisches Update
- Compaction-Fortschrittsanzeige: automatisches Update
- Peak-Hours-Limit-Entfall: automatisch aktiv für Pro/Max
- Fable 5 Redeployment: kein direkter Impact auf Cowork OS
- SpaceX Compute-Deal: Infrastruktur-Nachricht ohne Handlungsbedarf
- Healthcare-Stipendien: nicht relevant für EXPAND B2B

---
*Quellen: code.claude.com/docs/en/changelog, anthropic.com/news, github.com/anthropics/claude-code, Community-Repositories (januff, robintux, ykdojo)*
*Erstellt: 2026-08-12 | Modell: Claude Sonnet 4.6*
