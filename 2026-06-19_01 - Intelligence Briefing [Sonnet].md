# Claude Intelligence Briefing - 2026-06-19

## Neue Releases

### v2.1.183 (19.06.2026 - heute)
Veröffentlicht: 01:20 UTC

**Auto-Modus Sicherheit** (wichtigste Änderung):
- Destruktive Git-Befehle (`git reset --hard`, `git checkout -- .`, `git clean -fd`, `git stash drop`) werden im Auto-Modus blockiert, solange der Nutzer nicht explizit das Verwerfen lokaler Arbeit verlangt hat
- `git commit --amend` wird blockiert für Commits, die nicht vom Agenten in dieser Session erstellt wurden
- `terraform destroy`, `pulumi destroy`, `cdk destroy` werden blockiert, außer der Nutzer fordert den jeweiligen Stack explizit an

**Weitere Änderungen:**
- Warnung bei veralteten oder automatisch aktualisierten Modellen (gilt jetzt auch für Agent-Frontmatter)
- Neues Setting `attribution.sessionUrl`: unterdrückt den claude.ai-Session-Link in Commits und PRs (Web und Remote Control)
- `/config --help` listet alle verfügbaren Shorthand-Keys
- Bugfix: Scheduled Tasks und Webhook-Trigger werden nicht mehr als Keyboard-Input behandelt (können keine Aktionen genehmigen oder Session-Titel setzen)
- Bugfix: Skills erscheinen nicht mehr mehrfach in der Autocomplete wenn mehrere Plugins aktiv sind
- Bugfix: MCP-Server mit Authentifizierung zeigen keine Auth-Stub-Tools im Headless/SDK-Modus

### v2.1.181 (17.06.2026 - gestern)
Veröffentlicht: 22:07 UTC

**Konfiguration:**
- `/config key=value` Syntax zum Setzen beliebiger Einstellungen direkt im Prompt (z.B. `/config thinking=false`)
- Neues Setting `sandbox.allowAppleEvents` für macOS
- Neue Umgebungsvariable `CLAUDE_CLIENT_PRESENCE_FILE`: Unterdrückt Mobile-Push-Benachrichtigungen solange man am Computer ist

**Performance und UX:**
- Bun-Runtime auf Version 1.4 aktualisiert
- Streaming langer Absätze verbessert: Text erscheint jetzt zeilenweise statt auf den ersten Zeilenumbruch zu warten
- Auto-Retry verbessert: API-Verbindungsabbrüche während des Denkens werden automatisch wiederholt
- Subagent-Panel verbessert: Idle-Subagents werden nach 30 Sekunden automatisch ausgeblendet, Liste begrenzt auf 5 Zeilen
- MCP-OAuth-Browserseite angepasst an Claude Code Stil, schließt sich bei Erfolg automatisch

**Bugfixes (relevant):**
- Prompt-Caching auf `ANTHROPIC_BASE_URL` und Foundry repariert
- Write/Edit erzeugte leere oder abgeschnittene Dateien auf Netzlaufwerken und Cloud-Sync-Ordnern (behoben)
- Startblockierung (~120ms pro Start in neuen Umgebungen) behoben
- Subagents respektieren jetzt das 5-Level-Tiefenlimit

---

## Blog/Ankündigungen

Zugriff auf `anthropic.com/news` war in dieser Session netzwerkseitig blockiert. Keine Daten verfügbar.

---

## Community-Highlights

Zugriff auf `reddit.com/r/ClaudeCode` war in dieser Session netzwerkseitig blockiert. Keine Daten verfügbar.

*Empfehlung: Netzwerk-Allowlist um `www.anthropic.com` und `www.reddit.com` erweitern für vollständige Abdeckung.*

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Auto-Modus Git-Sicherheit (v2.1.183) | Hoch | Minuten (Update) | Hoch | **Hoch** |
| `attribution.sessionUrl` Setting | Hoch | Minuten | Mittel | **Hoch** |
| Scheduled Task / Webhook Fix | Hoch | Minuten (Update) | Hoch | **Hoch** |
| `/config key=value` Syntax | Mittel | Minuten | Mittel | Mittel |
| `CLAUDE_CLIENT_PRESENCE_FILE` | Niedrig | Minuten | Niedrig | Niedrig |
| Subagent-Panel Verbesserungen | Mittel | Minuten (Update) | Mittel | Mittel |
| Write/Edit auf Netzlaufwerken Fix | Hoch | Minuten (Update) | Hoch | **Hoch** |

---

## Empfohlene Aktionen

1. **Claude Code auf v2.1.183 aktualisieren** (`npm update -g @anthropic-ai/claude-code`): Die Git-Sicherheitsverbesserungen und der Scheduled-Task-Fix sind direkt relevant für autonome Briefing-Workflows wie diesen.

2. **`attribution.sessionUrl: false` in Projekt-Settings setzen**: Für Commits und PRs die im Namen von EXPAND B2B erstellt werden, sollte der claude.ai-Session-Link entfernt werden. Eintrag in `.claude/settings.json`:
   ```json
   { "attribution": { "sessionUrl": false } }
   ```

3. **Netzwerk-Allowlist erweitern**: `www.anthropic.com` und `www.reddit.com` freischalten, damit zukünftige Briefings vollständige Quellenabdeckung haben.

4. **Subagent-Tiefenlimit prüfen**: Falls mehrstufige Agenten-Chains im Cowork OS genutzt werden, das neue 5-Level-Limit berücksichtigen (v2.1.181).

---

## Keine Aktion nötig

- Bun-Runtime-Update (internes Implementierungsdetail, kein Handlungsbedarf)
- MCP-OAuth-Styling-Änderung (kosmetisch)
- `/config --help` (Dokumentationsverbesserung, kein Setup nötig)
- macOS-spezifische Fixes (Apple Events, Spotlight-Freeze) sofern kein macOS im Einsatz

---

*Quellen: GitHub Releases anthropics/claude-code. Anthropic Blog und r/ClaudeCode nicht erreichbar (Netzwerksperre).*
*Modell: Claude Sonnet 4.6 | Datum: 2026-06-19*
