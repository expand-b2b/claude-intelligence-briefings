# Claude Intelligence Briefing - 2026-05-06

## Neue Releases

### v2.1.129 (heute, 06.05.2026)
Veröffentlicht um 01:40 UTC. Enthält neue Plugin-Verteilungsoptionen und Terminal-Kompatibilitätsverbesserungen.

**Wichtigste Änderungen:**
- `--plugin-url <url>`: Lädt ein Plugin-ZIP direkt aus einer URL für die aktuelle Sitzung herunter. Ermöglicht zentrale Plugin-Verteilung ohne lokale Installation.
- `CLAUDE_CODE_FORCE_SYNC_OUTPUT=1`: Erzwingt synchronisierte Ausgabe auf Terminals, die die automatische Erkennung verpassen (z.B. Emacs `eat`).
- `CLAUDE_CODE_PACKAGE_MANAGER_AUTO_UPDATE`: Aktiviert automatische Hintergrund-Updates auf Homebrew- und WinGet-Installationen mit Neustart-Aufforderung.
- Plugin-Manifeste: `themes` und `monitors` sollten jetzt unter `"experimental": { ... }` deklariert werden. Bisherige Top-Level-Deklarationen funktionieren noch, aber `claude plugin validate` gibt Warnungen aus.
- Gateway `/v1/models`-Erkennung für den `/model`-Picker ist jetzt opt-in via `CLAUDE_CODE_ENABLE_GATEWAY_MODEL_DISCOVERY=1` (war in 2.1.126-2.1.128 automatisch aktiv).
- Ctrl+R Verlaufs-Picker: Verbesserungen (Details im vollständigen Changelog).

### v2.1.128 (04.05.2026)
**Wichtigste Änderungen:**
- Bare `/color` (ohne Argumente) wählt jetzt eine zufällige Sitzungsfarbe.
- `/mcp` zeigt jetzt die Anzahl der Tools pro verbundenen Server und markiert Server, die mit 0 Tools verbunden haben. Gut für Diagnose von MCP-Konfigurationsproblemen.
- `--plugin-dir` akzeptiert jetzt `.zip`-Archive zusätzlich zu Verzeichnissen. Vereinfacht Plugin-Distribution.
- `--channels` funktioniert jetzt mit API-Key-Authentifizierung (Console-Orgs müssen `channelsEnabled: true` setzen).
- `/model`-Picker: Doppelte Opus 4.7-Einträge zusammengeführt, aktueller Opus erscheint als "Opus".
- Subprozesse (Bash, Hooks, MCP, LSP) erben keine `OTEL_*`-Umgebungsvariablen mehr.
- `workspace` ist jetzt ein reservierter MCP-Server-Name.

### v2.1.126 (01.05.2026)
**Wichtigste Änderungen:**
- `/model`-Picker listet Modelle vom Gateway-Endpoint wenn `ANTHROPIC_BASE_URL` auf ein kompatibles Gateway zeigt.
- `claude project purge [path]`: Löscht gesamten Claude-Code-Zustand eines Projekts (Transcripts, Tasks, Dateihistorie, Config-Eintrag). Unterstützt `--dry-run`, `-y/--yes`, `-i/--interactive`, `--all`.
- `--dangerously-skip-permissions` umgeht jetzt auch Schreibschutz für `.claude/`, `.git/`, `.vscode/` und Shell-Config-Dateien.
- `claude auth login` akzeptiert jetzt den OAuth-Code direkt per Terminal-Eingabe (für WSL2, SSH, Container-Umgebungen).
- `claude_code.skill_activated` OpenTelemetry-Event wird jetzt ausgelöst.

### v2.1.122 (28.04.2026)
**Wichtigste Änderungen:**
- `ANTHROPIC_BEDROCK_SERVICE_TIER`: Neue Umgebungsvariable für Bedrock-Service-Tier-Auswahl (`default`, `flex`, `priority`).
- `/resume` findet jetzt Sitzungen anhand eingefügter PR-URLs (GitHub, GitHub Enterprise, GitLab, Bitbucket).
- MCP: Verbesserte Darstellung von claude.ai-Konnektoren im `/mcp`-Befehl.
- OpenTelemetry: Numerische Attribute werden jetzt als Zahlen, nicht als Strings emittiert.

