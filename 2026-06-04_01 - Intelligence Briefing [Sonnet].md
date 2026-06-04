# Claude Intelligence Briefing - 2026-06-04

## Neue Releases

### Claude Code (laufende Updates, Stand 02.06.2026)
- **Sicherheit**: Vor dem Schreiben in Shell-Startup-Dateien (`.zshenv`, `.zlogin`, `.bash_profile`) und `~/.config/git/` erscheint jetzt eine Bestätigungsabfrage, um unbeabsichtigte Befehlsausführung zu verhindern.
- **acceptEdits-Modus**: Fordert nun Bestätigung, bevor Build-Tool-Konfigurationsdateien mit Code-Ausführungsrechten geschrieben werden.
- **Plugins**: Automatisches Laden aus `.claude/skills`-Verzeichnissen, neues Plugin-Scaffolding, Autocomplete für `/plugin`-Argumente (Subcommands, installierte Plugins, bekannte Marktplätze).
- **Bugfixes**: `Edit` benötigt nach `grep`-Ansicht kein separates `Read` mehr; Copy-on-Select schreibt jetzt korrekt in die Windows-Zwischenablage unter WSL.

### Claude Opus 4.7 (veröffentlicht 16.04.2026, Überblick)
- **Bildauflösung**: Nimmt Bilder bis 2.576 Pixel auf der langen Kante an (3x mehr als vorher).
- **Reasoning**: Neuer "xhigh effort" Deep-Reasoning-Modus.
- **Agentic-Stabilität**: Task-Abbruchrate bei langen Aufgaben um 60 % reduziert.
- **Benchmarks**: SWE-bench Verified 87,6 %, GPQA Diamond 94,2 %, MCP-Atlas-Benchmark 9,2 Punkte vor GPT-5.4.
- **Preis**: Unverändert 5 USD / Mio. Input-Token, 25 USD / Mio. Output-Token.

---

## Blog und Ankündigungen (letzte 48 Stunden)

### 1. Anthropic reicht vertrauliches S-1 bei der SEC ein (01.06.2026)
Anthropic hat einen Draft der Börsenprospekt-Anmeldung (Form S-1) bei der US-Börsenaufsicht eingereicht. Konkretes IPO-Datum, Preis und Ticker sind noch nicht festgelegt. Der Börsengang ist für Oktober 2026 geplant. Hintergrund: Am 28.05.2026 schloss Anthropic eine Series-H-Finanzierungsrunde über 65 Milliarden USD bei einer Bewertung von 965 Milliarden USD ab. Der annualisierte Umsatz liegt bei 47 Milliarden USD.

**Relevanz**: Börsenzulassung erhöht Transparenzpflichten und Vertrauen bei Enterprise-Kunden. Anthropic wird dauerhafter strategischer Partner bleiben.

### 2. Claude Partner Network: Services Track und Partner Hub (03.06.2026)
Anthropic führt eine dreistufige Partnerstruktur ein:

| Stufe | Voraussetzungen |
|---|---|
| Select | 10 zertifizierte Berater, 2 Produktivdeployments, 1 öffentliche Referenz |
| Preferred | 100 zertifizierte Berater, 15 aktive Deployments, 3 Referenzen |
| Global Premier | 1.000 zertifizierte Berater, 100 Kunden in 3+ Regionen, 15 Referenzen |

Der Partner Hub ist ein tagesaktuelles Dashboard mit Direktoryeintrag und einem MCP-Connector, der den Status direkt aus Claude abfragbar macht. Beförderungen erfolgen am 01.01. und 01.07. jeden Jahres (zusätzlicher Review am 01.10.2026). Seit dem Start im März: über 40.000 Bewerbungen, über 10.000 zertifizierte Berater.

**Relevanz**: Direkt auf EXPAND B2B anwendbar (siehe Empfohlene Aktionen).

### 3. Claude for Small Business (gestartet 13.05.2026)
15 vorgefertigte Agentic-Workflows und 7 Drittanbieter-Konnektoren (QuickBooks, PayPal, HubSpot, Canva, Docusign, Google Workspace, Microsoft 365). Enthalten im regulären Claude-Abo ohne Aufpreis. Die Workflows decken ab: Gehaltsplanung, Monatsabschluss, Business-Dashboard, Kampagnensteuerung, Rechnungs-Follow-up, Lead-Triage und Vertragsprüfung.

**Relevanz**: Zeigt, was Anthropic als Standard-Nutzungsszenarien für KMU definiert. Direkt als Referenz für Cowork-OS-Entwicklung nutzbar.

