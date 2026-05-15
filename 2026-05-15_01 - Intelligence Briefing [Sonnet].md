# Claude Intelligence Briefing - 2026-05-15

## Neue Releases

### v2.1.142 (14. Mai 2026, 22:55 UTC) - AKTUELL

**`claude agents` erhält neue Konfigurationsflags:**
Hintergrundagenten lassen sich jetzt beim Starten vollständig konfigurieren: `--add-dir`, `--settings`, `--mcp-config`, `--plugin-dir`, `--permission-mode`, `--model`, `--effort`, `--dangerously-skip-permissions`. Das erlaubt präzise gesteuerte Multi-Agenten-Setups ohne interaktive Eingabe.

**Fast Mode wechselt auf Opus 4.7:**
Der Fast Mode nutzt standardmäßig Opus 4.7 statt 4.6. Wer 4.6 behalten will, setzt `CLAUDE_CODE_OPUS_4_6_FAST_MODE_OVERRIDE=1`.

**Vereinfachtes Plugin-als-Skill:**
Plugins mit einer `SKILL.md` im Wurzelverzeichnis (kein `skills/`-Unterordner nötig) werden jetzt direkt als Skill erkannt. Das senkt den Aufwand für eigene Skills deutlich.

**LSP-Server in Plugin-Details sichtbar:**
`/plugin details` und `claude plugin details` zeigen nun auch die LSP-Server eines Plugins.

**MCP-Timeout-Fix:**
`MCP_TOOL_TIMEOUT` greift jetzt korrekt für HTTP/SSE-MCP-Server. Bisher war der Timeout bei 60 Sekunden gedeckelt, unabhängig vom konfigurierten Wert.

**Weitere Fixes:**
- Hintergrundagenten erkennen bestehende Git-Worktrees wieder
- macOS: Daemon überlebt Sleep/Wake korrekt (kein Verbindungsabbruch mehr)
- Daemon beendet sich sauber nach Binary-Upgrade (kein Crash-Loop mehr)
- Klick auf Links in angehängten Agent-Sessions funktioniert wieder

---

### v2.1.141 (13. Mai 2026, 23:19 UTC)

**Hook-Output mit Terminal-Sequenzen:**
Hooks können jetzt Desktop-Benachrichtigungen, Fenstertitel und Bells ausgeben über das neue `terminalSequence`-Feld im JSON-Output, auch ohne steuerndes Terminal.

**`CLAUDE_CODE_PLUGIN_PREFER_HTTPS`:**
Plugins werden per HTTPS statt SSH von GitHub geklont, nützlich in Umgebungen ohne GitHub-SSH-Schlüssel.

**`ANTHROPIC_WORKSPACE_ID`:**
Neue Umgebungsvariable für Workload Identity Federation, um Tokens auf einen bestimmten Workspace zu beschränken.

**Rewind "Summarize up to here":**
Im Rewind-Menü lässt sich der Kontext bis zu einem früheren Punkt komprimieren, ohne den Rest zu verlieren.

**Hintergrundagenten behalten Berechtigungsmodus:**
Agents, die per `/bg` oder `←←` gestartet werden, übernehmen jetzt den aktuellen `permission-mode` statt auf den Standard zurückzufallen.

**Spinner-Feedback bei langen Denkphasen:**
Nach 10 Sekunden Denkzeit färbt sich der Spinner bernsteinfarben, um anzuzeigen, dass Claude noch arbeitet.

**Weitere Fixes:** Viele Bedienungsprobleme behoben (vim-Modus Ctrl+C, alternative Submit-Tasten, AskUserQuestion-Überlappung, Statusline-Mehrzeilenausgabe, licht-ANSI-Theme-Diff-Farben).

---

### v2.1.140 (12. Mai 2026)

- Agent `subagent_type` akzeptiert jetzt Groß-/Kleinschreibung und Trennzeichen-Varianten (`"Code Reviewer"` → `code-reviewer`)
- Fix: `/goal` hing bei gesperrten Hooks

---

