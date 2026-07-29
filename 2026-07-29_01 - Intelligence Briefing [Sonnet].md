# Claude Intelligence Briefing - 2026-07-29

## Neue Releases

### Claude Code v2.1.220 (25. Juli 2026)
Fehlerbehebungen und Stabilitätsverbesserungen.

### Claude Code v2.1.219 (24. Juli 2026)
**Wichtigste Änderungen:**
- Claude Opus 5 (`claude-opus-5`) als neues Standard-Opus-Modell mit 1M-Context-Window verfügbar
- Fast Mode jetzt für Opus 5 ($10/$50 pro MTok) und Opus 4.8; Opus 4.7 wurde entfernt
- `sandbox.network.strictAllowlist` Setting für präzise Netzwerkkontrolle in Sandboxen
- `DirectoryAdded` Hook wird nach `/add-dir` oder SDK `register_repo_root` ausgelöst
- Subagents können jetzt bis Tiefe 3 verschachtelte Subagents spawnen (vorher: 1)
- `--forward-subagent-text` Flag sowie `CLAUDE_CODE_FORWARD_SUBAGENT_TEXT` Umgebungsvariable für Stream-JSON-Output

### Claude Code v2.1.218 (22. Juli 2026)
- `/code-review` läuft jetzt als Background-Subagent (Kontext bleibt sauber)
- `/ultrareview` akzeptiert deskriptive Argumente
- Screenreader-Ankündigungen für gelöschten Text (`--ax-screen-reader` Mode)

### Claude Code v2.1.217 (21. Juli 2026)
- Emoji-Shortcode-Autocomplete (`:heart:` → ❤️)
- Managed MCP Allowlist/Denylist per Umgebungsvariablen konfigurierbar
- Memory-Leak-Fix für abgeschnittene MCP-Tool-Ausgaben

### Claude Code v2.1.216 (20. Juli 2026)
- `sandbox.filesystem.disabled` Setting hinzugefügt
- Quadratischer Performance-Einbruch in langen Sessions behoben
- Auto-Mode OAuth-Token-Rotation-Fehler gelöst

---

## Blog und Ankündigungen

### Claude for Teachers (21. Juli 2026)
Anthropic gibt verifizierten K-12-Lehrern in den USA kostenlosen Zugang zu Claude Pro, einer Bibliothek mit Unterrichts-Skills und lehrplanverknüpften Materialien für alle 50 Bundesstaaten.
**Relevanz:** Niedrig für B2B Sales, Signal für Expansion in Vertikalmärkte.

### Cognizant-Partnerschaft ausgeweitet (27. Juli 2026)
Cognizant und Anthropic haben ihre Zusammenarbeit erweitert, um Claude in Unternehmensprojekten einzusetzen.
**Relevanz:** Bestätigt Enterprise-Trend; Argum entgrundlage für Kunden-Demos.

### Claude Sonnet 5 (30. Juni 2026)
Ersetzt Sonnet 4.6 als Standardmodell. Einführungspreis bis 31. August 2026: $2/$10 pro MTok; danach $3/$15. Bringt Opus-ähnliche Fähigkeiten (mehrstufige Planung, Agentensuche in großen Codebasen, Selbstverifikation) in den Mittelpreisbereich.
**Relevanz:** Direkt relevant. Günstigeres Modell mit Opus-4.8-Niveau für Automatisierungen.

### Claude Fable 5 und Mythos 5 (9. Juni 2026)
Anthropics leistungsfähigstes Modell (Fable 5) ist jetzt global verfügbar nach Aufhebung der US-Exportbeschränkungen. Mythos 5 (gleichwertige Fähigkeiten) bleibt auf Project Glasswing beschränkt. Fable 5 hat eingebaute Classifier, die potenzielle Missbrauchsanfragen an Opus 4.8 umleiten.
**Relevanz:** Mittel. Wichtig für Kunden mit Anforderungen an maximale Reasoning-Tiefe.

### UST-Partnerschaft (9. Juli 2026)
Anthropic bringt Claude in Engineering-Umgebungen bei UST; 20.000 Ingenieure weltweit werden geschult.
**Relevanz:** Marktvalidierung für Enterprise-Claude-Einsatz.

---

## Community-Highlights

Direkte Reddit-Daten waren nicht abrufbar (Netzwerkbeschränkungen). Aus indirekten Quellen:

- **Subagent-Tiefe 3** ist das meistdiskutierte Feature der Woche in Entwickler-Communities: komplexe mehrstufige Workflows mit Fan-out werden möglich ohne externe Orchestrierung.
- **`/code-review` als Background-Agent** gilt als großer Workflow-Gewinn; der Haupt-Kontext bleibt frei für andere Arbeit.
- Anthropic hat ein Webinar "What We Shipped" veröffentlicht, in dem das Claude Code Team Features vorstellt und Live-Fragen beantwortet.
- Skills-Ökosystem wächst weiter; best-practices für CLAUDE.md-Strukturierung sind ein wiederkehrendes Thema.

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Subagents Tiefe 3 | Hoch | Minuten | Hoch | **Sehr hoch** |
| DirectoryAdded Hook | Hoch | Minuten | Mittel | Hoch |
| Sonnet 5 Preiseinführung | Hoch | Minuten | Hoch | **Sehr hoch** |
| `/code-review` als Background-Agent | Mittel | keine | Mittel | Mittel |
| sandbox.network.strictAllowlist | Mittel | Stunden | Mittel | Mittel |
| Managed MCP per Umgebungsvariable | Mittel | Stunden | Mittel | Mittel |
| Fable 5 global verfügbar | Niedrig | Minuten | Niedrig | Niedrig |
| Claude for Teachers | Niedrig | keine | Niedrig | Niedrig |

---

## Empfohlene Aktionen

1. **Sonnet 5 als Default-Modell in Workflows setzen** - Bis 31. August gilt $2/$10-Einführungspreis. Bestehende Workflows auf Basis von Sonnet 4.6 migrieren und Kostenersparnis dokumentieren.

2. **Subagent-Tiefe 3 in komplexen Briefing-Workflows nutzen** - Der Intelligence-Scout selbst kann jetzt Fan-out-Agenten für parallele Quellen-Recherche spawnen ohne externe Orchestrierung. CLAUDE.md entsprechend anpassen.

3. **`DirectoryAdded` Hook implementieren** - Nach `/add-dir` kann automatisch ein Setup-Script ausgeführt werden (z.B. Kontext laden, CLAUDE.md einlesen). Für das Cowork OS als Session-Initialisierungs-Optimierung prüfen.

4. **Sonnet 5 für B2B-Kunden-Demos positionieren** - Opus-4.8-Qualität zu einem Drittel des Preises ist ein starkes Verkaufsargument für KI-Workspace-Implementierungen.

---

## Keine Aktion nötig

- **Claude for Teachers** - Bildungsmarkt, nicht relevant für B2B Sales.
- **Fable 5 global** - Leistungsreferenz, kein unmittelbarer Implementierungsbedarf.
- **UST/Cognizant-Partnerschaften** - Marktvalidierung, keine operative Konsequenz.
- **Emoji-Autocomplete (v2.1.217)** - Komfort-Feature, keine Geschäftsrelevanz.
- **Windows Auto-Update-Fix** - Nicht relevant für Linux/Mac-Entwicklungsumgebung.

---

*Quellen: GitHub Releases anthropics/claude-code, code.claude.com/docs/en/changelog, anthropic.com/news, ghacks.net, artificialintelligence-news.com*
