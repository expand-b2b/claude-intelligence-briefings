# Claude Intelligence Briefing - 2026-06-18

Quellen: GitHub Releases (vollständig). Anthropic Blog und Reddit waren im Remote-Container nicht erreichbar (Netzwerk-Allowlist).

---

## Neue Releases

### v2.1.181 (17.06.2026, 22:07 UTC) -- INNERHALB 48H

Das umfangreichste Release der Woche mit über 35 Einträgen.

**Neue Funktionen:**
- `/config key=value` Syntax: Beliebige Einstellungen direkt aus dem Prompt setzen, z.B. `/config thinking=false`. Funktioniert in interaktiv, `-p` und Remote Control.
- `sandbox.allowAppleEvents`: Opt-in-Einstellung für sandboxed Commands auf macOS.
- `CLAUDE_CLIENT_PRESENCE_FILE`: Umgebungsvariable, die mobile Push-Benachrichtigungen unterdrückt, solange man am Rechner ist.
- Bun Runtime auf 1.4 aktualisiert.
- Streaming verbessert: Lange Absätze erscheinen nun zeilenweise statt geblockt.
- Auto-Retry bei API-Verbindungsabbrüchen während des Denkens (kein manueller Neustart mehr nötig).
- Subagent-Panel: Idle-Agenten blenden sich nach 30 Sekunden aus, Liste begrenzt auf 5 Zeilen mit Scroll-Hinweisen.
- MCP OAuth Browser-Seite: neues visuelles Design, schließt sich nach Erfolg automatisch.
- Subagenten respektieren jetzt das 5-Ebenen-Tiefenlimit (foreground wie background).

**Wichtige Fixes:**
- Prompt Caching auf Custom `ANTHROPIC_BASE_URL` und Foundry repariert (per-request Attestation Token hat Cache invalidiert).
- Write/Edit erzeugte 0-Byte oder abgeschnittene Dateien auf Netzlaufwerken und Cloud-Sync-Ordnern -- behoben.
- Startup-Regression behoben (120ms Verzögerung pro Start seit 2.1.169).
- Startup-Blockierung bei langsamen Account-Settings-Fetches behoben (bis zu 15 Sekunden).
- `/recap` und Conversation Forks nutzten nach Model-Switch noch das alte Modell -- behoben.
- Hook `if`-Bedingungen für `Edit(src/**)`, `Read(~/.ssh/**)` etc. matchen jetzt korrekt.
- AWS `awsCredentialExport` Credential-Refresh-Loop behoben.
- AskUserQuestion: Multi-Select-Antworten mit freiem Text wurden bisher stillschweigend verworfen -- behoben.

---

### v2.1.179 (16.06.2026, 20:22 UTC) -- INNERHALB 48H

Reine Bugfix-Release.

- Verbindungsabbrüche mitten im Stream: Partielle Antworten bleiben jetzt erhalten statt rohem Fehler.
- Mouse-Wheel-Scrolling in WSL2 unter Windows Terminal und VS Code repariert (Regression aus 2.1.172).
- Sandbox `denyRead`/`allowRead` Glob über große Verzeichnisbäume machte Bash-Tool-Description enorm -- behoben.
- Remote-Sessions: Background-Tasks erschienen nicht mehr als "noch laufend" zwischen Turns -- behoben.
- Plugin-Ladeperformance in Remote-Sessions verbessert.

---

### v2.1.178 (15.06.2026, 21:35 UTC) -- INNERHALB 48H

**Neue Funktionen:**
- `Tool(param:value)` Permission Rules: Matcht Tool-Input-Parameter mit `*`-Wildcard, z.B. `Agent(model:opus)` um Opus-Subagenten zu blockieren.
- Verschachtelte `.claude/skills`-Verzeichnisse: Skills in Unterverzeichnissen werden geladen; bei Namenskonflikt erscheint der tiefere als `<dir>:<name>`.
- Verschachtelte `.claude/`-Verzeichnisse: Agent, Workflow und Output-Style aus dem nächstgelegenen Verzeichnis gewinnt bei Namenskollision.
- Auto-Mode: Subagent-Spawns werden jetzt vom Classifier vor dem Start bewertet.
- `/doctor` mit flacherem Layout und klareren Status-Icons.
- Remote Control: Verbindungsfehler zeigen jetzt persistenten roten `/rc failed`-Indikator.
- `/bug` erfordert jetzt eine Beschreibung vor dem Absenden.

**Wichtige Fixes:**
- Subagent-Transcript zeigt jetzt Tool-Results und Live-Progress.
- MCP `disallowedTools` mit Server-Level-Spezifikationen wurden stillschweigend ignoriert -- behoben.
- Vim-Mode Undo (`u`) steppt jetzt korrekt durch NORMAL/VISUAL-Mode-Kommandos.

