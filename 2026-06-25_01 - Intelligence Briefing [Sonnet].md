# Claude Intelligence Briefing - 2026-06-25

**Scout:** Claude Sonnet 4.6 | **Zeitraum:** Letzte 48 Stunden | **Quellen:** GitHub Releases (OK), Anthropic Blog (nicht erreichbar), Reddit (nicht erreichbar)

---

## Neue Releases

### v2.1.191 (24. Juni 2026, 21:58 UTC)

**Wichtigste Änderungen:**

- **`/rewind` Befehl (NEU):** Konversation kann jetzt auf den Stand vor einem `/clear` zurückgesetzt werden. Nützlich wenn man versehentlich den Kontext löscht.
- **Hooks-Bug behoben:** Hooks mit komma-getrennten Matchern (z. B. `"Bash,PowerShell"`) haben bisher still versagt und wurden nie ausgeführt. Jetzt behoben.
- **Hintergrund-Agenten-Stopp permanent:** Agenten aus dem Tasks-Panel zu stoppen ist jetzt dauerhaft. Bisher kamen gestoppte Agenten wieder.
- **CPU-Nutzung beim Streaming -37%:** Text-Updates werden auf 100ms gebündelt statt bei jedem Token gerendert.
- **MCP-Zuverlässigkeit verbessert:** Capability Discovery (`tools/list`, `prompts/list`, `resources/list`) wiederholt bei flüchtigen Netzwerkfehlern.
- **MCP OAuth headless-fähig:** Headless-Umgebungen überspringen den Browser-Popup und gehen direkt zum URL-Einfügen-Prompt.
- **Sandbox-Netzwerk-Dialog:** Erlaubte Hosts bleiben für die gesamte Session gespeichert statt bei jeder Verbindung neu zu fragen.
- **`/permissions` Recently-denied:** Genehmigungen bleiben jetzt nach dem Schließen bestehen.
- **MCP-Fehler lesbarer:** HTTP-404-Fehler zeigen jetzt die URL und verweisen auf die MCP-Konfiguration.
- **Speicherverbrauch reduziert:** Geringeres Memory-Wachstum bei langen Sessions durch optimierten Terminal-Output-Cache.

### v2.1.190 (24. Juni 2026, 15:53 UTC)

- Bug fixes und Stabilitätsverbesserungen (keine Details veröffentlicht).

### v2.1.187 (23. Juni 2026, 21:03 UTC)

**Wichtigste Änderungen:**

- **`sandbox.credentials` Setting (NEU):** Blockiert Sandbox-Befehle vom Lesen von Credential-Dateien und geheimen Umgebungsvariablen. Sicherheitsgewinn für Team-Setups.
- **Org-Modell-Beschränkungen:** Administratoren können jetzt erlaubte Modelle per Org-Policy einschränken. Picker, `--model`, `/model` und `ANTHROPIC_MODEL` respektieren diese Einschränkungen mit klarer Fehlermeldung.
- **`agent({schema})` Structured Output Fix:** Der Structured-Output-Bug bei Workflows ist behoben. Das Modell konnte `StructuredOutput` unbegrenzt aufrufen; Folgeturns gaben keinen strukturierten Output zurück. Beide Probleme behoben.
- **Remote MCP Timeout:** MCP-Tool-Calls die 5 Minuten hängen, brechen jetzt mit einem Fehler ab statt unbegrenzt zu blockieren. Überschreibbar mit `CLAUDE_CODE_MCP_TOOL_IDLE_TIMEOUT`.
- **Remote-Session-Start -2,7s:** Startup-Verzögerung durch CA-System-Trust-Install behoben.
- **`/install-github-app` flexibler:** GitHub Actions Workflow-Setup ist jetzt optional. GitHub App und Workflow-Schritte lassen sich getrennt installieren.
- **`/btw` Navigation:** Pfeiltasten ←/→ zum Navigieren durch frühere Antworten.
- **VSCode Extension:** Wird nicht mehr unresponsive beim Fortsetzen großer Sessions.
- **Worktree-Cleanup:** Gesperrte `.git/worktrees/`-Einträge von abgebrochenen Agenten werden jetzt automatisch bereinigt.
- **Maus in Fullscreen-Menüs:** Klick-Unterstützung für Permission-Prompts, `/model`, `/config` usw. im Fullscreen-Modus.

