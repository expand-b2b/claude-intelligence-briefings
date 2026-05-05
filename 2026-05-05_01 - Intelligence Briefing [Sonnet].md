# Claude Intelligence Briefing - 2026-05-05

## Neue Releases

### v2.1.128 (veröffentlicht 2026-05-04, gestern)

Größeres Release mit neuen Funktionen und einem Sicherheits-Fix.

**Neue Funktionen:**
- `claude project purge [path]` löscht alle Claude-Code-Zustände eines Projekts (Transcripts, Tasks, File-History, Config-Eintrag). Unterstützt `--dry-run`, `-y/--yes`, `-i/--interactive` und `--all`
- `/model`-Picker listet jetzt Modelle vom Gateway-Endpunkt `/v1/models`, wenn `ANTHROPIC_BASE_URL` auf einen Anthropic-kompatiblen Gateway zeigt
- `--dangerously-skip-permissions` umgeht jetzt auch Schreibschutz für `.claude/`, `.git/`, `.vscode/` und Shell-Config-Dateien (katastrophale Löschbefehle fordern weiterhin Bestätigung)
- `claude auth login` akzeptiert OAuth-Code per Terminal-Paste, wenn Browser-Callback localhost nicht erreichen kann (WSL2, SSH, Container)
- `claude_code.skill_activated` OTEL-Event trägt neues `invocation_trigger`-Attribut: `"user-slash"`, `"claude-proactive"` oder `"nested-skill"`
- Auto-Modus: Spinner wird rot, wenn ein Permissions-Check blockiert

**Windows-Verbesserungen:**
- PowerShell 7 über Microsoft Store, MSI oder .NET Global Tool wird jetzt erkannt
- Wenn das PowerShell-Tool aktiviert ist, wird PowerShell als primäre Shell statt Bash verwendet

**Sicherheits-Fix:**
- `allowManagedDomainsOnly` und `allowManagedReadPathsOnly` wurden ignoriert, wenn eine übergeordnete Managed-Settings-Quelle keinen `sandbox`-Block enthielt

**Wichtige Bug-Fixes:**
- Bilder über 2000px brechen die Session nicht mehr (automatisches Downscaling)
- OAuth-Login-Timeouts in IPv6-only Devcontainern und hinter Proxys behoben
- Parallele Bash-Tool-Aufrufe: fehlschlagende Read-Only-Befehle canceln keine Geschwister-Aufrufe mehr
- Sub-Agent-Fortschritts-Zusammenfassungen mit fehlendem Prompt-Cache-Hinweis (~3x weniger `cache_creation`) behoben
- Sitzungen auf 1M-Kontext-Modellen wurden fälschlicherweise mit "Prompt is too long" blockiert

### v2.1.126 (veröffentlicht 2026-05-01, zur Referenz)

- Bare `/color` (ohne Argument) wählt eine zufällige Session-Farbe
- `/mcp` zeigt jetzt die Tool-Anzahl pro Server und markiert Server mit 0 Tools
- `--plugin-dir` akzeptiert `.zip`-Archive zusätzlich zu Verzeichnissen
- `--channels` funktioniert jetzt mit Console-Authentifizierung (API-Key)
- `/model`-Picker: doppelte Opus-4.7-Einträge zusammengeführt
- `workspace` ist jetzt ein reservierter MCP-Server-Name (bestehende Server mit diesem Namen werden übersprungen)
- `EnterWorktree` erstellt neuen Branch von lokalem HEAD statt `origin/<default-branch>`

## Blog/Ankündigungen

Die Anthropic-News-Seite war nicht erreichbar (Host nicht in Allowlist). Keine verifizierten Blog-Einträge für diesen Zeitraum.

## Community-Highlights

Reddit r/ClaudeCode war nicht erreichbar (Host nicht in Allowlist). Keine Community-Daten für diesen Zeitraum.

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Sicherheits-Fix `allowManagedDomainsOnly` | Hoch | Minuten (Update) | Hoch | Hoch |
| `claude project purge` | Mittel | Minuten | Mittel | Mittel |
| OAuth-Paste im Terminal | Mittel | Minuten | Mittel | Mittel |
| `--dangerously-skip-permissions` erweitert | Mittel | Minuten | Niedrig | Niedrig |
| Gateway-Modell-Listing via `/model` | Niedrig | keine | Niedrig | Niedrig |
| Windows PowerShell als primäre Shell | Niedrig | keine | Niedrig | Niedrig |

## Empfohlene Aktionen

1. **Sofort: Claude Code auf v2.1.128 aktualisieren.** Der Sicherheits-Fix für `allowManagedDomainsOnly` ist relevant, wenn EXPAND B2B Managed Settings mit Sandbox-Konfigurationen einsetzt. Einfach: `npm update -g @anthropic-ai/claude-code`
2. **`claude project purge` in Workspace-Reset-Workflows prüfen.** Nützlich für Onboarding oder bei defekten Projektzuständen. Dokumentation im Cowork OS aufnehmen.
3. **OAuth-Terminal-Paste für Server-Deployments testen.** Falls Claude Code in WSL2 oder Containern ohne Browser-Zugang genutzt wird, vereinfacht diese Option die Authentifizierung erheblich.

## Keine Aktion nötig

- Gateway-Modell-Listing: Cowork OS nutzt keinen custom `ANTHROPIC_BASE_URL`-Gateway
- Windows PowerShell: Cowork OS läuft auf Mac/Linux
- Bare `/color` ohne Argument: rein ästhetische Funktion
- `workspace`-Reservierung als MCP-Name: betrifft nur Teams mit einem MCP-Server namens "workspace"
- OTEL `invocation_trigger`-Attribut: nur relevant bei aktivem OpenTelemetry-Monitoring

---
*Quellen: GitHub Releases API (github.com/anthropics/claude-code/releases). Anthropic Blog und Reddit nicht erreichbar.*
*Modell: claude-sonnet-4-6*