---

### v2.1.176 (12.06.2026) -- AUSSERHALB 48H (zur Vollständigkeit)

- Session-Titel werden in der Sprache der Konversation generiert (oder per `language`-Setting fixiert).
- `footerLinksRegexes` Setting für Regex-gematchte Link-Badges in der Footer-Zeile.
- Auto-Mode-Fix für Fable 5 bei Organisationen ohne Opus 4.8 (fällt jetzt auf bestes verfügbares Opus zurück).
- Hook `if`-Bedingungen für File-Path-Patterns repariert.
- Remote Control: Model-Switch wird beim Verbinden nicht mehr still überschrieben.

---

## Blog/Ankündigungen

Anthropic-Blog war im Remote-Container nicht erreichbar. Keine verifizierten Ankündigungen aus dieser Quelle.

---

## Community-Highlights

Reddit (r/ClaudeCode) war im Remote-Container nicht erreichbar. Keine verifizierten Community-Daten.

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| `/config key=value` Syntax (v2.1.181) | Hoch | Minuten | Hoch | Hoch |
| Hook `if`-Bedingungen repariert (v2.1.181 + v2.1.176) | Hoch | Minuten | Hoch | Hoch |
| `Tool(param:value)` Permission Rules (v2.1.178) | Hoch | Stunden | Hoch | Hoch |
| Nested `.claude/skills` Directories (v2.1.178) | Hoch | Stunden | Hoch | Hoch |
| Write/Edit 0-Byte-Fix auf Netzlaufwerken (v2.1.181) | Hoch | keine | Hoch | Hoch |
| Prompt-Caching-Fix für Custom Base URL (v2.1.181) | Mittel | keine | Hoch | Mittel |
| Subagent 5-Ebenen-Tiefenlimit (v2.1.181) | Mittel | keine | Mittel | Mittel |
| Auto-Mode Fable-5-Fix (v2.1.176) | Mittel | keine | Mittel | Mittel |
| `CLAUDE_CLIENT_PRESENCE_FILE` (v2.1.181) | Niedrig | Minuten | Niedrig | Niedrig |
| MCP OAuth Auto-Close (v2.1.181) | Niedrig | keine | Niedrig | Niedrig |

---

## Empfohlene Aktionen

1. **Hooks prüfen und testen (sofort, Minuten):** Der Fix für `if`-Bedingungen in Hooks (z.B. `Edit(src/**)`, `Read(.env)`) war ein stiller Bug. Bestehende Hooks im Cowork OS durchgehen und sicherstellen, dass sie mit v2.1.181 das tun, was erwartet wird -- sie könnten jetzt erstmals korrekt feuern.

2. **`Tool(param:value)` Permission Rules einführen (diese Woche, Stunden):** Damit lassen sich teure Modelle (Opus) in Subagenten gezielt blockieren, z.B. `Agent(model:opus)` als Deny-Rule. Relevant für Kostenkontrolle in B2B-Deployments bei EXPAND.

3. **Nested `.claude/skills` Struktur evaluieren (diese Woche, Stunden):** Modulare Skill-Organisation pro Projekt-Unterverzeichnis ist jetzt möglich. Prüfen, ob bestehende Skills sinnvoll aufgeteilt werden können.

4. **`/config` Syntax in Workflows nutzen (sofort, Minuten):** Für Onboarding-Flows oder Setup-Skripte können jetzt Settings direkt per `/config` gesetzt werden, ohne JSON-Dateien zu bearbeiten.

5. **Auf v2.1.181 updaten (sofort):** Der Write/Edit-Fix für Netzlaufwerke und Cloud-Sync-Ordner ist kritisch, falls das Cowork OS auf geteilten Laufwerken oder OneDrive/Google Drive arbeitet.

---

## Keine Aktion nötig

- **Bun 1.4 Update:** Automatisch im Bundle, kein manueller Eingriff.
- **Streaming-Verbesserungen:** Automatisch, kein Konfigurationsaufwand.
- **Auto-Retry bei Verbindungsabbrüchen:** Automatisch, kein Konfigurationsaufwand.
- **Subagent-Panel-Verbesserungen:** UX-Änderung, kein Anpassungsbedarf.
- **MCP OAuth Browser-Seite:** Optische Änderung, kein Anpassungsbedarf.
- **Startup-Performance-Fixes:** Automatisch nach Update.
- **AskUserQuestion Multi-Select-Fix:** Betrifft Edge Case, kein Handlungsbedarf.
- **AWS Credential-Refresh-Fix:** Nur relevant bei AWS-Bedrock-Nutzung.

---

*Datenstand: 2026-06-18. Quellen: GitHub Releases (anthropics/claude-code, v2.1.176 bis v2.1.181). Anthropic Blog und Reddit waren nicht erreichbar.*
