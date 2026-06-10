# Claude Intelligence Briefing - 2026-06-10

## Neue Releases

### Claude Code v2.1.170 (9. Juni 2026)
**Grösste Neuigkeit der Woche:** Claude Fable 5 ist jetzt das Standard-Modell in Claude Code.
- Transkript-Bug behoben: Sessions aus dem VS Code integrierten Terminal speichern Transkripte jetzt korrekt.

### Claude Code v2.1.169 (8. Juni 2026)
Starkes Release mit mehreren produktivitätsrelevanten Features:
- `--safe-mode` Flag: Startet Claude Code ohne alle Customizations (CLAUDE.md, Hooks, Skills) zum Troubleshooting.
- `/cd` Befehl: Working Directory wechseln ohne den Prompt Cache zu unterbrechen.
- `disableBundledSkills` Setting + `CLAUDE_CODE_DISABLE_BUNDLED_SKILLS` Env-Variable: Blendet eingebaute Skills und Slash-Commands aus dem Modell aus.
- `post-session` Lifecycle Hook für Self-hosted Runner.
- MCP-Policy-Fixes: `allowedMcpServers` / `deniedMcpServers` funktionieren jetzt korrekt.
- Bugfixes für Remote Control, Git Credential Manager (Windows), Background Sessions.

### Claude Code v2.1.166 (6. Juni 2026)
- `fallbackModel` Setting: Automatischer Modell-Fallback bei API-Überlastung konfigurierbar.
- Glob Pattern Support in Deny Rules: Präzisere Datei-Ausschlüsse in Sicherheitsregeln.
- JetBrains Rendering-Fixes.

---

## Blog / Ankündigungen

### Claude Fable 5 + Mythos 5 (9. Juni 2026)
Anthropic veröffentlicht sein bisher stärkstes öffentlich verfügbares Modell.
- Fable 5 ist ein Mythos-class Modell, zugelassen für den allgemeinen Einsatz.
- State-of-the-art auf fast allen Benchmarks: Software-Engineering, Wissensarbeit, Vision, wissenschaftliche Forschung.
- Kann länger autonom arbeiten als alle bisherigen Claude-Modelle.
- Preise: $10 / Mio. Input-Token, $50 / Mio. Output-Token (weniger als halb so teuer wie Mythos Preview).
- Safeguards: In Hochrisikobereichen (Cybersicherheit, Biologie, Chemie) fällt das Modell automatisch auf Opus 4.8 zurück.
- **Claude Mythos 5**: Gleiche Basis wie Fable 5, aber mit reduzierten Safeguards für zertifizierte Cyberdefender über Project Glasswing.

### Claude Partner Network: Services Track + Partner Hub (3. Juni 2026)
Anthropic formalisiert ein dreistufiges Zertifizierungssystem für Consulting-Firmen:
- **Select**: 10+ zertifizierte Mitarbeiter, 2+ Produktiv-Deployments, 1 Customer Story.
- **Preferred**: 100+ Zertifizierte, 15+ Deployments, 3 Customer Stories.
- **Global Premier**: 1.000+ Zertifizierte, 100+ Deployments in 3+ Regionen, 15 Customer Stories, Joint Business Plan.
- Seit dem Start (März 2026) haben über 40.000 Firmen beworben, 10.000+ Consultants zertifiziert.
- Der Partner Hub bietet ein öffentliches Verzeichnis für Enterprise-Käufer zur Anbieterauswahl.

### Claude Opus 4.8 (Ende Mai / Anfang Juni 2026)
- Stärker in Coding, Agentic Tasks und Wissensarbeit.
- Dynamic Workflows: Hunderte parallele Subagenten in einer einzigen Session planbar.
- 4x seltener werden Code-Fehler stillschweigend übersehen.
- Fast Mode: 2,5x schneller und 3x günstiger als bei Vorgängermodellen.
- Preise unverändert: $5 / Mio. Input, $25 / Mio. Output.
- Mid-conversation System Messages: System-Nachrichten können nun mitten in einer laufenden Session aktualisiert werden.

### Anthropic S-1 Einreichung bei der SEC (1. Juni 2026)
Anthropic hat vertraulich einen Börsenprospekt (Form S-1) für ein geplantes IPO eingereicht. Keine Zeitangabe zum Listing.

---

## Community-Highlights

