# Claude Intelligence Briefing - 2026-07-09

## Neue Releases

### Claude Code v2.1.205 (8. Juli 2026)
- Auto-Mode blockiert jetzt Manipulationen an Session-Transkript-Dateien
- `/doctor` wurde zu einem vollständigen Setup-Check mit Diagnose- und Reparaturfunktionen ausgebaut
- Verbesserter Auto-Mode: fragt vor `rm -rf` bei unaufgelösten Variablen nach
- Fix: `--json-schema` produzierte bei ungültigen Schemas stille, unstrukturierte Ausgaben
- Fix: Nachrichten gingen bei `--max-turns`-Limit verloren
- Fix: Windows-Worktree-Entfernung löscht keine Dateien außerhalb des Worktree mehr (NTFS-Junctions)
- Fix: Background-Agent-Status blieb nicht mehr als "fehlgeschlagen" stecken
- Diverse Fixes für Remote Control, MCP-Server und Worktree-Isolation

### Claude Code v2.1.204 (8. Juli 2026)
- Fix: Hook-Events streamen jetzt korrekt während `SessionStart`-Hooks in Headless-Sessions (verhinderte Remote-Worker-Idle-Reaping)

### Claude Code v2.1.203 (7. Juli 2026)
- Warnung vor Login-Ablauf, damit Authentifizierung vor Background-Session-Unterbrechung erneuert werden kann
- Grauer Pause-Badge im Footer für Manual Permission Mode
- Session-Working-Directories werden zu MCP `roots/list` hinzugefügt
- Fix: Background Sessions auf macOS stallten nicht mehr 15-20 Sekunden (fehlerhafte Low-Memory-Detection)
- Background Sessions: Automatische Wiederherstellung bei gespeicherten Session-Tokens
- Fix: Rückkehr zu `claude agents` stoppt Subagents nicht mehr und lädt den Prompt nicht neu

### Claude Code v2.1.202 (6. Juli 2026)
- Neue "Dynamic Workflow Size"-Einstellung in `/config` (small/medium/large Agent-Counts)
- OpenTelemetry-Attribute: `workflow.run_id` und `workflow.name`
- Fix: Inline Ctrl+R History Search crasht nicht mehr
- `/review <pr>` zurück zu schnellem Single-Pass-Review

## Blog und Ankündigungen

**Claude Cowork auf Web und Mobile** (7. Juli 2026)
Cowork ist jetzt neben Desktop auch auf Web und mobil verfügbar. Remote Sessions laufen auf Anthropic-Infrastruktur, Dateien sind konto-synchronisiert. Microsoft 365 Write Tools ermöglichen E-Mail-Entwurf, Kalender-Verwaltung sowie Erstellung und Aktualisierung von OneDrive- und SharePoint-Dateien. Rollout beginnt mit Max-Plan-Nutzern.

**Claude Fable 5 global wieder verfügbar** (1. Juli 2026)
Nach zwei Wochen Washington-Verhandlungen und einem neuen Sicherheits-Klassifikator ist Fable 5 weltweit auf Claude.ai, Claude Code und Cowork zugänglich. Alle bezahlten Pläne erhalten bis zu 50 % ihres wöchentlichen Limits in Fable 5.

**Claude Sonnet 5 als neues Standardmodell** (ab 1. Juli 2026)
Sonnet 5 ist das neue Standard-Modell für Free- und Pro-Pläne. Einführungspreis: $2/$10 pro Mtok (Input/Output) bis 31. August 2026. Native 1M-Token-Context-Window. Gilt als bisher agentenfreumdlichstes Sonnet-Modell.

**Claude for Government** (Beta)
Claude Code und Cowork sind im öffentlichen Beta in einer FedRAMP-High-zertifizierten Umgebung verfügbar.

**Claude auf Azure AI Foundry** (General Availability)
Erstmals auf NVIDIA GB300 Blackwell Ultra GPUs mit Quantum-X800 InfiniBand verfügbar.

## Community-Highlights

- **Skills-Nachfrage wächst stark**: "claude code skills" verzeichnet 9.900 monatliche Suchen (Stand Mai 2026); "claude code hooks" und "claude code subagents" je 2.900.
- **Background Agents als Standard**: Ab v2.1.198 laufen Subagents standardmäßig im Hintergrund und können committen, pushen und Draft-PRs öffnen.
- **Guides und Setups**: Neue Community-Artikel zu MCP + Skills + Hooks in 2026 erscheinen regelmäßig (alexop.dev, totalum.app, okhlopkov.com).
- **Claude Code Driver**: Community-Repository von @thewiredbear mit Beispielen, Templates und Ressourcen.

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| `/doctor` Setup-Check (v2.1.205) | Hoch | Minuten | Mittel | Hoch |
| SessionStart Hook Fix (v2.1.204) | Hoch | Minuten | Hoch | Hoch |
| Session-Dirs in MCP roots/list (v2.1.203) | Hoch | Minuten | Mittel | Hoch |
| Dynamic Workflow Size in /config (v2.1.202) | Hoch | Minuten | Mittel | Hoch |
| Cowork Web und Mobile | Hoch | Stunden | Hoch | Hoch |
| Sonnet 5 als Standard ($2/$10) | Hoch | Minuten | Hoch | Hoch |
| Microsoft 365 Write Tools | Mittel | Stunden | Hoch | Mittel |
| Fable 5 global + 50%-Limit | Mittel | Minuten | Mittel | Mittel |
| Azure AI Foundry GA | Niedrig | Tage | Niedrig | Niedrig |

## Empfohlene Aktionen

1. **Sofort**: `/doctor` in aktiven Cowork-OS-Projekten ausführen, um Setup-Probleme zu diagnostizieren (v2.1.205, kein Aufwand).
2. **Diese Woche**: Prüfen ob SessionStart-Hooks in Headless-/Remote-Sessions korrekt streamen (v2.1.204 behebt bekannten Fehler, der Remote-Worker beendet).
3. **Diese Woche**: Sonnet 5 als Standard-Modell in eigenen Projekten testen. Einführungspreis läuft bis 31. August aus.
4. **Diese Woche**: Dynamic Workflow Size in `/config` evaluieren. Kleinere Agent-Counts reduzieren Token-Kosten bei einfachen Tasks.
5. **Nächste Woche**: Cowork auf Web und Mobile für Max-Plan testen, sobald Rollout beginnt. Besonders relevant für mobile B2B-Demo-Szenarien.
6. **Nächste Woche**: Microsoft 365 Write Tools für Klienten-Demos evaluieren (E-Mail, Kalender, SharePoint direkt aus Cowork).

## Keine Aktion nötig

- Claude for Government (kein B2B-Kundenbedarf im aktuellen Scope)
- Azure AI Foundry GA (kein direkter Impact auf Cowork OS)
- Alibaba-Mitarbeiter-Bann von Claude (keine Relevanz für EXPAND B2B)
- Reddit-Community-Aktivitäten (kein konkreter handlungsrelevanter Input diese Woche)