---

## Blog/Ankündigungen

Anthropic Blog nicht erreichbar (Netzwerkrichtlinie der Remote-Umgebung). Keine Daten für diesen Zeitraum verfügbar.

---

## Community-Highlights

Reddit (r/ClaudeCode) nicht erreichbar (Netzwerkrichtlinie). Keine Community-Daten für diesen Zeitraum verfügbar.

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Hooks mit komma-getrennten Matchern behoben | Hoch | Minuten (Update + Test) | Hoch | **Hoch** |
| `agent({schema})` Structured Output Fix | Hoch | Minuten (npm update) | Hoch | **Hoch** |
| CPU-Nutzung Streaming -37% | Hoch | Keine (automatisch) | Mittel | **Hoch** |
| Remote MCP Timeout statt Hänger | Hoch | Keine (automatisch) | Hoch | **Hoch** |
| MCP Capability Discovery Retries | Mittel | Keine (automatisch) | Mittel | **Mittel** |
| `sandbox.credentials` Setting | Mittel | Stunden (Konfiguration) | Mittel | **Mittel** |
| `/rewind` Befehl | Niedrig | Keine (automatisch) | Niedrig | Niedrig |
| Org-Modell-Beschränkungen | Niedrig | Stunden (falls genutzt) | Niedrig | Niedrig |
| `CLAUDE_CODE_MCP_TOOL_IDLE_TIMEOUT` | Mittel | Minuten (Env-Var setzen) | Mittel | **Mittel** |
| VSCode Extension große Sessions | Niedrig | Keine (automatisch) | Niedrig | Niedrig |

---

## Empfohlene Aktionen

1. **Claude Code aktualisieren auf v2.1.191** (`npm update -g @anthropic-ai/claude-code`). Der Hooks-Bug mit komma-getrennten Matchern ist kritisch für jedes Setup, das mehrere Tool-Typen in einem Hook abfängt. Prüfen ob bestehende Hooks davon betroffen waren.

2. **Bestehende Hooks auf Komma-Matcher testen.** Nach dem Update in der CLAUDE.md oder `settings.json` prüfen ob Hooks wie `"Bash,PowerShell"` oder `"Edit,Write"` korrekt feuern. Dieser Bug war still: keine Fehlermeldung, Hook wurde einfach ignoriert.

3. **Workflows mit `agent({schema})` erneut prüfen.** Der Structured-Output-Fix in v2.1.187 behebt Fälle wo Folgeturns kein strukturiertes Ergebnis lieferten. Falls Workflow-Agenten in letzter Zeit inkonsistente Ergebnisse hatten, könnte das die Ursache gewesen sein.

4. **`sandbox.credentials` evaluieren.** Falls Cowork-OS-Sessions in Sandboxes laufen (z. B. in GitHub Actions oder Remote-Umgebungen), verhindert diese Einstellung dass Sandbox-Befehle auf `.env`, SSH-Keys oder API-Keys zugreifen.

---

## Keine Aktion nötig

- **`/rewind`:** Nützlich im manuellen Gebrauch, kein Handlungsbedarf für automatisierte Setups.
- **Org-Modell-Beschränkungen:** Relevant für Enterprise-Rollouts, nicht für den aktuellen Einsatz.
- **`/btw` Navigation, Maus im Fullscreen-Modus:** UI-Verbesserungen ohne Konfigurationsbedarf.
- **VSCode Extension Fix:** Automatisch nach Update aktiv.
- **Remote-Session-Start -2,7s:** Automatisch nach Update aktiv.
- **`/install-github-app` Verbesserung:** Nur relevant bei Neu-Installation der GitHub App.