## Blog/Ankuendigungen

Anthropic-Blog war heute nicht abrufbar (Host nicht in Allowlist). Keine verifizierten Ankündigungen für heute.

## Community-Highlights

Reddit (r/ClaudeCode) war heute nicht abrufbar (Host nicht in Allowlist). Kein Community-Input für heute.

## Relevanz fuer Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschaeftswert | Prioritaet |
|---|---|---|---|---|
| `--plugin-url`: Plugin-ZIP aus URL laden | Hoch | Minuten | Hoch | Hoch |
| `--plugin-dir` akzeptiert .zip-Archive | Hoch | Minuten | Mittel | Hoch |
| `--channels` mit API-Key-Auth | Hoch | Stunden | Hoch | Hoch |
| `ANTHROPIC_BEDROCK_SERVICE_TIER` | Mittel | Minuten | Hoch (Enterprise) | Hoch |
| `/mcp` Tool-Zähler und 0-Tools-Warnung | Hoch | keine | Mittel | Hoch |
| `claude project purge` | Mittel | Minuten | Mittel | Mittel |
| `CLAUDE_CODE_PACKAGE_MANAGER_AUTO_UPDATE` | Mittel | Minuten | Mittel | Mittel |
| Plugin-Manifest: `experimental`-Block | Mittel | Minuten | Niedrig | Niedrig |
| `/resume` mit PR-URL-Suche | Niedrig | keine | Niedrig | Niedrig |
| Gateway Model Discovery opt-in | Niedrig | Minuten | Niedrig | Niedrig |

## Empfohlene Aktionen

1. **`--plugin-url` testen**: Falls Cowork-OS-Plugins intern gehostet werden sollen, kann `--plugin-url` die Verteilung ohne lokale Installation ermöglichen. Pilot: eine Session starten mit `claude --plugin-url <interne-url>` und prüfen ob das Plugin korrekt lädt.

2. **`--channels` mit API-Key prüfen**: Da Channels jetzt ohne OAuth-Flow via API-Key funktionieren, könnte dies die Einrichtung für neue B2B-Klienten vereinfachen. Console-Org-Setting `channelsEnabled: true` prüfen.

3. **Bedrock-Tier für Enterprise-Kunden**: `ANTHROPIC_BEDROCK_SERVICE_TIER=priority` in Kunden-Deployments mit Bedrock evaluieren, wenn garantierte Performance gefragt ist.

4. **MCP-Server-Diagnose mit neuem `/mcp`**: Bei nächsten MCP-Problemen `/mcp`-Output prüfen, ob Server mit 0 Tools auftauchen. Gibt frühzeitig Hinweise auf Konfigurationsfehler.

5. **Plugin-Manifeste aktualisieren**: Falls eigene Plugins entwickelt werden, `themes` und `monitors` in den `experimental`-Block verschieben, bevor `claude plugin validate` in CI-Pipelines Fehler produziert.

## Keine Aktion noetig

- **`CLAUDE_CODE_FORCE_SYNC_OUTPUT=1`**: Nur relevant für Nutzer mit Emacs `eat` oder ähnlichen Terminals. Kein typischer B2B-Anwendungsfall.
- **`workspace` als reservierter MCP-Name**: Nur relevant falls bestehende MCP-Server so heißen. Prüfen ob betroffen, dann umbenennen.
- **`--dangerously-skip-permissions` Erweiterung**: Kein Produktionseinsatz empfohlen.
- **OTEL-Änderungen (numeric attributes, subprocess isolation)**: Nur relevant wenn eigenes OTEL-Monitoring betrieben wird.
- **v2.1.123 OAuth-Fix**: War ein Bug-Fix ohne neue Features.

---
*Quellen: GitHub Releases API (anthropics/claude-code). Anthropic Blog und Reddit nicht abrufbar (Host-Allowlist). Generiert mit Claude Sonnet 4.6.*
