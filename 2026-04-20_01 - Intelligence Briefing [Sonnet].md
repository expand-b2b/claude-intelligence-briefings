# Claude Intelligence Briefing - 2026-04-20

## Neue Releases

### v2.1.114 (18.04.2026) - innerhalb 48h
**Absturzfix:** Permission-Dialog stürzte ab, wenn ein Agent-Teams-Teammitglied eine Tool-Berechtigung anforderte. Relevant für alle, die Agent-Teams einsetzen.

### v2.1.113 (17.04.2026) - knapp außerhalb 48h, dennoch aktuell
Umfangreiches Release mit zahlreichen Änderungen:

**Architektur:**
- CLI startet jetzt ein natives Binary (plattformspezifische optionale Abhängigkeit) statt gebündeltem JavaScript. Schnellerer Start, sauberere Updates.

**Neue Einstellungen:**
- `sandbox.network.deniedDomains`: Sperrt bestimmte Domains auch wenn ein breiter Wildcard-Eintrag in `allowedDomains` sie sonst erlauben würde.

**Neue Befehle und Skills:**
- `/ultrareview`: Startet eine umfassende Code-Review in der Cloud via paralleler Multi-Agenten-Analyse. Aufruf ohne Argumente für den aktuellen Branch, oder `/ultrareview <PR#>` für einen spezifischen GitHub-PR.
- `/less-permission-prompts` (auch verfügbar als `/fewer-permission-prompts`): Scannt Transcripts auf häufige read-only Bash- und MCP-Aufrufe und schlägt eine priorisierte Allowlist für `.claude/settings.json` vor. Reduziert Bestätigungs-Dialoge im Arbeitsalltag.

**Sicherheit:**
- Bash-Deny-Regeln greifen jetzt auch für Befehle, die in `env`/`sudo`/`watch`/`ionice`/`setsid` und ähnliche Wrapper eingebettet sind.
- `Bash(find:*)` Allowlist-Regeln genehmigen nicht mehr automatisch `find -exec`/`-delete`.
- macOS: `/private/{etc,var,tmp,home}`-Pfade gelten jetzt als gefährliche Löschziele unter `Bash(rm:*)`.

**Agent-Teams / Subagenten:**
- Subagenten, die mitten im Stream ins Stocken geraten, scheitern nach 10 Minuten mit einer klaren Fehlermeldung statt endlos zu hängen.
- Fix für MCP concurrent-call Timeout-Handling (Nachricht für einen Tool-Call deaktivierte stumm den Watchdog eines anderen).

**UX-Verbesserungen:**
- Verbesserter `/loop`: Esc bricht ausstehende Wakeups ab; Wakeups zeigen jetzt "Claude resuming /loop wakeup" zur Klarheit.
- Remote Control: Clients können jetzt `@`-Datei-Autocomplete-Vorschläge abfragen.
- `/extra-usage` funktioniert jetzt von Remote Control (Mobil/Web) aus.
- Lange URLs in Antworten und Bash-Ausgaben bleiben anklickbar, auch wenn sie über mehrere Zeilen umbrechen (in Terminals mit OSC 8 Hyperlinks).

**Fixes:**
- Markdown-Tabellen brechen nicht mehr wenn eine Zelle einen Inline-Code-Span mit Pipe-Zeichen enthält.
- `/copy` "Full response" richtet Markdown-Tabellenspalten jetzt korrekt für GitHub, Notion und Slack aus.

### v2.1.111 (16.04.2026)
- **Opus 4.7 xhigh Effort-Level:** Neues Level zwischen "high" und "max", einstellbar via `/effort`, `--effort` oder Model-Picker.
- **Auto-Modus für Max-Abonnenten:** Ohne `--enable-auto-mode` Flag, direkt verfügbar.
- **Plan-Dateien:** Jetzt nach Prompt benannt (z.B. `fix-auth-race-snug-otter.md`) statt zufälliger Wörter.
- **Windows PowerShell Tool:** Schrittweiser Rollout; auf Linux/Mac via `CLAUDE_CODE_USE_POWERSHELL_TOOL=1` aktivierbar (erfordert `pwsh` im PATH).

