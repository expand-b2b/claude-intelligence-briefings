# Claude Intelligence Briefing - 2026-05-19

## Neue Releases

### Claude Code v2.1.144 (19. Mai 2026)
- `/resume` unterstützt jetzt Background Sessions
- Elapsed Duration in Hintergrund-Benachrichtigungen (Format: "3h 2m 5s")
- `/plugin` zeigt letztes Update-Datum
- `/model` ändert nur die aktuelle Session (neuer Standard per `d`)
- Terminal-Rendering-Fixes: Startup-Verzögerungen, Cursor-Korruption, Output-Glitches behoben
- MCP-Server mit paginierten Responses repariert

### Claude Code v2.1.143 (15. Mai 2026)
- Plugin Dependency Enforcement: `claude plugin disable` verweigert bei abhängigen Plugins
- Projected Context Cost im `/plugin` Marketplace sichtbar
- `worktree.bgIsolation: "none"` für direkte Edits in Working Copies
- Background Sessions behalten Model und Effort-Level nach Idle bei

### Claude Code v2.1.142 (14. Mai 2026)
- `claude agents` erhält neue Flags: `--add-dir`, `--settings`, `--mcp-config`, `--plugin-dir`
- Fast Mode läuft jetzt auf Opus 4.7 (vorher Opus 4.6)
- Plugin Root-Level `SKILL.md` wird automatisch als Skill erkannt

### Claude Code v2.1.139 (11. Mai 2026) - Major Release
- **Agent View** (Research Preview): `claude agents` als zentrale Session-Übersicht
- **`/goal` Command:** Definiert Completion Conditions mit Live-Overlay-Anzeige
- Hook `args: string[]` unterstützt Exec-Form ohne Shell
- MCP Stdio Servers erhalten `CLAUDE_PROJECT_DIR` als Umgebungsvariable
- API Header `x-claude-code-agent-id` für Subagent Tracking

---

## Blog und Ankündigungen

### Anthropic übernimmt Stainless
Stainless ist führend in SDK-Entwicklung und MCP-Server-Tooling. Die Akquisition signalisiert, dass Anthropic den Agent-Bereich konsequent in die Plattform integriert. MCP-Tooling wird damit offiziell Teil des Anthropic-Stacks.

### Claude für Small Business
Anthropic hat ein dediziertes Angebot für kleine Unternehmen gestartet. Konkrete Preise und Feature-Details noch nicht vollständig veröffentlicht.

### Gates Foundation Partnerschaft (200 Mio. USD)
Anthropic stellt Fördermittel, Claude-Credits und technischen Support für Programme in globaler Gesundheit, Bildung und Mobilität bereit. Keine direkte Produkt-Relevanz, aber stärkt die institutionelle Glaubwürdigkeit.

### 50-Milliarden-Investment in US-KI-Infrastruktur
Rechenzentren mit Fluidstack in Texas und New York. Mittelfristig relevant für API-Verfügbarkeit und Kapazität.

### The Anthropic Institute (gestartet 7. Mai 2026)
Forschungsinstitut zur Untersuchung gesellschaftlicher KI-Auswirkungen aus der Innenperspektive eines Frontier-Labs. Kein direkter Produktbezug.

### Enterprise AI Services mit Blackstone, Hellman & Friedman, Goldman Sachs
Anthropic baut eine neue Enterprise-AI-Services-Gesellschaft mit drei großen Investoren. Zeigt klare B2B-Ausrichtung.

---

## Community-Highlights

**Quelle: r/ClaudeCode (4.200+ wöchentliche Beitragende)**

