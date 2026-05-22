# Claude Intelligence Briefing - 2026-05-22

## Neue Releases

### Claude Code v2.1.148 (22. Mai 2026)
Bugfix-Release: Exit-Code-Regression aus v2.1.147 behoben. Bash-Tool lieferte fälschlicherweise Exit-Code 127, was Skript-Workflows unterbrochen hat.

### Claude Code v2.1.147 (21. Mai 2026)
Wichtigstes Release der Woche:
- `/code-review` ersetzt `/simplify` mit optionalem Effort-Level (`low` / `medium` / `high`) und `--comment`-Flag für GitHub PR Inline-Comments
- Background Sessions sind jetzt resumebar über `/resume`
- Bedrock/Vertex OAuth: Enterprise Login Restrictions werden durchgesetzt
- PowerShell Output Formatter-Fallback
- Auto-Updater-Fixes

### Claude Code v2.1.145-144 (19. Mai 2026)
- Agent View UI-Verbesserungen und JSON-Output-Option
- Background Sessions (`--bg`) jetzt in `/resume` sichtbar, mit Elapsed-Duration und `bg`-Label
- Pre-existing Worktrees werden von Background Sessions korrekt erkannt
- MCP-Pagination-Fix: bisher wurde nur die erste Seite paginieter MCP-Antworten geladen

### Claude Code v2.1.143 (15. Mai 2026)
- Plugin-Abhängigkeitsverwaltung: `claude plugin disable` verweigert bei abhängigen Plugins, `claude plugin enable` löst transitive Abhängigkeiten automatisch auf
- `worktree.bgIsolation: "none"` Einstellung für Background Sessions ohne EnterWorktree

### Claude Code v2.1.142 (14. Mai 2026)
- Fast Mode nutzt jetzt standardmäßig Opus 4.7 (vorher Opus 4.6)
- Fallback über `CLAUDE_CODE_OPUS_4_6_FAST_MODE_OVERRIDE=1` konfigurierbar

### Claude Code v2.1.139 (11. Mai 2026)
Grundlegendes Release:
- **Agent View** (Research Preview): `claude agents` zeigt alle laufenden, blockierten und abgeschlossenen Sessions in einer zentralen Übersicht
- **/goal Command**: Completion-Bedingung setzen, Claude arbeitet autonom über mehrere Turns bis Ziel erreicht, mit Live-Overlay (Dauer, Turns, Tokens)
- `/scroll-speed` Einstellung

---

## Blog und Ankündigungen

### Anthropic übernimmt Stainless (18. Mai 2026)
Anthropic kauft Stainless, das Unternehmen hinter allen offiziellen Anthropic SDKs und einem Großteil der MCP-Server-Tooling-Infrastruktur. Stainless generiert aus API-Spezifikationen fertige SDKs für TypeScript, Python, Go, Java und weitere Sprachen. Kunden waren bisher u.a. Cloudflare, Google und OpenAI.

Strategische Bedeutung: Anthropic bringt damit die SDK- und MCP-Infrastruktur unter eigene Kontrolle. Stainless stellt seine externe Plattform am 1. September 2026 ein, was Wettbewerber wie OpenAI zur Migration zwingt.

### Claude für kleine Unternehmen (13. Mai 2026)
Neues Angebot mit angepassten Preisplänen und Nutzerlimits speziell für KMU.

### Gates-Foundation-Partnerschaft (14. Mai 2026)
200 Millionen Dollar Partnerschaft für globale Gesundheit, Bildung und wirtschaftliche Mobilität über vier Jahre. Kein direkter Produktbezug.

### Enterprise-Partnerschaften (14.-19. Mai 2026)
KPMG (276.000 Mitarbeitende) und PwC integrieren Claude unternehmensbreit.

### Anthropic investiert 50 Milliarden in US-KI-Infrastruktur
Langfristiger Infrastruktur-Commitment der USA, keine kurzfristige Produktrelevanz.

---

## Community-Highlights

Die wichtigsten Diskussionsthemen diese Woche laut Tech-Blogs und Developer-Communities:

1. **Agent View als Paradigmenwechsel**: Entwickler beschreiben den Wechsel von "Chat-Assistent" zu "Autonomous Worker Dashboard". Mehrere parallele Sessions mit `/goal` und `/bg` gelten als neue Standardarbeitsweise für komplexe Projekte.

2. **/code-review mit PR-Comments**: Die `--comment`-Funktion (Inline-Comments direkt ins GitHub PR) wird als praktische Alternative zu separaten Review-Tools diskutiert.

3. **MCP-Pagination-Fix**: Stille aber wichtige Korrektur - viele MCP-Server-Integrationen haben bisher nur Teildaten geliefert ohne es zu bemerken.

4. **Stainless-Akquisition und Wettbewerb**: Community diskutiert, ob Anthropic damit einen strukturellen Vorteil bei SDK-Qualität und MCP-Server-Verbreitung aufbaut.

Quellen: [Geeky Gadgets](https://www.geeky-gadgets.com/claude-code-agent-view-update/), [ExplainX](https://explainx.ai/blog/anthropic-claude-code-agent-view-goal-command), [Claude Code Docs](https://code.claude.com/docs/en/agent-view)

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Agent View + /goal Command | Hoch | Minuten | Hoch | **Sehr hoch** |
| /code-review --comment (PR Inline) | Hoch | Minuten | Mittel | **Hoch** |
| Background Sessions Resume | Hoch | Minuten | Mittel | **Hoch** |
| Plugin-Abhängigkeitsverwaltung | Mittel | Minuten | Mittel | Mittel |
| MCP-Pagination-Fix | Hoch | keine (automatisch) | Hoch | **Sofort prüfen** |
| Fast Mode auf Opus 4.7 | Mittel | keine | Mittel | Mittel |
| Stainless-Akquisition | Niedrig | keine | Mittel (langfristig) | Beobachten |
| Claude für KMU | Mittel | Stunden | Hoch | Mittel |
| KPMG/PwC Enterprise-Deals | Niedrig | keine | Niedrig | Keine |

---

## Empfohlene Aktionen

1. **Agent View testen**: `claude agents` ausführen und prüfen, ob bestehende EXPAND B2B Workflows von parallelen Background Sessions profitieren. Besonders für längere Recherche- und Briefing-Generierungsläufe geeignet.

2. **/goal für automatisierte Briefings einsetzen**: `/goal` als Completion-Bedingung für diesen Intelligence-Scout-Workflow definieren, sodass der gesamte Ablauf ohne manuelle Turns durchläuft.

3. **MCP-Pagination prüfen**: Falls MCP-Server im Cowork OS eingebunden sind, prüfen ob bisherige Abfragen vollständige Daten geliefert haben. Der Fix in v2.1.144 war still und kann bisherige Ergebnisse unvollständig gemacht haben.

4. **/code-review --comment in PR-Workflow einbinden**: Bei GitHub-basierten Projekten direkt als Schritt vor dem Merge einsetzen. Effort-Level `medium` als Standard empfohlen.

5. **Claude für KMU evaluieren**: Als Argument in B2B-Gesprächen mit mittelständischen Kunden nutzen. Neuer Einstiegspunkt für kleinere Unternehmen ohne Enterprise-Budget.

---

## Keine Aktion nötig

- **Gates-Foundation-Partnerschaft**: Kein Produktbezug für Cowork OS.
- **KPMG/PwC-Deals**: Signalwert für Enterprise-Akzeptanz, aber keine direkte Relevanz.
- **Anthropic 50-Mrd.-Infrastruktur-Commitment**: Langfristiger Trend, keine kurzfristige Konsequenz.
- **Fast Mode Opus 4.7 Upgrade**: Läuft automatisch, kein Eingriff nötig. Fallback nur bei Kosten-Problemen relevant.
- **Stainless-Plattform-Einstellung (Sept. 2026)**: Betrifft nur Stainless-Kunden direkt, nicht Anthropic SDK-Nutzer.