**Ressourcen (nicht datiert, aber aktuell in Umlauf):**
- `shanraisshan/claude-code-best-practice`: Meistzitiertes Repository für Claude Code Patterns, wöchentlich aktualisiert.
- Best Practice der Woche: CLAUDE.md strikt unter 200 Zeilen halten, tiefere Regeln in `.claude/rules/*.md` mit `paths:` Globs auslagern.
- Empfehlung: Für jeden Workflow, der zweimal wiederholt wurde, einen eigenen Skill anlegen.
- Architektur-Konsens in der Community: Fünf Schichten (CLAUDE.md, MCP-Server, Skills, Hooks, Subagenten) bilden ein vollständiges produktives Setup.

**Quellen:**
- [Claude Code Changelog](https://code.claude.com/docs/en/changelog)
- [Claude Fable 5 Ankündigung](https://www.anthropic.com/news/claude-fable-5-mythos-5)
- [Claude Partner Network Services Track](https://www.anthropic.com/news/services-track-partner-hub)
- [Claude Opus 4.8](https://www.anthropic.com/news/claude-opus-4-8)
- [Claude Code Best Practices 2026](https://mcp.directory/blog/claude-code-best-practices)

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Claude Fable 5 als Standard in Claude Code | Hoch | Minuten (automatisch) | Hoch | **Sehr hoch** |
| `fallbackModel` Setting (v2.1.166) | Hoch | Minuten | Mittel | Hoch |
| `disableBundledSkills` Setting | Mittel | Minuten | Mittel | Mittel |
| `--safe-mode` für Troubleshooting | Mittel | Minuten | Niedrig | Mittel |
| `/cd` Befehl ohne Cache-Bruch | Mittel | Minuten | Niedrig | Mittel |
| Claude Partner Network (Services Track) | Hoch | Tage (Bewerbung + Zertifizierung) | Hoch | Hoch |
| Opus 4.8 Dynamic Workflows | Hoch | Stunden | Hoch | Hoch |
| Opus 4.8 Fast Mode (2,5x Speed, 3x günstiger) | Hoch | Minuten | Hoch | **Sehr hoch** |
| Anthropic S-1 / IPO-Plan | Niedrig | Keine | Niedrig | Beobachten |

---

## Empfohlene Aktionen

1. **Fable 5 testen (heute):** Claude Code ist bereits auf v2.1.170. Fable 5 steht zur Verfügung. Eine Benchmark-Session mit realen Cowork-OS-Aufgaben durchführen und mit Opus 4.8 vergleichen. Fokus auf Agentic Tasks und lange Workflows.

2. **`fallbackModel` in settings.json konfigurieren:** Sicherstellt, dass bei API-Lastspitzen kein Session-Abbruch stattfindet. Empfehlung: `"fallbackModel": "claude-opus-4-8"` in `.claude/settings.json` setzen.

3. **Opus 4.8 Fast Mode für B2B-Workflows evaluieren:** Für repetitive Aufgaben (Lead-Qualifizierung, E-Mail-Drafts) könnte Fast Mode den Durchsatz bei deutlich geringeren Kosten erhöhen. ROI-Rechnung erstellen.

4. **Claude Partner Network prüfen:** EXPAND B2B sollte die Select-Tier-Voraussetzungen prüfen (10 zertifizierte Mitarbeiter, 2 Produktiv-Deployments). Dies eröffnet Zugang zum Partner Hub und positioniert das Unternehmen als zertifizierten Anthropic-Partner gegenüber Enterprise-Klienten.

5. **`shanraisshan/claude-code-best-practice` Repo lesen:** Community-Konsens zu Setup-Architektur auffrischen. Besonders relevant: Glob-basierte Regeln in `.claude/rules/*.md`.

---

## Keine Aktion nötig

- **Anthropic S-1 / IPO:** Kein operativer Handlungsbedarf. Relevant als Hintergrundinformation für die strategische Einschätzung der Anthropic-Stabilität als Plattformpartner.
- **Project Glasswing / Mythos 5:** Für Cybersecurity-Zwecke relevant, nicht für B2B Sales Development.
- **`disableBundledSkills`:** Nützlich für spezialisierte Setups, aktuell kein Bedarf im Cowork OS.
- **`--safe-mode`:** Troubleshooting-Feature, kein täglicher Einsatz erforderlich.
