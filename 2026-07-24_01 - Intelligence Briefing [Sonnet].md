# Claude Intelligence Briefing - 2026-07-24

## Neue Releases

### Claude Code v2.1.213 bis v2.1.218 (18. bis 22. Juli 2026)

**v2.1.218** (22. Juli)
- `/code-review` läuft jetzt als Background-Subagent, kein Blockieren der Hauptsession mehr
- Screen-Reader-Ankündigungen für gelöschten Text

**v2.1.217** (21. Juli)
- Emoji-Shortcode-Autocomplete im Prompt-Input

**v2.1.216** (20. Juli)
- Neue Einstellung `sandbox.filesystem.disabled`: Filesystem-Isolation unabhängig von Netzwerk-Egress-Kontrolle steuerbar
- Bugfix: Quadratisches Wachstum bei Message-Normalisierung in langen Sessions behoben (Performance-Problem)
- Bugfix: Auto Mode lehnte nach OAuth-Token-Ablauf Befehle mit "HTTP 401"-Classifier-Fehler ab

**v2.1.215** (19. Juli)
- Manuelle Skill-Aufrufe: `/verify` und `/code-review` direkt aufrufbar, ohne dass Claude sie automatisch startet

**v2.1.214** (18. Juli)
- Sicherheitsfixes: Kein unautorisierter Zugriff auf verschachtelte Verzeichnisse
- Windows PowerShell: Berechtigungs-Schlupflöcher geschlossen

### Claude Code KW29 (13. bis 17. Juli 2026) - Versionen v2.1.207 bis v2.1.212

Wichtigste neue Features dieser Woche:
- **Artifacts rufen MCP-Connectors auf**: Veröffentlichte Artifacts können bei jedem Seitenaufruf live Daten aus MCP-Connectors laden. Dashboards zeigen damit Echtzeit-Daten statt Snapshots aus der Entstehungs-Session. Viewer müssen Zugriff einmalig genehmigen.
- **Screen Reader Mode**: `--ax-screen-reader` oder `CLAUDE_AX_SCREEN_READER` Umgebungsvariable. Ersetzt visuelle Terminal-UI durch linearen Text für VoiceOver/NVDA.
- **`/fork` vs `/subtask`**: `/fork` kopiert die Konversation in eine neue Background-Session (eigene Zeile in `claude agents`). Bisheriges Verhalten ist jetzt `/subtask`.
- **Auto Mode ohne Opt-In**: Auf Amazon Bedrock, Google Cloud Agent Platform und Microsoft Foundry kein `CLAUDE_CODE_ENABLE_AUTO_MODE` mehr nötig. Admins können mit `disableAutoMode` deaktivieren.
- **MCP-Tool-Calls im Hintergrund**: Läuft ein MCP-Tool-Call länger als 2 Minuten, wandert er automatisch in den Hintergrund. Schwellenwert per `CLAUDE_CODE_MCP_AUTO_BACKGROUND_MS` einstellbar.
- **Session-Caps**: WebSearch- und Subagent-Aufrufe je Session standardmäßig auf 200 begrenzt (konfigurierbar).
- **"Always allow" im Repo-Root**: Permissions werden im Git-Repository-Stammverzeichnis gespeichert und gelten über Sessions und Worktrees hinweg.
- **Standard-Modell-Wechsel**: Amazon Bedrock, Google Cloud Agent Platform und Claude Platform on AWS setzen jetzt Claude Opus 4.8 als Standard.
- **Corporate Launcher**: `CLAUDE_CODE_PROCESS_WRAPPER` / `processWrapper`-Einstellung für Wrapper-Executables in regulierten Unternehmensumgebungen.
- **`vimInsertModeRemaps`**: Zwei-Tasten-Insert-Mode-Sequenzen wie `jj` auf Escape mappen.

---

## Blog / Ankuendigungen

### Voice Mode mit Modellauswahl (23. Juli 2026)
Anthropic hat den Voice Mode aktualisiert: Nutzer können jetzt zwischen Opus, Sonnet und Haiku wählen, wenn sie per Sprache mit Claude interagieren. Bisher war das Modell fest vorgegeben. Relevanzt für B2B: Sprach-Schnittstellen für Kundeninteraktion werden flexibler.

### Claude "Reflect" Dashboard (9. Juli 2026)
Neues eingebautes Dashboard, das zeigt, wie ein Nutzer Claude und KI-Tools einsetzt, inklusive Visualisierungen der eigenen KI-Gewohnheiten. Für Cowork OS potenziell interessant als Muster für eigene Nutzungsauswertung.

### Fable 5 Redeployment (ab 1. Juli 2026)
Fable 5 ist nach dem Ende der US-Exportbeschränkungen weltweit verfügbar. Anthropic hat neue Cybersecurity-Safeguards integriert und ein Branchen-Jailbreak-Bewertungsframework gemeinsam mit Amazon, Microsoft, Google und Glasswing-Partnern vorgestellt. HackerOne-Programm für Sicherheitsforscher gestartet. Für Unternehmen relevant als stärkstes öffentlich zugängliches Modell.

### Anthropic und Blackstone-Partnerschaft (15. Juli 2026)
Strategische Partnerschaft mit Schwerpunkt auf KI-Implementierung in Unternehmen, nicht auf Modellentwicklung. Signal: Der Markt verlagert sich von "welches Modell?" zu "wie implementieren?". Direkte Relevanz für B2B-Positioning von EXPAND.

