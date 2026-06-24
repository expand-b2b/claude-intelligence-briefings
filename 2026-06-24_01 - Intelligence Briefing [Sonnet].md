# Claude Intelligence Briefing - 2026-06-24

## Neue Releases

### v2.1.187 (2026-06-23, gestern)

**Sicherheit:**
- Neues `sandbox.credentials`-Setting: Sandbox-Befehle werden vom Lesen von Credential-Dateien und geheimen Umgebungsvariablen blockiert. Relevant für Enterprise-Deployments mit sensiblen API-Keys.

**Administration:**
- Org-konfigurierte Modell-Einschränkungen greifen jetzt im Modell-Picker, bei `--model`, `/model` und `ANTHROPIC_MODEL`. Teams können Modellauswahl zentral steuern.
- Maus-Click-Unterstützung in Fullscreen-Menüs (Permission-Prompts, `/model`, `/config`).

**MCP-Server:**
- Remote-MCP-Tool-Calls, die ohne Antwort hängen, brechen jetzt nach 5 Minuten ab statt endlos zu blockieren. Timeout anpassbar via `CLAUDE_CODE_MCP_TOOL_IDLE_TIMEOUT`.

**Performance:**
- Claude Code Remote-Sessions starten jetzt ca. 2,7s schneller.
- VSCode-Extension hängt nicht mehr beim Fortsetzen großer Sessions.

**Workflow-Stabilität:**
- `--json-schema` und `agent({schema})`: Strukturierter Output funktioniert jetzt zuverlässig, kein endloses Retry mehr.
- Worktree-Aufräumen: Gesperrte `.git/worktrees/`-Einträge von abgestürzten Agents werden automatisch bereinigt.

**UX:**
- `/install-github-app`: GitHub-Actions-Workflow-Setup ist jetzt optional.
- `/btw`: Pfeiltasten-Navigation durch frühere Antworten.
- `/plugin`: Zeigt ungekannte Plugins zur Bereinigung.

---

### v2.1.186 (2026-06-22, vorgestern)

**MCP-Server-Verwaltung:**
- `claude mcp login <name>` und `claude mcp logout <name>`: MCP-Server direkt über die CLI authentifizieren ohne interaktives `/mcp`-Menü. Mit `--no-browser` auch über SSH nutzbar.
- `claude mcp get` und `claude mcp remove` schlagen bei Tippfehlern den ähnlichsten Server-Namen vor.

**Skills und Plugins:**
- Neuer "Skills"-Abschnitt im `/plugin`-Tab "Installed".
- Skill-Frontmatter akzeptiert jetzt kebab-case, snake_case und camelCase für `display-name`, `default-enabled`, `fallback` und `metadata.*`.
- Fehlerhafte YAML-Frontmatter in `SKILL.md` führt nicht mehr zum Stillschweigen, sondern lädt den Skill-Body mit leeren Metadaten.

**Bash-Integration:**
- `!`-Befehle lösen jetzt automatisch eine Claude-Antwort auf den Output aus. Deaktivierbar mit `"respondToBashCommands": false` in `settings.json`.

**Memory:**
- Agent erinnert sich jetzt selbst daran, `MEMORY.md` zu komprimieren, wenn das Größenlimit naht.

**Agenten-Teams:**
- Hintergrund-Agents zeigen Permission-Prompts jetzt im Haupt-Session statt sie automatisch abzulehnen.
- `/review <pr>` nutzt jetzt die gleiche Engine wie `/code-review medium`.
- Workflow `agent({schema})`-Subagents brechen nach 5 Versuchen bei Schema-Validierungsfehlern ab statt endlos zu schleifen.

---

## Blog/Ankündigungen

Anthropic Blog (anthropic.com/news) war im aktuellen Netzwerk nicht erreichbar. Reddit (r/ClaudeCode) ebenfalls blockiert. Keine externen Ankündigungen verfügbar.

---

## Community-Highlights

Keine Daten verfügbar (Reddit-Zugang blockiert). Relevante Quellen für manuelle Prüfung:
- github.com/anthropics/claude-code/releases
- github.com/rohitg00/awesome-claude-code-toolkit
- github.com/sickn33/antigravity-awesome-skills

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| `claude mcp login/logout` CLI | Hoch | Minuten | Hoch | **Hoch** |
| `sandbox.credentials`-Setting | Hoch | Minuten | Hoch | **Hoch** |
| Org-Modell-Einschränkungen | Hoch | Minuten | Hoch | **Hoch** |
| MCP-Tool-Timeout-Fix (auto) | Hoch | Keiner | Mittel | **Mittel** |
| Skill-Frontmatter flexibel (kebab/snake/camel) | Hoch | Minuten | Mittel | **Mittel** |
| `!`-Bash-Auto-Response | Mittel | Minuten | Mittel | **Mittel** |
| Skills-Abschnitt in `/plugin` | Mittel | Keiner | Niedrig | **Niedrig** |
| MEMORY.md-Kompaktierungshinweis | Niedrig | Keiner | Niedrig | **Niedrig** |

---

## Empfohlene Aktionen

1. **`claude mcp login/logout` testen**: In automatisierten Cowork-OS-Setups (z.B. GitHub Actions) ersetzt das den Browser-basierten Auth-Flow. Besonders für Onboarding neuer Klienten relevant, die MCP-Server wie Slack, Linear oder Notion einbinden.

2. **`sandbox.credentials`-Setting prüfen**: Für Cowork OS auf Enterprise-Mandanten das Setting in der zentralen `settings.json` aktivieren, um ungewollten Credential-Zugriff aus Sandbox-Befehlen zu blockieren.

3. **Org-Modell-Einschränkungen evaluieren**: Für B2B-Klienten mit Compliance-Anforderungen könnte das Einschränken auf bestimmte Modelle (z.B. kein Opus für Routinetasks) Kosten senken.

4. **Skill-Frontmatter-Kompatibilität prüfen**: Existierende Skills in Cowork OS auf Frontmatter-Konsistenz prüfen. Die neue Toleranz für verschiedene Schreibweisen macht spätere Refactorings einfacher.

5. **`respondToBashCommands`-Verhalten testen**: Das neue `!`-Verhalten könnte in bestimmten Hooks unerwünschte Loops auslösen. CLAUDE.md und Hooks-Konfiguration bei Bedarf mit `"respondToBashCommands": false` absichern.

---

## Keine Aktion nötig

- VSCode-Extension-Fix (automatisch mit Update)
- Remote-Session-Startzeit-Optimierung (automatisch)
- Worktree-Aufräumen (automatisch)
- `/btw`-Pfeiltasten-Navigation (UX-Verbesserung, kein Handlungsbedarf)
- MCP-Tool-Timeout-Fix (Standard-Timeout ausreichend, nur bei spezifischen Slow-APIs anpassen)
- MEMORY.md-Kompaktierungshinweis (läuft automatisch)

---

*Quellen: github.com/anthropics/claude-code/releases | Anthropic Blog und Reddit nicht erreichbar*
*Modell: claude-sonnet-4-6 | Erstellt: 2026-06-24*