### v2.1.110 (15.04.2026)
- **`/tui fullscreen`:** Flimmerfreies Rendering in derselben Konversation.
- **Push-Benachrichtigungen:** Claude kann Mobile-Push-Benachrichtigungen senden, wenn Remote Control und "Push when Claude decides" konfiguriert sind.
- **`autoScrollEnabled`:** Neues Config-Flag zum Deaktivieren des Auto-Scrolls im Fullscreen-Modus.

---

## Blog/Ankündigungen

Anthropic-Newsseite war zum Zeitpunkt des Briefings nicht erreichbar (Host nicht in Allowlist). Keine verifizierten Blogbeiträge für heute.

---

## Community-Highlights

Reddit r/ClaudeCode war zum Zeitpunkt des Briefings nicht erreichbar (Host nicht in Allowlist). Community-Trends basieren auf Release-Reaktionen:

- v2.1.111 erhielt 169 Reaktionen (+1, Herz, Rakete) und ist damit das meistdiskutierte Release der Woche. Der Opus 4.7 xhigh-Effort und Auto-Modus ohne Flag-Pflicht treiben das Interesse.
- `/ultrareview` und `/less-permission-prompts` als neue Skills werden in der Community stark erwartet.
- Sicherheits-Fixes bei `find -exec` und Wrapper-Befehlen dürften für Teams mit strikten Bash-Allowlists relevant sein.

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| `/less-permission-prompts` Skill | Hoch | Minuten | Hoch | Hoch |
| `sandbox.network.deniedDomains` | Hoch | Minuten | Mittel | Hoch |
| `/ultrareview` für PR-Reviews | Hoch | Minuten | Hoch | Hoch |
| Subagenten-Timeout nach 10 min | Hoch | Null (automatisch) | Hoch | Hoch |
| Bash-Sicherheits-Fixes (find, sudo) | Hoch | Minuten (Settings prüfen) | Hoch | Hoch |
| Natives Binary (v2.1.113) | Mittel | Null (automatisch) | Mittel | Mittel |
| Auto-Modus ohne Flag | Mittel | Minuten | Mittel | Mittel |
| Opus 4.7 xhigh Effort | Mittel | Minuten | Mittel | Mittel |
| Push-Benachrichtigungen | Niedrig | Stunden | Niedrig | Niedrig |
| PowerShell Tool (Windows) | Niedrig | Stunden | Niedrig | Niedrig |

---

## Empfohlene Aktionen

1. **Sofort: `/less-permission-prompts` ausführen** in aktiven Cowork-OS-Projekten. Der Skill analysiert Transcripts und erstellt eine `.claude/settings.json`-Allowlist. Spart täglich Dutzende Klick-Bestätigungen.

2. **Sofort: `sandbox.network.deniedDomains` in settings.json prüfen** und ggf. unerwünschte Domains explizit sperren, auch wenn ein Wildcard-Eintrag in `allowedDomains` vorhanden ist. Sicherheitslücke geschlossen.

3. **Diese Woche: Bash-Deny-Regeln auditieren.** Da `env`/`sudo`/`watch`/`ionice` jetzt ebenfalls von Deny-Regeln erfasst werden, bestehende Allowlist-Einträge auf Wrapper-Befehle prüfen. Sicherheitsrelevant für alle B2B-Umgebungen.

4. **Diese Woche: `/ultrareview` testen** für laufende Branches oder PRs. Multi-Agenten-Review in der Cloud ist ein wertvolles Feature für Qualitätssicherung in Kundenprojekten.

5. **Nächste Woche: Agent-Teams-Setup auf v2.1.114 aktualisieren** (wenn nicht auto-update aktiv) um den Permission-Dialog-Absturz zu vermeiden.

---

## Keine Aktion nötig

- **Natives Binary (v2.1.113):** Änderung ist transparent, kein Handlungsbedarf.
- **Plan-Datei-Umbenennung (v2.1.111):** Kosmetisch, keine Konfigurationsänderung nötig.
- **`autoScrollEnabled` (v2.1.110):** Nur relevant bei expliziten UX-Präferenzen, Standard bleibt aktiviert.
- **Windows PowerShell Tool:** Nicht relevant für Linux/Mac-basierte Cowork-OS-Setups.
- **Push-Benachrichtigungen:** Erst prüfen wenn Remote Control produktiv genutzt wird.
