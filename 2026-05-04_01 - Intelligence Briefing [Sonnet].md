# Claude Intelligence Briefing - 2026-05-04

## Neue Releases

### Claude Code v2.1.126 (1. Mai 2026)
- **Model Picker via Gateway**: Der `/model`-Picker zeigt jetzt alle Modelle vom `/v1/models`-Endpoint wenn `ANTHROPIC_BASE_URL` auf ein kompatibles Gateway zeigt. Wichtig für Enterprise-Deployments mit eigenem API-Gateway.
- **Bild-Downscaling auf Paste**: Bilder größer als 2000px werden beim Einfügen automatisch herunterskaliert. Vorher brach das die Session.
- **OAuth-Fix**: Login-Timeout bei langsamen oder Proxy-Verbindungen behoben. Relevant für Unternehmensumgebungen.

### Claude Code v2.1.120 (Ende April 2026)
- **Windows ohne Git Bash**: PowerShell ist jetzt die primäre Shell auf Windows. Git Bash nicht mehr erforderlich.
- **`claude ultrareview`**: Nicht-interaktives Code-Review aus CI/Scripts heraus. Startet eine Flotte von Bug-Hunting-Agenten in der Cloud.
- **`${CLAUDE_EFFORT}` in Skills**: Skills können auf den konfigurierten Effort-Level zugreifen und ihr Verhalten entsprechend anpassen.

### Claude Code v2.1.114-119 (Woche 17: 20.-24. April 2026)
- **`/ultrareview` Research Preview**: Multi-Agenten-Code-Review in der Cloud. Ergebnisse landen automatisch in CLI oder Desktop. Nutzung: `/ultrareview` für aktuellen Branch, `/ultrareview 1234` für PR.
- **Session Recap**: Nach Fokuswechsel zeigt Claude Code eine Ein-Zeilen-Zusammenfassung was passiert ist. Manuell abrufbar via `/recap`.
- **Custom Themes**: Eigene Farbthemen über `/theme` oder JSON-Dateien in `~/.claude/themes/`. Plugins können Themes mitliefern.
- **Web-Redesign**: `claude.ai/code` mit neuem Layout: Sessions-Sidebar, Drag-and-Drop, überarbeitete Routines-Ansicht.
- **Hooks können MCP-Tools aufrufen**: Via `type: "mcp_tool"` in Hooks, ohne separaten Prozess zu starten.
- **Standard Effort auf `high` angehoben**: Für Pro- und Max-Abonnenten auf Opus 4.6 und Sonnet 4.6.
- **`/usage` ersetzt `/cost` + `/stats`**: Alte Namen funktionieren noch als Shortcuts.
- **GitLab/Bitbucket-Support für `--from-pr`**: Nicht mehr nur GitHub.

---

## Blog/Ankündigungen

### Claude Mythos Preview + Project Glasswing (Mai 2026)
Anthropic hat Claude Mythos Preview veröffentlicht, ein General-Purpose-Modell mit außergewöhnlichen Fähigkeiten bei Cybersecurity-Aufgaben. Das Modell hat autonom eine 17 Jahre alte Remote Code Execution-Lücke in FreeBSD identifiziert und ausgenutzt. In den letzten Wochen wurden damit tausende Zero-Day-Schwachstellen in allen major Betriebssystemen und Browsern gefunden.

Als Reaktion wurde Project Glasswing gestartet: ein Programm zur Absicherung kritischer Software mit Mythos Preview. Launch-Partner sind AWS, Apple, Broadcom, Cisco, CrowdStrike, Google, JPMorganChase, Linux Foundation, Microsoft, NVIDIA und Palo Alto Networks. Zugang über Claude API, Bedrock, Vertex AI und Microsoft Foundry zu $25/$125 pro Million Input/Output-Tokens.

**Relevanz**: Kein direkter Einsatz im Cowork OS, aber zeigt die Richtung: KI-gestütztes Security-Review wird Standard. `/ultrareview` ist bereits der erste Schritt in dieser Richtung für Entwickler.

### Anthropic Series G: $30 Mrd. bei $380 Mrd. Bewertung
Anthropic hat eine Series-G-Finanzierungsrunde über 30 Milliarden Dollar abgeschlossen. Post-Money-Bewertung: 380 Milliarden Dollar. Investitionen fließen in US-KI-Infrastruktur ($50 Mrd. angekündigt) und globale Expansion (aktuell: Bengaluru, Indien).