### 4. Project Glasswing Erweiterung (02.06.2026)
Sicherheitsinitiative wird auf 150 weitere Organisationen ausgedehnt. Bisherige Partner fanden über 10.000 kritische Sicherheitslücken. Anthropic kooperiert mit Regierungen und der Security-Industrie.

---

## Community-Highlights

Reddit-Daten waren nicht direkt abrufbar. Laut indirekten Quellen dominieren aktuell folgende Themen:

- **Plugin-Ökosystem**: Automatisches Laden aus `.claude/skills` löst Diskussionen über Community-Marktplätze aus.
- **Agentic Workflows**: Dynamic Workflows in Claude Code (Orchestrierung von Sub-Agenten aus einem Skript) werden intensiv getestet.
- **Sicherheitsplugin**: Neues Security-Guidance-Plugin, das Claude-Codeänderungen in Echtzeit auf Schwachstellen prüft, erhält viel Aufmerksamkeit.
- **Opus 4.7 vs. GPT-5.4**: Benchmark-Vergleiche, besonders im Coding und MCP-Tool-Bereich, dominieren die Diskussion.

Quellen: [Claude Code Changelog](https://code.claude.com/docs/en/changelog) | [GitHub Releases](https://github.com/anthropics/claude-code/releases) | [Releasebot](https://releasebot.io/updates/anthropic/claude-code)

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Claude Partner Network: Services Track | Hoch | Tage | Hoch | Hoch |
| Auto-Plugin-Loading aus `.claude/skills` | Hoch | Stunden | Mittel | Hoch |
| Claude for Small Business Workflows | Hoch | Tage | Hoch | Hoch |
| Dynamic Workflows / Sub-Agenten | Hoch | Tage | Hoch | Mittel |
| Security-Guidance-Plugin | Mittel | Stunden | Mittel | Mittel |
| Anthropic IPO S-1 | Niedrig | Minuten | Niedrig | Niedrig |
| Shell-Startup-Schutz (Security) | Niedrig | Minuten | Niedrig | Niedrig |
| Project Glasswing Erweiterung | Niedrig | Minuten | Niedrig | Niedrig |

---

## Empfohlene Aktionen

1. **Claude Partner Network prüfen**: Sofort Bewerbungsvoraussetzungen für die Select-Stufe prüfen (10 zertifizierte Berater, 2 Produktivdeployments, 1 Referenz). Nächste Aufstiegsrunde ist der 01.07.2026, also in weniger als 4 Wochen. Direktoryeintrag und MCP-Connector bieten direkte Neukundengewinnung.

2. **Claude for Small Business als Referenzarchitektur nutzen**: Die 15 Workflows und 7 Konnektoren sind ein klarer Signal, was Anthropic als Standard-Nutzungsszenarien definiert. Cowork OS sollte mindestens 5 dieser Workflows abdecken oder übertreffen können.

3. **Auto-Plugin-Loading aktivieren**: Skills aus `.claude/skills` werden automatisch geladen. Bestehende Skills ins Verzeichnis verschieben und testen, ob die neue Autocomplete-Funktion die Nutzbarkeit verbessert.

4. **Security-Guidance-Plugin evaluieren**: Einstündiger Test, ob das Plugin sinnvoll in den Entwicklungsworkflow integrierbar ist. Besonders relevant für Klienten-Deployments.

5. **Opus 4.7 für agentic Tasks testen**: Task-Abbruchrate 60 % reduziert und MCP-Atlas-Führung machen den Wechsel für Workflows mit vielen Sub-Agenten prüfenswert.

---

## Keine Aktion nötig

- **Anthropic IPO S-1**: Reine Kapitalmarktmeldung. Kein operativer Handlungsbedarf. Beobachten, ob Enterprise-Konditionen sich nach dem Börsengang ändern.
- **Project Glasswing**: Für B2B Sales Development nicht direkt relevant.
- **Shell-Startup-Schutz**: Wird automatisch durch Claude Code Update bereitgestellt. Kein manuelles Eingreifen nötig.

---

*Quellen: [Anthropic News](https://www.anthropic.com/news) | [Claude Code Changelog](https://code.claude.com/docs/en/changelog) | [API Release Notes](https://docs.anthropic.com/en/release-notes/overview) | [Releasebot Claude Code](https://releasebot.io/updates/anthropic/claude-code) | [Partner Network Ankündigung](https://www.anthropic.com/news/services-track-partner-hub) | [Claude for Small Business](https://www.anthropic.com/news/claude-for-small-business)*