### v2.1.139 (11. Mai 2026) - Referenz für Kontext

- **Agent View (Research Preview):** `claude agents` zeigt alle Sessions in einer Liste (laufend, blockiert, fertig)
- **`/goal`-Befehl:** Abbruchbedingung setzen, Claude arbeitet bis zur Erfüllung über Turns hinweg
- **Hook `args: string[]`:** Exec-Form startet Befehle direkt ohne Shell, keine Anführungszeichen nötig
- **Hook `continueOnBlock`:** PostToolUse-Hook kann Claude statt eines Abbruchs eine Begründung zurückspielen
- **`CLAUDE_PROJECT_DIR` in MCP-Servern:** MCP stdio-Server erhalten das Projektverzeichnis als Umgebungsvariable

---

## Blog/Ankündigungen

Anthropic-News-Seite war in dieser Umgebung nicht erreichbar (Host nicht in Allowlist). Keine verifizierten Blog-Einträge für dieses Briefing.

---

## Community-Highlights

Reddit r/ClaudeCode war in dieser Umgebung nicht erreichbar (Host nicht in Allowlist). Keine verifizierten Community-Themen für dieses Briefing.

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| `claude agents` Konfigurations-Flags | Hoch | Minuten | Hoch | Hoch |
| Plugin mit `SKILL.md` ohne `skills/`-Unterordner | Hoch | Minuten | Mittel | Hoch |
| Hook `continueOnBlock` für PostToolUse | Hoch | Stunden | Hoch | Hoch |
| `CLAUDE_PROJECT_DIR` in MCP-Servern | Mittel | Minuten | Mittel | Mittel |
| Hook `terminalSequence` für Benachrichtigungen | Mittel | Stunden | Mittel | Mittel |
| MCP-Timeout-Fix (`MCP_TOOL_TIMEOUT`) | Mittel | Minuten | Mittel | Mittel |
| Fast Mode auf Opus 4.7 | Niedrig | keine | Niedrig | Niedrig |
| `CLAUDE_CODE_PLUGIN_PREFER_HTTPS` | Niedrig | Minuten | Niedrig | Niedrig |

---

## Empfohlene Aktionen

1. **Sofort (Minuten):** Bestehende Skill-Plugins prüfen, ob eine `SKILL.md` im Wurzelverzeichnis den `skills/`-Unterordner ersetzen kann. Vereinfacht die Plugin-Struktur für eigene Cowork-OS-Skills.

2. **Diese Woche (Stunden):** `continueOnBlock: true` in PostToolUse-Hooks evaluieren. Damit kann Claude auf Hook-Ablehnungen reagieren und die Aufgabe anpassen statt abzubrechen. Konkret nützlich für Review- oder Validierungs-Hooks im Sales-Development-Workflow.

3. **Diese Woche (Stunden):** `claude agents` mit den neuen Flags in einem Test-Setup erproben. Die kombinierten Flags `--settings`, `--mcp-config` und `--permission-mode` ermöglichen reproduzierbare, isolierte Agenten-Sessions, z. B. für automatisierte Lead-Recherche ohne manuelle Konfiguration.

4. **Optional (Minuten):** `CLAUDE_PROJECT_DIR` in bestehenden MCP-Server-Configs prüfen, ob hardcodierte Pfade ersetzt werden können.

---

## Keine Aktion nötig

- Fast Mode Opus 4.7 Upgrade: kein manueller Eingriff nötig, Änderung ist automatisch aktiv
- macOS Sleep/Wake Fix: betrifft nur macOS-Nutzer, serverseitige Setups nicht betroffen
- Spinner-Feedback und visuelle Fixes: reine UI-Verbesserungen, kein Handlungsbedarf
- LSP-Server in Plugin-Details: informativ, kein Konfigurationsaufwand

---

*Quellen: GitHub Releases anthropics/claude-code (v2.1.139 bis v2.1.142)*
*Anthropic Blog und Reddit: in dieser Umgebung nicht erreichbar*
*Erstellt: 2026-05-15*
