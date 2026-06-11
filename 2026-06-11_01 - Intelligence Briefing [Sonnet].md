# Claude Intelligence Briefing - 2026-06-11

Erstellt von: Claude Intelligence Scout (Sonnet)
Quellen: GitHub Releases API (erfolgreich), Anthropic Blog (blockiert), Reddit (blockiert)

---

## Neue Releases

### v2.1.172 (2026-06-10) - GESTERN
Die umfangreichste Version der letzten 48 Stunden mit ~30 Änderungen.

**Kern-Neuheiten:**
- Sub-agents können eigene Sub-agents spawnen, bis zu 5 Ebenen tief
- Suchleiste im `/plugin`-Marketplace
- `model`-Attribut zum OTEL-Metrik `claude_code.lines_of_code.count` hinzugefügt

**Relevante Bug-Fixes:**
- `WebFetch(domain:*.example.com)` Wildcard-Regeln funktionierten nicht für Subdomains in allow/deny/ask (jetzt behoben)
- Mid-Pattern-Wildcards in File-Permission-Regeln (z.B. `Read(secrets-*/config.json)`) wurden beim Start abgelehnt (jetzt behoben)
- `CLAUDE_MEMORY_STORES` Team-Memory in Remote-Sessions wurde nicht gefunden (jetzt behoben)
- Sessions mit 1M Context ohne Credits blieben dauerhaft hängen (automatisches Compact)
- `availableModels`-Allowlists versteckten Opus/Sonnet-1M-Einträge bei versionsspezifischen IDs

**Performance:**
- Weniger idle CPU-Verbrauch (kein 5-Hz Re-Render mehr)
- Schnelleres Laden der Chrome-Browser-Tools (ein Batch-Call statt einem Call pro Tool)
- Verbesserung bei langen Konversationen durch weniger redundante Normalisierung

### v2.1.170 (2026-06-09) - VORGESTERN
- **Claude Fable 5 eingeführt.** Mythos-class Model, stärker als alle bisher öffentlich verfügbaren Modelle. Verfügbar ab diesem Update.
  Quelle: https://www.anthropic.com/news/claude-fable-5-mythos-5
- Fix: Sessions aus dem VS Code Integrated Terminal speicherten keine Transcripts (betraf `--resume`)

### v2.1.169 (2026-06-08) - vor 3 Tagen
Umfangreiche Verbesserungen für Produktiv-Setups:

- `--safe-mode` Flag startet Claude Code ohne Customizations (CLAUDE.md, Plugins, Skills, Hooks, MCP-Server) für Troubleshooting
- `/cd` Befehl wechselt Session in neues Verzeichnis ohne Prompt-Cache-Break
- `disableBundledSkills` Setting + `CLAUDE_CODE_DISABLE_BUNDLED_SKILLS` Env-Variable blendet eingebaute Skills, Workflows und Slash-Commands aus
- Enterprise-MCP-Policies (`allowedMcpServers`/`deniedMcpServers`) wurden bei Reconnect und ersten Sessions nicht durchgesetzt (jetzt behoben)
- `/workflows` öffnet sofort, auch wenn ein Turn läuft
- `TaskCreate` repariert fehlerhafte Inputs automatisch
- Hintergrundagenten berücksichtigen nun Projekt-Level-Settings (`ANTHROPIC_MODEL` etc.)
- CLAUDE.md "zu lang"-Warnschwelle skaliert jetzt mit dem Kontext-Fenster des Modells

---

## Blog/Ankuendigungen

**Anthropic Blog** war nicht erreichbar (Netzwerk-Einschränkung). Bekannt aus Releases:

- **Claude Fable 5 (Mythos-class):** Anthropic hat ein neues Spitzenmodell veröffentlicht, das laut Release-Notes alle bisher öffentlich verfügbaren Modelle übertrifft. Das Modell ist seit v2.1.170 in Claude Code verfügbar. Keine weiteren Details aus primären Quellen verfügbar.

---

## Community-Highlights

**Reddit r/ClaudeCode** war nicht erreichbar (Netzwerk-Einschränkung).

Basierend auf Release-Aktivität und Reaktionen (v2.1.172: 31 Reaktionen, v2.1.170 dürfte höher liegen wegen Fable 5):
- Die Sub-agent-Verschachtelung (5 Ebenen) ist technisch eine signifikante Neuerung für Multi-Agent-Setups
- Fable 5 ist voraussichtlich das dominante Community-Thema dieser Woche

---

## Relevanz fuer Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschaeftswert | Prioritaet |
|---|---|---|---|---|
| Fable 5 als neues Modell | Hoch | Minuten (Modell-Setting) | Hoch | Sehr hoch |
| Sub-agents 5 Ebenen tief | Hoch | Stunden (Workflows anpassen) | Hoch | Hoch |
| WebFetch Wildcard-Fix | Hoch | Minuten (Permission-Config prüfen) | Mittel | Hoch |
| Memory Stores Fix (Remote) | Hoch | Minuten (testen) | Mittel | Mittel |
| `--safe-mode` Flag | Mittel | Minuten | Niedrig | Mittel |
| `/cd` Befehl | Mittel | Keine | Niedrig | Niedrig |
| `disableBundledSkills` | Niedrig | Minuten | Niedrig | Niedrig |
| TaskCreate Auto-Repair | Hoch | Keine (automatisch) | Mittel | Mittel |
| CLAUDE.md-Längen-Skalierung | Mittel | Keine | Niedrig | Niedrig |

---

## Empfohlene Aktionen

1. **Fable 5 testen:** `claude update` ausführen, dann mit `/model` auf Fable 5 (`claude-fable-5`) wechseln und an einem echten Sales-Development-Task benchmarken. Vergleich mit aktuellem Sonnet-Setup.

2. **Sub-agent-Hierarchie evaluieren:** Mit dem 5-Ebenen-Sub-agent-Feature lassen sich verschachtelte Workflows bauen (z.B. Research-Agent spawnt Analyse-Sub-agents). Für Cowork OS einen Proof-of-Concept mit zwei Ebenen skizzieren.

3. **WebFetch-Permissions prüfen:** Falls in `.claude/settings.json` Wildcard-Domains wie `WebFetch(domain:*.anthropic.com)` konfiguriert sind, vor v2.1.172 nicht korrekt gegriffen. Nach dem Update testen, ob Subdomains nun korrekt durchkommen.

4. **Permission-Config auf Mid-Pattern-Wildcards prüfen:** Regeln wie `Read(secrets-*/config.json)` wurden beim Start abgelehnt (Bug). Bestehende Settings.json auf solche Muster prüfen.

---

## Keine Aktion noetig

- `/cd` Befehl: Nützlich, aber kein aktiver Bedarf im aktuellen Setup
- `disableBundledSkills`: Nur für Troubleshooting relevant
- OTEL-Metrik-Erweiterung: Relevant nur bei aktivem Monitoring
- Windows/VSCode PowerShell-Fixes: Kein Windows-Einsatz im Cowork OS Setup
- Idle-CPU-Verbesserungen: Automatisch, kein Handlungsbedarf