### Claude Sonnet 5 als Standard-Modell
Sonnet 5 ist jetzt das Standardmodell auf Free und Pro Plänen. Preise: $2/1M Input-Token, $10/1M Output-Token (Einführungspreis bis 31. August 2026, danach $3/$15).

---

## Community-Highlights

- Lebhafte Diskussionen über live MCP Artifacts: Nutzer bauen interne Dashboards, die sich bei jedem Aufruf aktuell halten
- Manuelle Skill-Aufrufe (`/verify`, `/code-review`) als stark nachgefragte Qualitätssicherungs-Funktion
- Mehrere Threads zur Performance-Verbesserung in langen Sessions (v2.1.216-Fix)
- Reddit-Zugriff war für dieses Briefing gesperrt, Community-Daten aus Web-Suche aggregiert

---

## Relevanz fuer Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschaeftswert | Prioritaet |
|---|---|---|---|---|
| Artifacts mit live MCP-Daten (KW29) | Hoch | Stunden | Hoch | TOP |
| `/code-review` als Background-Subagent (v2.1.218) | Hoch | Minuten | Mittel | Hoch |
| Manuelle Skill-Aufrufe /verify /code-review (v2.1.215) | Hoch | Minuten | Mittel | Hoch |
| Session-Caps 200 WebSearch/Subagents (KW29) | Mittel | Minuten | Mittel | Mittel |
| "Always allow" im Repo-Root (KW29) | Hoch | Minuten | Mittel | Hoch |
| Sandbox Filesystem unabhaengig von Netzwerk (v2.1.216) | Mittel | Minuten | Niedrig | Niedrig |
| Auto Mode ohne Opt-In auf Bedrock/Foundry (KW29) | Niedrig | Minuten | Niedrig | Niedrig |
| vimInsertModeRemaps (KW29) | Niedrig | Minuten | Niedrig | Niedrig |
| Voice Mode mit Modellauswahl | Niedrig | Keine | Niedrig | Info |
| Fable 5 Redeployment mit Safety-Framework | Niedrig | Keine | Mittel | Info |
| Anthropic + Blackstone (Implementierungsfokus) | Mittel | Keine | Hoch | Beobachten |

---

## Empfohlene Aktionen

1. **Live-Artifact mit MCP-Connector testen**: Ein bestehendes Cowork-OS-Dashboard als Artifact neu bauen, das per GitHub-Connector live Pull Requests oder Issues zieht. Prompt-Muster: "Build a dashboard artifact of open pull requests that pulls the live list through my GitHub connector when the page loads." Aufwand: 1 bis 2 Stunden.

2. **`/code-review` als Standard-QS-Schritt einführen**: Da `/code-review` jetzt im Hintergrund läuft (v2.1.218), eignet es sich als automatisierter Schritt nach jedem größeren Code-Block. Kann in Skill-Definitionen als empfohlener Abschlussschritt ergänzt werden. Aufwand: 30 Minuten.

3. **"Always allow" Permissions im Repo-Root definieren**: `CLAUDE.md` um explizite Permission-Definitionen ergänzen, die dann repo-weit gelten. Reduziert Rückfragen in wiederkehrenden Workflows. Aufwand: 15 Minuten.

4. **Session-Caps prüfen**: Falls Workflows regelmäßig mehr als 200 Web-Suchen oder Subagents pro Session benötigen, jetzt `CLAUDE_CODE_MAX_WEB_SEARCHES_PER_SESSION` und `CLAUDE_CODE_MAX_SUBAGENTS_PER_SESSION` in `settings.json` setzen. Aufwand: 10 Minuten.

5. **Anthropic + Blackstone als Markt-Signal für Kundenansprache nutzen**: Die Partnerschaft signalisiert, dass "KI-Implementierung" als Kernkompetenz wichtiger wird als das Modell selbst. Passt direkt zur Positionierung von EXPAND B2B. Ueberlegung: Kundenmaterialien um dieses Framing ergaenzen.

---

## Keine Aktion noetig

- **Voice Mode mit Modellauswahl**: Kein direkter Einsatz im aktuellen Cowork OS vorgesehen.
- **Screen Reader Mode**: Keine Barrierefreiheitsanforderungen im aktuellen Scope.
- **Corporate Launcher / Process Wrapper**: Nur relevant in regulierten Enterprise-Umgebungen mit Wrapper-Anforderungen.
- **Fable 5 Safety-Framework und HackerOne**: Interessant als Branchen-Signal, keine direkte Implementierungsaufgabe.
- **Sonnet 5 Preisaenderung**: Erst ab 1. September 2026 relevant, bis dahin Einführungspreis aktiv.
- **`vimInsertModeRemaps`**: Persönliche Präferenz, kein Cowork-OS-Relevanz.

---

*Quellen: [Claude Code Docs What's New W29](https://code.claude.com/docs/en/whats-new/2026-w29) · [Gradually.ai Changelog](https://www.gradually.ai/en/changelogs/claude-code/) · [TechCrunch Voice Mode](https://techcrunch.com/2026/07/23/anthropic-updates-claude-voice-mode-with-more-capable-models/) · [TechCrunch Blackstone](https://techcrunch.com/2026/07/15/anthropic-blackstone-bet-the-next-trillion-dollar-ai-business-is-implementation-not-models/) · [Anthropic Newsroom](https://www.anthropic.com/news)*
