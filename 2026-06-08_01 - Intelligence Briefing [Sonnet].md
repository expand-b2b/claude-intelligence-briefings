# Claude Intelligence Briefing - 2026-06-08

## Neue Releases

### Claude Code v2.1.163 bis v2.1.168 (04.-06. Juni 2026)

Fünf Releases in drei Tagen. Zwei davon mit substanziellen Features:

**v2.1.166 (06. Juni) - Feature-Release:**
- `fallbackModel` Setting: Bis zu 3 Fallback-Modelle bei API-Überlastung konfigurierbar
- Glob-Pattern Support in Deny-Regeln: `"*"` deaktiviert alle Tools auf einmal
- Thinking deaktivierbar: `MAX_THINKING_TOKENS=0` oder `--thinking disabled`
- Cross-Session Messaging gehärtet (Relayed Permissions blockiert)
- Remote Sessions Freezing behoben
- PowerShell Validation Hangup behoben

**v2.1.163 (04. Juni) - Feature-Release:**
- `requiredMinimumVersion` / `requiredMaximumVersion` in Managed Settings für Version-Enforcement
- `/plugin list` Command mit Filtern
- Hooks: `additionalContext` Return-Werte für Stop/SubagentStop Hooks
- Background Sessions Memory Loss behoben
- Bash Hook Conditions für `$()` und `$VAR` korrigiert

**v2.1.165, v2.1.167, v2.1.168:** Nur Bug Fixes und Stabilitätsverbesserungen.

Quelle: [github.com/anthropics/claude-code/releases](https://github.com/anthropics/claude-code/releases)

---

## Blog / Ankündigungen

### Project Glasswing Expansion (02. Juni 2026)

Anthropic erweitert Project Glasswing auf 150 neue Organisationen in mehr als 15 Ländern. Claude Mythos Preview scannt Codebasen automatisch auf Sicherheitslücken. Seit dem Start wurden über 10.000 hochkritische Schwachstellen in mehr als 1.000 Open-Source-Projekten gefunden (6.200+ als high/critical klassifiziert).

Claude Mythos Preview ist ein spezialisiertes Frontier-Modell, das Anthropic nicht öffentlich verfügbar macht, weil es autonome Exploit-Fähigkeiten hat. Anthropic erwartet, dass vergleichbare Modelle anderer Anbieter in 6 bis 12 Monaten erscheinen.

Quelle: [anthropic.com/news/expanding-project-glasswing](https://www.anthropic.com/news/expanding-project-glasswing)

### Claude Partner Network: Services Track und Partner Hub (03. Juni 2026)

Anthropic formalisiert das Partner-Ökosystem mit drei Zertifizierungsstufen:

| Tier | Zertifizierte Personen | Joint Customers | Public Stories |
|---|---|---|---|
| Select | mind. 10 | mind. 2 | mind. 1 |
| Preferred | mind. 100 | mind. 15 | mind. 3 |
| Global Premier | mind. 1.000 | mind. 100 (3+ Regionen) | mind. 15 |

Hintergrund: Anthropic hat $100 Mio. in Partner-Training, Support und Marketing investiert. Seit März haben sich über 40.000 Firmen beworben, mehr als 10.000 Berater sind zertifiziert.

Quelle: [anthropic.com/news/services-track-partner-hub](https://www.anthropic.com/news/services-track-partner-hub)

### Claude for Small Business (13. Mai 2026, laufend relevant)

15 vorkonfigurierte Agentic Workflows für Finanzen, Sales, Marketing, HR und Kundenservice. 7 Konnektoren (QuickBooks, PayPal, HubSpot, Canva, DocuSign, Google Workspace, Microsoft 365). Kein Aufpreis über Pro ($20/Monat) oder Max ($100-200/Monat).

Quelle: [anthropic.com/news/claude-for-small-business](https://www.anthropic.com/news/claude-for-small-business)

### Anthropic S-1 Einreichung bei der SEC (01. Juni 2026)

Anthropic hat vertraulich einen Registrierungsentwurf (Form S-1) bei der SEC eingereicht. Ein möglicher Börsengang hängt von Marktbedingungen und der SEC-Prüfung ab. Kein konkretes Datum.

---

## Community-Highlights

r/ClaudeCode hat 4.200+ wöchentliche Beitragende (zum Vergleich: r/Codex hat 1.200).

Aktuelle Konsenspunkte der Community:
- CLAUDE.md unter 200 Zeilen halten; mit 20-30 Zeilen starten und nur bei wiederkehrenden Fehlern erweitern
- Hierarchische CLAUDE.md-Dateien in Unterordnern statt einer langen Datei
- Hooks für deterministisch notwendige Aktionen nutzen, nicht CLAUDE.md
- MCP-Server gelten als der Haupthebel für individuelle Produktivitätsgewinne

Quellen: [okhlopkov.com/claude-code-setup-mcp-hooks-skills-2026](https://okhlopkov.com/claude-code-setup-mcp-hooks-skills-2026/) | [morphllm.com/claude-code-reddit](https://www.morphllm.com/claude-code-reddit)

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| fallbackModel Setting (v2.1.166) | Hoch | Minuten | Hoch | Hoch |
| Thinking deaktivierbar (v2.1.166) | Hoch | Minuten | Mittel | Hoch |
| hooks additionalContext (v2.1.163) | Hoch | Stunden | Mittel | Mittel |
| /plugin list Command (v2.1.163) | Mittel | Minuten | Niedrig | Niedrig |
| requiredMinimumVersion (v2.1.163) | Mittel | Minuten | Mittel | Mittel |
| Claude Partner Network Select-Tier | Hoch | Tage | Hoch | Hoch |
| Claude for Small Business | Mittel | Stunden | Hoch | Mittel |
| Project Glasswing | Niedrig | Tage | Mittel | Niedrig |

---

## Empfohlene Aktionen

1. **fallbackModel sofort konfigurieren**: In der zentralen settings.json `fallbackModel` mit claude-haiku-4-5 als Fallback setzen. Verhindert Ausfälle bei API-Überlastung ohne Aufwand.

2. **Claude Partner Network prüfen**: Die Select-Stufe (10 Zertifizierte, 2 Joint Customers, 1 Public Story) ist für EXPAND B2B erreichbar. Erste Promotion-Runde läuft am 01. Juli 2026. Certification-Kosten und Anforderungen recherchieren.

3. **hooks additionalContext evaluieren**: Für Stop/SubagentStop Hooks können jetzt strukturierte Kontextdaten zurückgegeben werden. Prüfen, ob bestehende Briefing-Hooks davon profitieren.

4. **Claude for Small Business als Referenz nutzen**: Die 15 vorkonfigurierten Workflows zeigen, was Clients als Standard erwarten. Eigene Cowork-OS-Skills mit dieser Liste abgleichen und Lücken identifizieren.

---

## Keine Aktion nötig

- **Project Glasswing**: Interessant als Marktentwicklung, aber Claude Mythos Preview ist nicht öffentlich zugänglich. Keine direkte Handlungsoption.
- **S-1 Einreichung**: Rein strategische Nachricht. Keine operativen Auswirkungen.
- **v2.1.165, v2.1.167, v2.1.168**: Nur Bugfixes. Automatisches Update genügt.
