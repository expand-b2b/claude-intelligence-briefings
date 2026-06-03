# Claude Intelligence Briefing - 2026-06-03

## Neue Releases

**Claude Code v2.1.161** (aktuellste Version, Stand heute)

Aus den GitHub-Issues geht hervor, dass Version 2.1.161 seit heute in Produktion ist. Die Versionsnummer zeigt rasante Entwicklung: Innerhalb weniger Wochen sind über ein Dutzend Minor-Releases erschienen. Ein direkter Zugriff auf das Release-Changelog war heute nicht möglich (GitHub API Rate-Limit, externe URLs gesperrt), aber aus den Issues lassen sich folgende aktuelle Themen ableiten:

- Plugins-System und Marketplace sind in Betrieb, haben aber noch Kinderkrankheiten (/plugin-Befehl dokumentiert, aber teilweise nicht verfügbar)
- Sonnet 4.6 mit 1M-Kontext-Fenster ist über die API verfügbar, erfordert aber aktivierte "Usage Credits" (neues Billing-Feature)
- Opus 4.8 ist das aktuell stärkste verfügbare Modell in Claude Code

---

## Blog/Ankuendigungen

Direkter Zugriff auf anthropic.com war in dieser Session gesperrt. Aus Community-Daten und GitHub-Aktivitäten lassen sich folgende laufende Themen ableiten:

**Plugin-Marketplace ist live**
Das offizielle Plugin-System "claude-plugins-official" ist in Betrieb. Nutzer können über eine Marketplaces-UI Plugins hinzufügen, die Sprachunterstützung und andere Erweiterungen liefern. Mehrere Bugs wurden heute gemeldet, was auf einen kürzlichen Launch hinweist.

**1M-Kontext-Fenster als Premium-Feature**
Sonnet 4.6 mit 1 Million Token Kontext erfordert jetzt "usage credits", die über /usage-credits aktiviert werden. Das deutet auf ein gestuftes Preismodell für erweiterte Funktionen hin.

---

## Community-Highlights

Aus GitHub Issues (heute, anthropics/claude-code, >64.900 offene Issues gesamt):

**Heisses Thema: Plugin-Bugs nach Marketplace-Launch**
Issue #64956: /plugin-Befehl fehlt trotz Dokumentation. Die Marketplace-UI zeigt den Eintrag, aber keine Plugins laden. Betrifft mehrere Nutzer.

**Multi-Agent-Workflow-Verbesserung gefordert**
Issue #64951: "EnterWorktree sollte auch bestehende Worktrees per Pfad betreten koennen." Konkrete Use Case: Orchestrator-Agenten, die Worker-Agenten in isolierten Worktrees koordinieren. Wächst mit dem Trend zu parallelen Agenten-Setups.

**VS Code: Browser-Integration als Luecke**
Issue #64927: Nutzer fordern integrierte Browser-Ansicht wie bei Copilot/Cursor, mit DOM-Inspektion und Screenshot-Übergabe an den Agenten. Claude Code fehlt das aktuell in VS Code.

**Dev-Container-Support**
Issue #64926: Desktop-App unterstuetzt keine Dev Container, was für containerisierte Workloads ein Blocker ist.

**Parallele Sessions ohne Titel-Konflikte**
Issue #64952: Bei mehreren gleichzeitig laufenden Claude-Code-Sessions überschreibt die dynamische Tab-Titelanpassung benutzerdefinierte Titles. Feature-Request: updateTerminalTitle: false in settings.json.

**Community-Repos (aktiv heute aktualisiert):**
- JSONbored/awesome-claude (257 Sterne): Zentrales Registry für Claude-Assets: Agenten, MCP-Server, Skills, Hooks, Plugins, Raycast-Feeds
- AbsolutelySkilled/AbsolutelySkilled (168 Sterne): Skills-Sammlung, multi-modal (Claude, Gemini, Codex)
- Chat2AnyLLM/awesome-claude-plugins (101 Sterne): Plugin-Marktplatz-Übersicht

---

## Relevanz fuer Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschaeftswert | Prioritaet |
|---|---|---|---|---|
| Plugin-System ist live | Hoch | Stunden | Hoch | Hoch |
| Sonnet 4.6 1M-Kontext-Fenster | Hoch | Minuten | Hoch | Hoch |
| EnterWorktree-Erweiterung (Issue) | Mittel | folgt Release | Mittel | Mittel |
| awesome-claude JSONbored Repo | Mittel | Stunden | Mittel | Mittel |
| Dev-Container-Support (fehlt) | Niedrig | folgt Release | Niedrig | Niedrig |
| VS Code Browser-Integration (fehlt) | Niedrig | folgt Release | Niedrig | Niedrig |

---

## Empfohlene Aktionen

1. **Plugin-Marketplace erkunden**: Sobald die Bugs behoben sind (Issue #64956), prüfen ob Sprachunterstützungs-Plugins oder Workflow-Plugins für das Cowork OS nützlich sind. Repo JSONbored/awesome-claude als Ausgangspunkt nutzen.

2. **Sonnet 4.6 1M-Kontext aktivieren**: In den Anthropic-Account-Einstellungen "Usage Credits" für 1M-Kontext aktivieren. Für Sales-Development-Workflows mit langen Dokumenten oder grossen Codebasen sinnvoll.

3. **awesome-claude (JSONbored) sichten**: Aktuell 257 Sterne, täglich aktualisiert. Registry enthält Agenten, Skills, Hooks und MCP-Server, die direkt ins Cowork OS integrierbar sind.

4. **Parallele Agenten-Architektur vorbereiten**: Die EnterWorktree-Diskussion zeigt, dass die Community aktiv multi-agent Orchestrierung entwickelt. CLAUDE.md für parallele Agenten-Workflows schon jetzt dokumentieren.

---

## Keine Aktion noetig

- Dev-Container-Support: Kein Cowork-OS-Use-Case identifiziert
- VS Code Browser-Integration: Nicht priorisiert, bis Feature verfügbar
- Terminal-Tab-Titel-Feature-Request: Reines UX-Thema, kein Geschäftswert
- Opus 4.7-Qualitätsdiskussion (Issue #64937): Interne Modell-Nutzerfeedbacks, keine Handlungsoption

---

*Quellen: GitHub Issues anthropics/claude-code (direkt über GitHub API), GitHub Repository-Suche. Anthropic Blog und Reddit nicht verfügbar (Netzwerk-Policy dieser Session).*
