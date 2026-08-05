# Claude Intelligence Briefing - 2026-08-05

Erstellt von: Claude Sonnet 4.6 (automatisierter Scout-Lauf)
Quellen: Claude Code Changelog (code.claude.com), Vorherige Briefings (Kontext)
Hinweis: anthropic.com und docs.anthropic.com heute nicht erreichbar (403), Reddit blockiert.

---

## Neue Releases

### Claude Code v2.1.222 (4. August 2026) -- Security-Patch

- **Worktree-Isolation**: Worktree-isolierte Sessions können jetzt keine destruktiven Git-Befehle mehr ausführen. Relevant für alle Setups, die `isolation: "worktree"` in Workflows nutzen.
- **Security-Fix**: PreToolUse Auto-Allow Hooks konnten bisher Tool-Beschränkungen umgehen -- behoben.
- `/usage-credits` Fehler für Team/Enterprise-Accounts behoben.
- Stream-Idle-Timeout hinter HTTPS-Proxy (wie in dieser Remote-Umgebung) fixiert.
- `/usage` MCP-Server-Zurechnung korrigiert.
- Pull-Request-Verlinkung nach Branch-Push behoben.

### Claude Code v2.1.221 (4. August 2026) -- Neue Features

- **Focus View Toggle** (`Ctrl+Alt+F`) für VSCode: Wechselt zwischen fokussierter Ansicht und normalem Layout. Nützlich bei komplexen Multi-File-Bearbeitungen.
- **`mode: "mask"`** für Sandbox-Authentifizierungsdateien: Credential-Dateien können jetzt maskiert statt vollständig blockiert werden.
- **`prompt-audit` Subcommand** für den claude-api Skill: Neue Möglichkeit, Prompts auf Qualität und Kosten zu analysieren.
- Bash Zsh-Permission-Check Bypass behoben.
- PowerShell Pfad-Handling mit Anführungszeichen korrigiert.
- Thinking Toggle Effekt in laufenden Sessions behoben.

---

## Blog / Ankündigungen

Anthropic-Domains heute nicht erreichbar (HTTP 403). Keine neuen Blog-Artikel verifiziert.

Bekannte laufende Ankündigungen aus den Vortagen (Status unverändert):

| Ankündigung | Frist | Status |
|---|---|---|
| Workbench-Abschaltung (platform.claude.com) | **17. August 2026** (12 Tage) | Dringend: Export prüfen |
| 50% Weekly-Usage-Boost für Claude Code | **19. August 2026** (14 Tage) | Noch aktiv |
| Sonnet-5-Einführungspreise ($2/$10 MTok) | **31. August 2026** (26 Tage) | Noch aktiv |
| Claude für Open Source (6 Monate Max 20x) | Laufend | Beobachten |

---

## Community-Highlights

Reddit (r/ClaudeCode) heute nicht erreichbar.

Themen aus den letzten Tagen (Kontext):
1. Multi-Agenten in tmux: Mehrere Claude-Code-Instanzen parallel in tmux-Panes -- dominierendes Power-User-Workflow-Thema.
2. Security-Diskussionen: Nach dem Security-Fix in v2.1.214 (18. Juli) wächst das Bewusstsein für Permissions und Auto-Allow-Regeln. v2.1.222 verstärkt das.
3. Agent-Teams-Feature: Koordination mehrerer Agents für komplexe Tasks -- Community testet aktiv.

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Worktree-Security-Fix (v2.1.222) | Hoch (Workflow-Sicherheit) | Minuten (Update) | Hoch | Hoch |
| `prompt-audit` Subcommand | Hoch (Kosten-Analyse) | Stunden (testen) | Hoch | Hoch |
| Workbench-Abschaltung (12 Tage) | Mittel (falls genutzt) | Minuten (Export) | Hoch | Hoch |
| Sonnet-5-Preiserhöhung ab Sept. | Mittel | Stunden (Token-Audit) | Hoch | Hoch |
| Focus View Toggle VSCode | Mittel | Minuten | Mittel | Mittel |
| `mode: "mask"` für Credentials | Mittel | Stunden (prüfen) | Mittel | Mittel |
| Usage-Boost bis 19. Aug. aktiv | Hoch (jetzt nutzen) | Minuten | Mittel | Mittel |

---

## Empfohlene Aktionen

1. **Sofort (bis 17. August -- noch 12 Tage)**: Legacy-Workbench auf gespeicherte Prompts und Evals prüfen, exportieren. Deadline rückt nah.
2. **Diese Woche**: `prompt-audit` Subcommand des claude-api Skills testen. Kann aufzeigen, welche Cowork-OS-Skills besonders token-intensiv sind -- direkte Datenbasis für Budget-Planung vor September-Preiserhöhung.
3. **Bis 19. August**: Verbleibenden 50%-Usage-Boost aktiv einsetzen. Komplexe Briefings, Analysen oder Workflow-Tests, die sonst ans Limit stoßen würden, jetzt durchführen.
4. **Bis 31. August**: Token-Verbrauch für Sonnet-5-basierte API-Flows messen und Budget für September anpassen (Preisanstieg: Input +50%, Output +50%).
5. **Sicherheits-Update**: Sicherstellen, dass Claude Code auf v2.1.222 oder neuer läuft -- der PreToolUse Auto-Allow Bypass war ein echter Security-Bug.

---

## Keine Aktion nötig

- **Focus View Toggle (Ctrl+Alt+F)**: Nützlich, aber kein dringlicher Handlungsbedarf. Organisch entdecken.
- **PowerShell-Fixes**: Nur relevant auf Windows-Setups -- nicht im Scope.
- **Dreams-Research-Preview**: Zu experimentell für produktiven Einsatz.
- **AI for Science Grants**: Bewerbungsfrist abgelaufen (2. August).
