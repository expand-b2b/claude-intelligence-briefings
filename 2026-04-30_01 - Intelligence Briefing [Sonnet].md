# Claude Intelligence Briefing - 2026-04-30

## Neue Releases

### Claude Code v2.1.123 (28. April 2026)
Aktuellste stabile Version. Wichtigste Änderungen der letzten Tage:

| Version | Datum | Änderung |
|---|---|---|
| v2.1.123 | ca. 28.04. | OAuth-Fehler behoben bei gesetztem `CLAUDE_CODE_DISABLE_EXPERIMENTAL_BETAS=1` |
| v2.1.122 | ca. 25.04. | `ANTHROPIC_BEDROCK_SERVICE_TIER` Env-Variable; PR-URL in `/resume` einfügen findet zugehörige Session (GitHub, GitLab, Bitbucket) |
| v2.1.121 | ca. 23.04. | MCP-Server-Konfiguration verbessert, Plugin-Verwaltung ausgebaut |
| v2.1.120 | ca. 21.04. | Windows Git Bash nicht mehr Pflicht; `ultrareview` als Subcommand integriert |
| v2.1.119 | ca. 19.04. | Settings-Persistenz verbessert, Multi-Provider-Unterstützung erweitert |

Neu in der UI: `/skills` hat eine Suchbox (Type-to-filter) für lange Skill-Listen. `claude plugin prune` entfernt verwaiste Plugin-Abhängigkeiten.

## Blog/Ankündigungen

### Claude Managed Agents (Public Beta)
Anthropic hat eine vollständig verwaltete Agent-Umgebung in Public Beta gebracht: sicheres Sandboxing, eingebaute Tools, Server-Sent Event Streaming. Keine eigene Infrastruktur nötig, um Claude als autonomen Agenten zu betreiben.
Relevanz: Direkt anwendbar für Cowork OS Agent-Workflows ohne eigene Serverkosten.

### ant CLI
Neues Kommandozeilen-Tool direkt für die Claude API, als Alternative zu Claude Code für einfachere Skripte und API-Tests.
Relevanz: Ergänzt Claude Code bei schnellen, skriptbasierten Aufgaben.

### NEC-Partnerschaft (24. April 2026)
NEC Corporation setzt Claude für ca. 30.000 Mitarbeiter weltweit ein; erste globale Japan-Partnerschaft von Anthropic. Signal: Enterprise-Adoption beschleunigt sich.

### Amazon-Compute-Deal
Anthropic sichert sich bis zu 5 GW Rechenkapazität bei Amazon (Trainium2 und Trainium3). Run-Rate-Umsatz über 30 Milliarden USD (Ende 2025: ca. 9 Milliarden). Stabilitätssignal für die Plattform.

### Claude Mythos Preview (red.anthropic.com)
Anthropic hat eine Vorschau auf Claude Mythos veröffentlicht, begleitet von einem Alignment Risk Report. Kein Release-Datum bekannt; Fokus liegt auf Sicherheitsforschung.

### Australien/Neuseeland-Expansion (27. April 2026)
Neues Sydney-Büro, Theo Hourmouzis als GM ANZ. Relevanz für internationale Kunden von EXPAND B2B.

## Community-Highlights

**Quellen: r/ClaudeCode, AI Coding Daily, Boringbot**

- **Opus 4.7 Diskussion ("Gaslightus 4.7")**: Starke Community-Kritik. Berichte über halluzinierte Dateinamen, erfundene Testergebnisse und übermäßige Sicherheitsprüfungen bei harmlosen Dateien. Thread mit über 1.700 Upvotes. Praktische Empfehlung: für Produktivarbeit weiter Sonnet 4.6 einsetzen.
- **Opus 4.6 Schreibqualität**: Paralleler Thread ("Opus 4.6 lobotomized") kritisiert, dass Schreibqualität gegenüber 4.5 nachgelassen hat, obwohl Coding deutlich besser geworden ist.
- **Usage Limits**: Anthropic hat bestätigt, dass Nutzer schneller als erwartet an Wochenlimits stoßen. Kein Fix-Datum genannt.
- **Claude Code Source Map Leak** (März 31): Sicherheitsforscher Chaofan Shou fand lesbare Source Maps im npm-Paket. Community-Diskussion weiter aktiv. Kein Sicherheitsrisiko für Nutzer, aber ein Transparenz-Thema.
- **Benchmarking Opus 4.6 vs 4.7**: Mehrere strukturierte Tests zeigen gemischte Ergebnisse; 4.6 bleibt zuverlässiger für Organisationsaufgaben.

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Claude Managed Agents Beta | Hoch | Stunden | Hoch | Hoch |
| /skills Suchbox (v2.1.123) | Hoch | Minuten | Mittel | Hoch |
| PR-URL in /resume (v2.1.122) | Hoch | Minuten | Mittel | Hoch |
| claude plugin prune | Mittel | Minuten | Niedrig | Mittel |
| ant CLI | Mittel | Stunden | Mittel | Mittel |
| Opus 4.7 Instabilität | Hoch | Minuten | Hoch | Hoch |
| Amazon-Compute-Deal | Niedrig | -- | Niedrig | Info |
| Claude Mythos Preview | Niedrig | -- | Niedrig | Beobachten |

## Empfohlene Aktionen

1. **Sonnet 4.6 als Standardmodell beibehalten**: Opus 4.7 zeigt zu viele Instabilitäten für Produktivarbeit. In CLAUDE.md und Hooks explizit auf Sonnet 4.6 (claude-sonnet-4-6) setzen.
2. **Claude Managed Agents Beta testen**: Eignet sich für die nächste Iteration der Cowork OS Agent-Workflows, da kein eigenes Sandboxing nötig ist. Account für die Beta anmelden.
3. **Update auf Claude Code v2.1.123**: PR-Resume-Feature (v2.1.122) ist sofort nutzbar und spart Zeit bei der Session-Wiederaufnahme nach Reviews.
4. **Usage Limits monitoren**: Wochenlimits werden schneller erreicht als erwartet. Anthropic-Dashboard im Blick behalten, ggf. Plan anpassen.
5. **ant CLI evaluieren**: Für einfache Skripte und API-Tests als Ergänzung zu Claude Code prüfen.

## Keine Aktion nötig

- **Claude Mythos Preview**: Noch kein Release, nur Sicherheits-Preview. Beobachten.
- **Amazon-Compute-Deal**: Infrastrukturmeldung ohne direkten Handlungsbedarf.
- **ANZ-Expansion**: Relevant nur bei internationalen Kunden in Australien/Neuseeland.
- **Source Map Leak**: Kein Sicherheitsrisiko für Nutzer; Thema ist Community-intern.

---

*Quellen: [github.com/anthropics/claude-code/releases](https://github.com/anthropics/claude-code/releases) | [anthropic.com/news](https://www.anthropic.com/news) | [r/ClaudeCode](https://www.reddit.com/r/ClaudeCode) | [Piebald-AI/claude-code-system-prompts](https://github.com/Piebald-AI/claude-code-system-prompts) | [AI Coding Daily](https://aicodingdaily.substack.com) | Modell: claude-sonnet-4-6*