- **Opus 4.7 Halluzinationsproblem** (Thread: "Gaslightus 4.7", 1.700 Upvotes): Nutzer berichten, dass Opus 4.7 Dateien erfindet, halluzinierte Testergebnisse über 10 Turns verteidigt und harmlose Dateien fälschlich als Malware markiert. Bekanntes Risiko für Produktivsysteme.
- **CLAUDE.md und Hooks als Differenzierungsmerkmal:** Nutzer mit ausgearbeiteten Setups (CLAUDE.md, Subagents, Hooks, Slash Commands) berichten deutlich höhere Produktivität. Nutzer ohne Setup-Investition frustriert.
- **Usage Limits im Pro-Plan:** Pro-Plan ($20/Monat) erschöpft sich bei intensiver Nutzung nach etwa 12 schweren Prompts. Entwickler wechseln mid-session zu Alternativen.
- **Claude Code vs. Codex:** 67% Win-Rate für Claude Code in Blind-Tests. Häufigste Empfehlung: beide Tools parallel nutzen.
- **Top Use Cases:** Debugging mit erklärendem Reasoning, große Codebasen über 200k Context, Git-Automation, CI/CD-Pipeline-Arbeit, SaaS-Prototyping, Dokumentenautomatisierung mit Playwright.

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Agent View + `/goal` Command | Hoch | Stunden | Hoch | Hoch |
| `/resume` für Background Sessions | Hoch | Minuten | Mittel | Hoch |
| Plugin Dependency Enforcement | Mittel | Minuten | Mittel | Mittel |
| Projected Context Cost im Marketplace | Mittel | keine (automatisch) | Mittel | Hoch |
| Fast Mode auf Opus 4.7 | Mittel | Minuten | Mittel | Mittel |
| `SKILL.md` als automatischer Skill | Hoch | Minuten | Hoch | Hoch |
| Stainless-Akquisition (MCP-Tooling) | Mittel | Tage (Beobachtung) | Hoch | Mittel |
| Claude für Small Business | Hoch | Stunden | Hoch | Hoch |
| Opus 4.7 Halluzinationen (Risiko) | Hoch | Minuten (Konfiguration) | Hoch | Dringend |
| Enterprise AI Services Gesellschaft | Niedrig | keine | Mittel | Niedrig |

---

## Empfohlene Aktionen

1. **Opus 4.7 in Produktivsetups absichern:** Da Opus 4.7 laut Community zu Halluzinationen neigt, explizit in kritischen Workflows auf Sonnet 4.6 oder Sonnet 4.7 pinnen. `/model`-Befehl nutzen oder in CLAUDE.md festlegen.

2. **Agent View testen (`claude agents`):** Das neue Feature ist in Research Preview. Direkt im Cowork-OS-Kontext ausprobieren: Mehrere Background Sessions parallel steuern, `/goal` für Completion Conditions einsetzen.

3. **`SKILL.md` im Plugin Root prüfen:** Bestehende Plugins können jetzt eine Root-Level `SKILL.md` haben, die automatisch erkannt wird. Eigene Plugins entsprechend aktualisieren.

4. **Claude für Small Business evaluieren:** Sobald Preise und Features vollständig veröffentlicht, als Angebot für EXPAND-B2B-Klienten prüfen. Möglicherweise günstiger Einstieg für KMU-Kunden.

5. **`/resume`-Feature für laufende Briefing-Workflows nutzen:** Background Sessions können jetzt fortgesetzt werden. Relevant für automatisierte Briefing-Generierung bei längeren Laufzeiten.

---

## Keine Aktion nötig

- Gates Foundation Partnerschaft: Kein Produktbezug, nur Reputationsgewinn für Anthropic.
- $50 Mrd. Infrastruktur-Investment: Langfristiger Kapazitätsaufbau, keine unmittelbare Auswirkung auf API-Nutzung.
- The Anthropic Institute: Grundlagenforschung, kein direkter Handlungsbedarf.
- Enterprise AI Services Gesellschaft: B2B-Positionierung von Anthropic, für EXPAND B2B erst relevant wenn konkrete Partnerschaftsangebote folgen.

---

*Quellen: github.com/anthropics/claude-code/releases, anthropic.com/news, r/ClaudeCode*
