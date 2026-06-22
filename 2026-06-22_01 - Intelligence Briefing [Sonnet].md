# Claude Intelligence Briefing - 2026-06-22

## Neue Releases

### Claude Code 2.1.185 (aktuellste Version)
- Stream-Stall-Hinweis zeigt jetzt "Waiting for API response · will retry in …" statt der alten Meldung
- Stall-Timer ausgelöst nach 20 Sekunden (vorher 10 Sekunden)

### Claude Code 2.1.183
- **Auto Mode Safety:** Destruktive Git-Befehle (`git reset --hard`, `git checkout -- .`, `git clean -fd`) werden blockiert, wenn der Nutzer nicht explizit nach Verwerfen gefragt hat
- `git commit --amend` blockiert, wenn der Commit nicht in dieser Session erstellt wurde
- `terraform destroy`, `pulumi destroy`, `cdk destroy` blockiert ohne expliziten Stack-Aufruf
- `/config key=value` jetzt mit `--help` Flag für alle Shorthand-Keys
- `/config` Toggle: Esc speichert und schliesst (statt Revert)
- Startup-Zeile "setup issues" entfernt, `/doctor` als Ersatz
- Fix: `thinking.disabled.display` 400-Fehler bei Subagent-Spawns behoben
- Fix: WebSearch gab leere Ergebnisse in Subagents zurück

### Claude Code 2.1.181
- **`/config key=value`** Syntax für alle Settings direkt aus dem Prompt (z.B. `/config thinking=false`)
- `CLAUDE_CLIENT_PRESENCE_FILE` Umgebungsvariable: Mobile Push-Benachrichtigungen unterdrücken wenn am Rechner
- Bun Runtime auf 1.4 aktualisiert
- Streaming verbessert: lange Absätze erscheinen zeilenweise statt auf einmal
- Auto-Retry bei API-Verbindungsabbrüchen während des Thinking-Blocks
- Subagent-Panel: Idle-Subagents blenden sich nach 30 Sekunden aus, max. 5 Reihen
- Fix: Write/Edit erzeugte 0-Byte-Dateien auf Netzlaufwerken und Cloud-Sync-Ordnern
- Fix: Startup-Verzögerung ~120ms bei frischen Umgebungen

### Claude Code 2.1.178
- **Agent Teams neu gestaltet:** `TeamCreate` und `TeamDelete` Tools entfernt, jede Session hat implizit ein Team, Teammates direkt per `Agent(name=...)` spawnen
- **`Tool(param:value)` Syntax für Permissions:** z.B. `Agent(model:opus)` um Opus-Subagents zu blockieren
- **Nested `.claude/` Verzeichnisse:** Skills in Unterordnern werden geladen, bei Namenskollision erscheint das nested Skill als `<dir>:<name>`
- Workflow-Trigger nur noch bei expliziten Phrasen wie "run a workflow" (nicht mehr bei jeder Erwähnung)
- `/bug` erfordert jetzt eine Beschreibung vor dem Submit

### Claude Code 2.1.175
- `enforceAvailableModels` Managed Setting: `availableModels` Allowlist beschränkt auch das Default-Modell, Nutzer/Projekt-Settings können keine Managed-Liste erweitern

### Claude Code 2.1.172
- **Sub-Agents können eigene Sub-Agents spawnen** (bis zu 5 Ebenen tief)
- Amazon Bedrock liest AWS-Region aus `~/.aws` Config wenn `AWS_REGION` nicht gesetzt
- Suchleiste im Plugin-Marketplace
- Fix: 1M-Kontext-Sessions ohne Credits nicht mehr permanent blockiert

### Claude Code 2.1.170
- **Claude Fable 5 eingeführt:** Mythos-class Modell, "capabilities exceed those of any model we've ever made generally available"

### Claude Code 2.1.169
- `--safe-mode` Flag startet Claude Code ohne alle Anpassungen (CLAUDE.md, Plugins, Skills, Hooks, MCP-Server) für Troubleshooting
- Self-hosted Runner: `post-session` Lifecycle-Hook nach Session-Ende
- `/cd` Befehl um Working Directory zu wechseln ohne Prompt-Cache zu unterbrechen


## Blog/Ankuendigungen