**Relevanz**: Signalisiert langfristige Stabilität des Claude-Ökosystems. Keine unmittelbare Aktion erforderlich.

### The Briefing: Financial Services (5. Mai 2026)
Anthropic-Event für Führungskräfte im Finanzsektor. Schwerpunkt: KI-Transformation und Claude-Deployments im Unternehmensmaßstab. Für EXPAND B2B interessant als Referenz für Enterprise-Use-Cases.

---

## Community-Highlights

- **r/ClaudeCode** hat 4.200+ wöchentliche Mitwirkende (3x mehr als r/Codex). Aktivste KI-Coding-Community auf Reddit.
- **Konsens zu Workflows**: CLAUDE.md, Subagents, Hooks und Slash Commands belohnen deliberate Nutzung. Wer Claude Code wie Autocomplete behandelt, verlässt die Community frustriert.
- **Utah-Pilot-Studie**: 77% der Entwickler sahen Nutzen innerhalb einer Stunde. 30% berichteten 30%+ schnellere Arbeit. 40+ Stunden gespart in vier Wochen.
- **Community-Strategie**: Claude Code für komplexe Multi-File-Änderungen. Günstigere Tools (Copilot, lokale Modelle) für einfache Single-File-Edits.

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| `/ultrareview` für Code-Review in CI | Hoch | Stunden | Hoch | Hoch |
| Hooks können MCP-Tools aufrufen | Hoch | Minuten | Mittel | Hoch |
| Custom Themes für Team-Branding | Mittel | Minuten | Niedrig | Mittel |
| Session Recap (`/recap`) | Mittel | Minuten | Mittel | Mittel |
| `${CLAUDE_EFFORT}` in Skills | Mittel | Stunden | Mittel | Mittel |
| `--from-pr` für GitLab/Bitbucket | Niedrig | Minuten | Niedrig | Niedrig |
| Project Glasswing / Mythos | Niedrig | Tage | Mittel | Niedrig |
| Anthropic Expansion nach Indien | Niedrig | keiner | Niedrig | Niedrig |

---

## Empfohlene Aktionen

1. **`/ultrareview` testen**: Als Research Preview verfügbar. Direkt für Code-Reviews vor kritischen Merges einsetzen. Befehl: `/ultrareview` (aktueller Branch) oder `/ultrareview <PR-Nummer>`. Aufwand: 30 Minuten zum Ausprobieren.

2. **Hooks auf MCP-Tool-Aufrufe umstellen**: Bestehende Hooks die externe Prozesse starten können via `type: "mcp_tool"` direkter an MCP-Server angebunden werden. Reduziert Latenz und Komplexität. Aufwand: 1-2 Stunden für Review und Umbau vorhandener Hooks.

3. **`/usage` statt `/cost` und `/stats`**: In internen Dokumentationen und CLAUDE.md-Dateien Referenz aktualisieren. `/cost` und `/stats` funktionieren noch, werden aber langfristig entfernt.

4. **Standard-Effort prüfen**: Pro/Max-Abonnenten haben jetzt `high` als Standard. Prüfen ob das in kostensensitiven Workflows angepasst werden sollte (via `/effort` oder `defaultEffort` in settings.json).

---

## Keine Aktion nötig

- **Windows PowerShell-Integration**: Nur relevant für Windows-Entwickler im Team.
- **Bild-Paste-Fix**: Bugfix, verbessert automatisch.
- **Claude Mythos / Project Glasswing**: Kein direkter Zugang ohne Glasswing-Partnerschaft. Beobachten.
- **Anthropic Finanzierung**: Kein Handlungsbedarf.
- **The Briefing Financial Services**: Informationell, kein Follow-up erforderlich.

---

*Quellen: [Claude Code Changelog](https://code.claude.com/docs/en/changelog) | [What's New Week 17](https://code.claude.com/docs/en/whats-new/2026-w17) | [Project Glasswing](https://www.anthropic.com/project/glasswing) | [Anthropic News](https://www.anthropic.com/news) | [GitHub Releases](https://github.com/anthropics/claude-code/releases)*
