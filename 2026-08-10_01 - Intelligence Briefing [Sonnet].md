# Claude Intelligence Briefing - 2026-08-10

## Neue Releases

### Claude Code v2.1.226 (8. August 2026)
Fehlerbehebungen und Stabilitätsverbesserungen ohne größere Feature-Änderungen.

### Claude Code v2.1.225 (8. August 2026)
- **Gateway Spend-Limit**: Ausgabenbegrenzungen für API-Gateways konfigurierbar
- **Workspace Trust Prompt**: `claude agents` fragt in nicht vertrauenswürdigen Verzeichnissen nach
- OAuth-Token-Fehler in headless Sessions behoben (401-Fehler)
- MCP OAuth auf macOS repariert
- Auto Mode: Sicherheitsfilter-Ablehnungen zählen nicht mehr zum consecutive-block Limit
- Remote Control zeigt Fotos aus der Claude App direkt an
- Cross-session SendMessage verbessert

### Claude Code v2.1.224 (7. August 2026)
- **Self-Hosted Environments**: `claude self-hosted-runner` erlaubt eigene Maschinen/Container als Claude Code-Umgebung (Team und Enterprise)
- **Archive Plugin Source**: Plugin-Installation aus ZIP über HTTPS mit optionalem SHA-256 Pinning
- **Cross-session SendMessage**: Direkte Agent-zu-Agent-Kommunikation über Sessions hinweg
- Sandbox Credential-Masking für JWT und AWS SigV4
- Projektpfad-Isolation repariert (Sessions kreuzen nicht mehr Projektgrenzen)

### Claude Code v2.1.223 (6. August 2026)
- Owner-Wildcard-Einträge (`"owner/*"`) für Marketplace-Beschränkungen
- Warnungen für eingeschränkte Subagent-Modelle
- `/teleport`-Hinweis für lokale Sessions
- Bash-Permission-Bypass und Gateway-Model-Discovery-Fehler behoben

### Claude Code v2.1.222 (4. August 2026)
- **Worktree-isolierte Sessions**: Sicherheit gegen unbeabsichtigte destruktive Git-Befehle
- PreToolUse auto-allow Hooks Bypass behoben
- Stream-Idle-Timeout hinter HTTPS-Proxy repariert
- Vim-Mode-Fixes und Screen-Reader-Verbesserungen

## Blog/Ankündigungen

### Claude Opus 5 (August 2026)
Anthropic hat Claude Opus 5 veröffentlicht, das neue Standardmodell auf Claude Max. Schneller und kosteneffizienter für Coding, Wissensarbeit und wissenschaftliche Recherche. Stärkstes Modell auch auf Claude Pro verfügbar.

**Relevanz**: Hoch. Direkte Leistungsverbesserung für alle Cowork OS-Workflows ohne Konfigurationsänderungen.

### MCP Spezifikation 2026-07-28
Neue MCP-Version mit:
- Stateless Core als Grundarchitektur
- Verstärkte OAuth/OIDC-Authentifizierung
- Versionierte Erweiterungen für Apps und Tasks
- Embedded UI für Konnektoren
- Enterprise-verwaltete Auth
- Observability-Funktionen
- Private Network Tunnels

Über 950 MCP-Server im Connector-Verzeichnis, täglich von Millionen genutzt.

**Relevanz**: Hoch. Grundlage für sicherere und besser überwachbare MCP-Integrationen im Cowork OS.

### Modell-Deprecation: Claude Opus 4.1
Ablösung zum 5. August 2026 geplant gewesen. Migration zu Claude Opus 4.8 empfohlen. Betrifft API-Nutzer direkt.

### Experimental Prompt Tools API-Abkündigung
Retirement der experimentellen Prompt Tools APIs und des zugehörigen Workbench zum 17. August 2026.

## Community-Highlights

Die r/ClaudeCode Community zählt über 4.200 wöchentliche Mitwirkende (mehr als dreimal so viele wie r/Codex). Aktive Diskussionen drehen sich um:

**Fortgeschrittene Workflow-Muster:**
- Mehrere Claude Code-Instanzen in tmux-Panes, je eine pro Modul oder Feature-Branch
- Zusammenfassen zusammenhängender Änderungen in einer Session, um den Context-Warmup-Aufwand zu vermeiden
- `claude --resume` statt neuer Session für Kontinuität
- `!`-Präfix für sofortige Bash-Ausführung ohne Prompt
- `/export` zum Speichern von Gesprächen

**Konsens der Community:**
- CLAUDE.md, Subagents, Hooks und Slash Commands sind die Kernwerkzeuge für Power User
- Claude Code für komplexe Multi-File-Änderungen nutzen, günstigere Tools für einfache Single-File-Edits
- Bewusstes Lernen der Muster zahlt sich aus

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Self-Hosted Environments (v2.1.224) | Hoch | Stunden | Hoch | Hoch |
| Claude Opus 5 (neues Standardmodell) | Hoch | Minuten | Hoch | Hoch |
| Cross-session SendMessage | Hoch | Minuten | Mittel | Hoch |
| MCP Spec 2026-07-28 | Mittel | Tage | Hoch | Mittel |
| Archive Plugin Source (ZIP) | Mittel | Stunden | Mittel | Mittel |
| Gateway Spend-Limit (v2.1.225) | Mittel | Minuten | Mittel | Mittel |
| Worktree-isolierte Sessions | Mittel | Minuten | Mittel | Mittel |
| Opus 4.1 Deprecation | Hoch | Minuten | Hoch | Hoch (dringend) |
| Prompt Tools API-Abkündigung | Niedrig | Prüfen | Niedrig | Niedrig |

## Empfohlene Aktionen

1. **Opus 4.1 prüfen**: Sicherstellen, dass keine aktiven API-Integrationen noch auf `claude-opus-4-1` zeigen. Migration auf `claude-opus-4-8` oder `claude-opus-5` vor dem 17. August abschließen.

2. **Claude Opus 5 testen**: Für die rechenintensivsten Aufgaben im Cowork OS (Account-Recherche, komplexe Briefings) auf Opus 5 wechseln und Qualität/Kosten vergleichen.

3. **Cross-session SendMessage evaluieren**: Multi-Agent-Workflows im Cowork OS könnten von direkter Agent-Kommunikation profitieren, besonders für parallele Recherche-Tasks.

4. **Self-Hosted Runner prüfen**: Ob Enterprise-Plan aktiv ist und ob ein lokaler Runner sinnvoll wäre für datensensible Prozesse (CRM-Daten, Kundendokumente).

5. **tmux-Multi-Agent-Workflow testen**: Für aufwändige Kampagnenvorbereitungen (Messe, Outreach-Batches) mehrere Claude Code-Instanzen parallel testen.

## Keine Aktion nötig

- MCP Spec 2026-07-28: Anthropic implementiert intern, keine unmittelbare Konfigurationsänderung erforderlich
- Workspace Trust Prompt: Standardverhalten, kein Anpassungsbedarf
- Vim Mode und Screen Reader Fixes: Nicht relevant für aktuelles Setup
- Prompt Tools API-Abkündigung: Wird geprüft, aber voraussichtlich kein Einfluss auf Cowork OS Skills