Anthropic Blog konnte in dieser Session nicht abgerufen werden (Host ausserhalb der Netzwerk-Allowlist). Kernankündigung bekannt aus Changelog:

**Claude Fable 5** wurde als "Mythos-class" Modell angekündigt, das alle bisherigen öffentlichen Modelle übertrifft. Laut Changelog: "safe for general use". Details: https://www.anthropic.com/news/claude-fable-5-mythos-5


## Community-Highlights

Reddit (r/ClaudeCode) war in dieser Session nicht abrufbar. Basierend auf den Release-Notes sind folgende Themen wahrscheinlich diskutiert:
- Agent Teams Redesign (implizite Teams, kein Setup mehr nötig)
- Fable 5 Zugang und Kosten
- Sub-Agent-Ketten (5 Ebenen tief) und deren praktische Anwendung
- Auto Mode Safety für destruktive Git-Operationen


## Relevanz fuer Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschaeftswert | Prioritaet |
|---|---|---|---|---|
| Fable 5 als neues Top-Modell | Hoch | Minuten (Modell wechseln) | Hoch | Sehr hoch |
| Sub-Agents spawnen Sub-Agents (5 Ebenen) | Hoch | Stunden (Workflows redesignen) | Hoch | Hoch |
| `Tool(param:value)` Permission Syntax | Hoch | Minuten (settings.json updaten) | Mittel | Hoch |
| Auto Mode Safety fuer Git/Terraform | Hoch | Minuten (auto mode aktivieren) | Hoch | Hoch |
| `/config key=value` Syntax | Mittel | Minuten | Niedrig | Mittel |
| Nested `.claude/` Verzeichnisse fuer Skills | Mittel | Stunden (Repo-Struktur anpassen) | Mittel | Mittel |
| `enforceAvailableModels` fuer Enterprise | Mittel | Stunden (Managed Settings) | Hoch | Mittel |
| `--safe-mode` Flag fuer Troubleshooting | Niedrig | Minuten | Niedrig | Niedrig |
| `CLAUDE_CLIENT_PRESENCE_FILE` Env-Var | Niedrig | Minuten | Niedrig | Niedrig |


## Empfohlene Aktionen

1. **Fable 5 testen:** `claude --version` pruefen, Update auf 2.1.185 falls nicht aktuell, dann Fable 5 per `/model` aktivieren. Sales-Development-Prompts auf Qualitaetsverbesserung pruefen.

2. **Sub-Agent-Ketten fuer Cowork OS nutzen:** Komplexe Sales-Development-Workflows koennen jetzt mehrstufig delegiert werden. Beispiel: Haupt-Agent koordiniert Recherche-Subagent, der selbst Daten-Analyse-Subagents spawnt.

3. **`Tool(param:value)` Permission Syntax in `.claude/settings.json` einrichten:** Bestimmte Modelle oder teure Subagent-Typen per `Agent(model:opus)` kontrollieren, um unbeabsichtigte Kosten bei automatisierten Runs zu vermeiden.

4. **Auto Mode Safety aktivieren:** Bei automatisierten Briefing-Routinen (wie dieser) sicherstellt, dass destruktive Git-Operationen nicht unbeabsichtigt ausgefuehrt werden. Auto Mode pruefe ob bereits aktiv.

5. **Nested Skills-Struktur pruefen:** Falls Cowork OS Skills in Unterordnern organisiert werden sollen, ist die Grundlage jetzt vorhanden. Skills in `.claude/skills/<bereich>/` anlegen.


## Keine Aktion noetig

- Stream-Stall-Hinweis-Verbesserung (2.1.185): Rein kosmetisch, keine Konfiguration noetig
- Bun 1.4 Update (2.1.181): Automatisch mit Claude Code Update
- `wheelScrollAccelerationEnabled` Setting: Nur relevant fuer manuelle Fullscreen-Nutzung
- `/cd` Befehl (2.1.169): Nuetzlich, aber kein aktiver Handlungsbedarf
- Bedrock GovCloud Fix (2.1.176): Nicht relevant fuer EXPAND B2B Setup
- Startup-Crash-Fix fuer korrupte `.claude.json` (2.1.181): Praevention, kein Handlungsbedarf
