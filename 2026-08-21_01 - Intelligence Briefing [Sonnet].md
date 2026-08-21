# Claude Intelligence Briefing - 2026-08-21

## Neue Releases

### v2.1.238 (20. August 2026)
- `keybindingFlavor` Setting: Ctrl+W loescht bis zum vorherigen Whitespace (Bash-Stil)
- Plugin Marketplaces unterstuetzen jetzt `headersHelper` fuer dynamische HTTP-Header (z.B. kurzlebige Auth-Tokens)
- `--defer-shutdown-max-min` und Proxy-Autorisierungsoptionen fuer Self-Hosted Runner
- Speicherleck bei langen interaktiven Sessions behoben (Subagent-Tool-Ergebnisse werden freigegeben)
- Custom Output Styles driften nicht mehr zum Standard zurueck
- MCP Elicitation-Dialoge mit langen URLs repariert
- Remote Control Session-Stabilitaet verbessert

### v2.1.237 (20. August 2026)
- Neuer eingebauter "Concise" Output Style: Ergebnisse ohne Preamble, direkt zum Punkt
- Prompt Caching fuer LLM-Gateway und Custom Base URL repariert

### v2.1.236 (19. August 2026)
- `ANTHROPIC_DEFAULT_MODEL` Umgebungsvariable: Standard-Modell global setzbar
- `notify_when_idle` fuer Cross-Session `SendMessage` (macOS/Linux)
- Sandbox Wildcard Read-Deny Rules verbessert (macOS)

### v2.1.235 (18. August 2026)
- Optionales `spellcheck` Setting (aspell/hunspell/ispell): Rechtschreibpruefung im Prompt
- Prompt-Cache-Invalidierung repariert
- Speicher-/CPU-Verbrauch fuer Cloud Sessions verbessert
- Screen Reader Support fuer VSCode

### v2.1.234 (17. August 2026)
- `CLAUDE_CODE_PROJECT_DIR_NAME` Umgebungsvariable fuer individuelle Projektnamen
- GitLab Merge Request Badge-Unterstuetzung (`!N`)
- Auto-Fortsetzung nach claude.ai Usage-Limit-Reset
- Sicherheit: Windows NT-Namespace-Pfade werden abgelehnt

## Blog/Ankuendigungen

Anthropic Blog (anthropic.com/news) war in dieser Session nicht erreichbar (Netzwerk-Proxy-Block). Keine neuen Blog-Eintraege erfasst.

## Community-Highlights

Reddit (r/ClaudeCode) war in dieser Session nicht erreichbar. Keine Community-Daten erfasst.

**Aus den Release Notes erkennbare Community-Trends:**
- Hohe Nachfrage nach verbesserter GitLab-Integration (in drei aufeinanderfolgenden Releases Verbesserungen)
- Cross-Session Messaging wird aktiv genutzt und weiterentwickelt
- Remote Control / Cloud Sessions sind ein wachsendes Nutzungsszenario

## Relevanz fuer Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschaeftswert | Prioritaet |
|---|---|---|---|---|
| "Concise" Output Style | Hoch | Minuten | Hoch | Sofort |
| `ANTHROPIC_DEFAULT_MODEL` Env-Var | Hoch | Minuten | Mittel | Hoch |
| `headersHelper` fuer Plugin Marketplaces | Mittel | Stunden | Mittel | Mittel |
| `keybindingFlavor` Setting | Niedrig | Minuten | Niedrig | Optional |
| Spellcheck-Setting | Niedrig | Minuten | Niedrig | Optional |
| Speicherleck-Fix (lange Sessions) | Hoch | 0 (Auto) | Hoch | Update sofort |
| `CLAUDE_CODE_PROJECT_DIR_NAME` | Mittel | Minuten | Mittel | Mittel |

## Empfohlene Aktionen

1. **Claude Code aktualisieren** auf v2.1.238 - der Speicherleck-Fix ist fuer lange Cowork-OS-Sessions direkt relevant und verbessert die Stabilitaet spuerbar.

2. **"Concise" Output Style testen**: In den Skills und Hooks als Standard-Output-Style evaluieren. Fuehrt direkt zu kuerzeren, praegnanten Antworten ohne Umwege - hoher Wert fuer B2B-Workflows wie Briefings, Scoring und Call-Vorbereitung.

3. **`ANTHROPIC_DEFAULT_MODEL` in CLAUDE.md dokumentieren**: Wenn ein Projekt-Default-Modell gewuenscht ist, kann es jetzt per Env-Var gesetzt werden statt per Session-Flag.

4. **`headersHelper` evaluieren**: Fuer Plugin Marketplaces mit Auth-Tokens (z.B. interne APIs) relevant. Pruefe, ob bestehende MCP-Integrationen davon profitieren koennen.

## Keine Aktion noetig

- `keybindingFlavor`: Persoenliche Praeferenz, kein Einfluss auf Cowork OS Funktionalitaet
- `spellcheck` Setting: Fuer automatisierte Pipelines irrelevant
- GitLab MR Support: EXPAND B2B nutzt GitHub, nicht GitLab
- Proxy-Autorisierungsoptionen fuer Self-Hosted Runner: Kein Self-Hosted-Runner im Einsatz
- Screen Reader Support: Barrierefreiheitsfeature, kein B2B-Relevanzgewinn

---

*Quellen: github.com/anthropics/claude-code/releases, code.claude.com/docs/en/changelog*
*Anthropic Blog und r/ClaudeCode waren heute nicht erreichbar (Netzwerk-Proxy-Block)*
