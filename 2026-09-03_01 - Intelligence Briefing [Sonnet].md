# Claude Intelligence Briefing - 2026-09-03

## Neue Releases

### v2.1.259 (02.09.2026)
- **`managedMcpServers`**: Organisationen können HTTP/SSE MCP-Server zentral fuer alle Nutzer bereitstellen, statt jede Session einzeln zu konfigurieren.
- **`--permission-prompts none`**: Neues Flag fuer unbeaufsichtigte Headless-Hosts. Unterdrueckt Genehmigungs-Prompts bei automatisierten Laeufen vollstaendig.
- **GitLab Merge Request-Erkennung**: MR-Nummern (MR !N) werden jetzt korrekt angezeigt.
- **`--json` Flag fuer `claude plugin validate`**: Maschinenlesbare Ausgabe fuer Plugin-Validierung.
- Fixes: Gleichzeitige Sessions ueberschrieben sich gegenseitig Aenderungen in `~/.claude.json`, Prompt-Cache-Invalidierung bei OAuth-Token-Refresh mit deaktivierter Telemetrie, leerer Transcript im Fullscreen-Modus nach langen Turns.

### v2.1.258 (01.09.2026)
- **Kritischer Fix**: Claude Code startete nicht mehr auf macOS 12 Monterey (Regression aus v2.1.255).
- **Fix**: Remote- und Scheduled Sessions scheiterten nach Genehmigungs-Freigabe mit Fehler "user messages must have non-empty content". Dieser Fix betrifft direkt scheduled Tasks wie diesen Intelligence Scout.

### v2.1.257 (01.09.2026)
- **Claude Fable 5.1** als neues Standard-Fable-Modell: 1 Mio. Token Kontext, 10 Dollar pro Mtok Input, 50 Dollar pro Mtok Output.
- **Zeitformat-Einstellungen**: Neue `timeZone`-Option und "Time format"-Einstellung (12h, 24h, UTC oder eigenes strftime-Muster).
- **Containment Escape Rule**: Neue Sicherheitsregel im Auto-Mode gegen Cloud-Metadata- und Egress-Umgehungsversuche.
- **`CLAUDE_CODE_SUBAGENT_MODEL_FORCE`**: Umgebungsvariable zur erzwungenen Modellwahl fuer Subagenten.
- **`/doctor` Warnung**: Erkennt veraltete Sandbox-Mask-Dateien.

---

## Blog/Ankuendigungen

anthropic.com/news war heute ueber den Netzwerk-Proxy nicht erreichbar (Egress-Policy blockiert die Domain). Keine verifizierten Neuigkeiten aus diesem Kanal fuer diesen Lauf.

---

## Community-Highlights

r/ClaudeCode war heute ueber den Netzwerk-Proxy nicht erreichbar (Egress-Policy blockiert reddit.com). Keine verifizierten Community-Highlights fuer diesen Lauf.

---

## Relevanz fuer Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschaeftswert | Prioritaet |
|---|---|---|---|---|
| `managedMcpServers` (v2.1.259) | Hoch | Stunden | Hoch | Hoch |
| `--permission-prompts none` (v2.1.259) | Hoch | Minuten | Mittel | Hoch |
| Fix scheduled sessions (v2.1.258) | Hoch | Keine (Update) | Hoch | Hoch |
| Containment Escape Rule (v2.1.257) | Hoch | Keine (automatisch) | Hoch | Hoch |
| Zeitformat/`timeZone` (v2.1.257) | Mittel | Minuten | Mittel | Mittel |
| `CLAUDE_CODE_SUBAGENT_MODEL_FORCE` (v2.1.257) | Mittel | Minuten | Mittel | Mittel |
| Fable 5.1 Standardmodell (v2.1.257) | Mittel | Minuten | Mittel | Mittel |
| `--json` fuer plugin validate (v2.1.259) | Niedrig | Minuten | Niedrig | Niedrig |
| GitLab MR-Erkennung (v2.1.259) | Niedrig | Keine | Niedrig | Niedrig |
| macOS 12 Fix (v2.1.258) | Niedrig | Keine (Update) | Niedrig | Niedrig |

---

## Empfohlene Aktionen

1. **Update auf v2.1.259 durchfuehren** (heute): Der Fix fuer scheduled Sessions in v2.1.258 betrifft genau die Art von automatisiertem Lauf, mit dem dieses Briefing erstellt wird. Sicherstellen, dass alle Cowork OS Instanzen aktuell sind.

2. **`--permission-prompts none` fuer den Intelligence Scout evaluieren** (diese Woche): Fuer den taeglichen Briefing-Job pruefen, ob dieses Flag den Lauf zuverlaessiger macht, ohne Sicherheitsrisiken bei den Bash-Aufrufen einzugehen.

3. **`managedMcpServers` fuer EXPAND B2B pruefen** (diese Woche): Falls mehrere Klienten-Workspaces dieselben MCP-Server (z. B. GitHub) nutzen, koennte eine zentrale Konfiguration den Setup-Aufwand pro Workspace deutlich reduzieren.

4. **`timeZone`-Einstellung auf Europe/Berlin setzen** (naechste Gelegenheit): Sorgt fuer korrekte Zeitstempel in Reports und Briefings fuer deutsche Klienten.

---

## Keine Aktion noetig

- **GitLab MR-Erkennung**: EXPAND B2B nutzt GitHub, nicht GitLab.
- **`--json` fuer plugin validate**: Nur relevant bei eigener Plugin-Entwicklung.
- **macOS 12 Fix**: Kein bekanntes macOS 12 Deployment bei EXPAND B2B.
- **Fable 5.1 als Standardmodell**: Kein akuter Bedarf an 1-Mio-Token-Kontext in aktuellen Workflows, im Auge behalten fuer grosse Dokumentenanalysen.

---

## Hinweis zu diesem Lauf

GitHub Releases und der offizielle Changelog waren erreichbar. anthropic.com und reddit.com waren durch die Netzwerk-Egress-Policy dieser Session blockiert und wurden gemaess Anweisung uebersprungen.

*Quellen: github.com/anthropics/claude-code/releases | code.claude.com/docs/en/changelog | Generiert: 2026-09-03 | Modell: Sonnet 5*
