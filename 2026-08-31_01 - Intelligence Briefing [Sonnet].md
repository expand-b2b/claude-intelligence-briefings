# Claude Intelligence Briefing - 2026-08-31

## Neue Releases

### v2.1.251 (28.08.2026) - Aktuell
- **`PreModelSwitch` und `PostModelSwitch` Hooks**: Neue Hook-Events zum Blockieren, Bestaetigen oder Annotieren eines Modellwechsels innerhalb einer Session.
- **Live-Streaming von Subagent-Tool-Calls**: Foreground-Subagenten senden ihre Tool-Aufrufe jetzt live an Remote-Control-Clients.
- **Spend-Limit-Anzeige in `/usage`**: Neue Leiste fuer Gateway-Nutzer mit Ausgabenlimit.
- **Prompt-Cache-Metriken pro Session in `/cost`**: Detailliertere Kostentransparenz je Session.
- **Sicherheitsfixes**: Read/Write/Edit folgten zuvor Symlinks ausserhalb erlaubter Verzeichnisse. Plugin-Befehle konnten auf Pfade ausserhalb des Plugin-Verzeichnisses zeigen (Path Traversal). Beides behoben.
- Weitere Fixes: haengende Konversationen nach reinen Denk-Turns, Opus-5-Effort-Handling bei deaktiviertem Thinking, Remote-Control-Stabilitaet.

### v2.1.250 (27.08.2026)
- Bug-Fixes und Stabilitaetsverbesserungen ohne Detailangabe.

### v2.1.248 (27.08.2026)
- **`--restricted` Flag**: Entfernt eingebaute Tools, die Befehle oder Code ausfuehren (Bash, WebFetch), und beschraenkt Dateizugriff auf das Arbeitsverzeichnis.
- **`experimental.cacheTtl`**: Agent-spezifische Prompt-Cache-TTL im Agent-Frontmatter konfigurierbar.
- **Cross-Session-Messaging auf Bedrock, Vertex und Foundry**: Die in frueheren Briefings genannte Funktion ist jetzt auch auf diesen Plattformen verfuegbar, nicht nur auf der Standard-API.
- Verbesserte MCP-Server-Robustheit und Fehlerbehandlung.

Keine neuen Releases zwischen dem 29. und 31.08.2026 gefunden. v2.1.251 bleibt der aktuelle Stand.

---

## Blog/Ankuendigungen

Der direkte Zugriff auf anthropic.com/news war ueber den Proxy blockiert (EGRESS_BLOCKED). Ersatzweise per Websuche recherchiert:

- **Claudeforce (Salesforce-Partnerschaft, 26.08.2026)**: Anthropic und Salesforce erweitern ihre Partnerschaft. Claude wird tiefer in Salesforce-Datenmodelle, Workflows und Governance integriert. Pilotkunden haben bereits Zugriff, offene Beta ab September 2026 angekuendigt. Relevanz fuer Cowork OS: gering, da EXPAND B2B kein Salesforce-Kernkunde ist, aber relevant als Signal fuer CRM-Integrationstrends bei Klienten.
- **Claude Team Plan fuer Wissenschaftler (28.08.2026)**: 10.000 Seats fuer Forschende, Standard-Seats kostenlos, Premium-Seats mit 5-fachem Nutzungslimit fuer 15 USD/Monat (80 Prozent Rabatt, ein Jahr fest). Kein direkter B2B-Sales-Bezug, aber Beispiel fuer Anthropics Pricing-Strategie bei Nischenzielgruppen.
- **Watermarking in KI-Outputs (13.08.2026, aelter als 48h, zur Einordnung erwaehnt)**: Alle Claude-Produkte ab dem 2.08.2026 markieren generierte Inhalte maschinenlesbar, zur Einhaltung von Artikel 50(2) des EU AI Act. Relevant fuer alle Klienten mit EU-Geschaeft, die Claude-generierte Texte extern versenden.

---

## Community-Highlights

Reddit r/ClaudeCode war ueber den Proxy nicht erreichbar (Verbindung von der Egress-Policy abgelehnt). Keine verifizierten Highlights fuer diesen Tag.

---

## Relevanz fuer Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschaeftswert | Prioritaet |
|---|---|---|---|---|
| Sicherheitsfixes Symlink/Plugin-Pfade (v2.1.251) | Hoch | Minuten (Update) | Hoch | Hoch |
| PreModelSwitch/PostModelSwitch Hooks (v2.1.251) | Mittel | Stunden | Mittel | Mittel |
| Prompt-Cache-Metriken in `/cost` (v2.1.251) | Mittel | Minuten | Mittel | Mittel |
| Cross-Session-Messaging auf Bedrock/Vertex/Foundry (v2.1.248) | Niedrig | Keine | Niedrig | Niedrig |
| Watermarking ab 2.08.2026 | Mittel | Keine (automatisch) | Mittel | Mittel |
| Claudeforce (Salesforce) | Niedrig | Keine | Niedrig | Niedrig |

---

## Empfohlene Aktionen

1. **Auf v2.1.251 aktualisieren** (heute): Die Symlink- und Plugin-Pfad-Fixes schliessen echte Sicherheitsluecken. Ueber regulaeres `claude update` einspielen, kein manueller Aufwand.

2. **`PreModelSwitch`-Hook fuer diesen Scout evaluieren** (diese Woche): Da dieser Scheduled Task automatisiert Modell-Fallbacks nutzt (Sonnet zu Opus), koennte ein Hook protokollieren oder verhindern, dass ein Fallback unbemerkt auf ein teureres Modell wechselt.

3. **Watermarking-Hinweis an Klienten mit EU-Geschaeft weitergeben** (diese Woche): Falls Klienten Claude-generierte Texte in Marketing oder Sales-Outreach extern versenden, kurz informieren, dass ab dem 2.08.2026 eine maschinenlesbare Markierung enthalten ist.

---

## Keine Aktion noetig

- **Live-Streaming von Subagent-Tool-Calls**: Nur relevant bei aktiver Remote-Control-Nutzung, aktuell kein Anwendungsfall bei EXPAND B2B.
- **Cross-Session-Messaging auf Bedrock/Vertex/Foundry**: EXPAND B2B nutzt die Standard-API, kein Handlungsbedarf.
- **Claude Team Plan fuer Wissenschaftler**: Zielgruppe passt nicht zu EXPAND B2B oder Klienten.
- **Claudeforce (Salesforce)**: Kein Salesforce-Einsatz bei EXPAND B2B, nur als Trendsignal notiert.

---

## Hinweis zu Quellen

GitHub API (api.github.com) und Reddit waren ueber den direkten curl-Zugriff blockiert (Proxy- beziehungsweise Egress-Policy). Ersatzweise wurden WebFetch auf die GitHub-Releases-Seite und code.claude.com/docs/en/changelog sowie eine Websuche fuer Anthropic-Ankuendigungen genutzt. anthropic.com/news blieb ueber alle Wege unerreichbar.

---

*Quellen: github.com/anthropics/claude-code/releases | code.claude.com/docs/en/changelog | Websuche (Anthropic-Ankuendigungen) | Generiert: 2026-08-31 | Modell: claude-sonnet-5*
