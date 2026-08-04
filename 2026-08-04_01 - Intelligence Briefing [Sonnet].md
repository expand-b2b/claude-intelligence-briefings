# Claude Intelligence Briefing - 2026-08-04

Erstellt von: Claude Sonnet 4.6 (automatisierter Scout-Lauf)
Quellen: Anthropic Platform Release Notes, WebSearch (August 2026), Claude Code Changelog

---

## Neue Releases

### Claude Opus 5 (24. Juli 2026) -- wichtigster Release der letzten Woche
- Modell-ID: `claude-opus-5`
- 1M-Token-Kontextfenster (Default und Maximum)
- 128k Max-Output-Tokens
- Thinking standardmäßig aktiv (kein manuelles Budget mehr nötig)
- Preisgestaltung: $5 / $25 pro MTok (gleich wie Opus 4.8)
- Verfügbar auf Claude API, Amazon Bedrock, Google Cloud, Microsoft Foundry
- Breaking Change: `thinking: {"type": "disabled"}` mit Effort `xhigh` oder `max` gibt jetzt einen 400-Fehler zurück

### Dreams (Managed Agents) + Opus 5 (1. August 2026)
- Dreams Research Preview unterstützt jetzt Claude Opus 5
- Kein weiterer Breaking Change; bestehende Dreams-Setups mit Fable 5 / Sonnet 5 bleiben kompatibel

### Claude Code: Laufende Updates (Juli / August 2026)
- `/cd`-Befehl: Wechselt das Working Directory innerhalb einer Session, ohne den Prompt Cache zu unterbrechen
- `EndConversation`-Tool: Claude kann Sessions mit missbräuchlichen Nutzern oder Jailbreak-Versuchen selbst beenden
- Auth-Status-Panel: Titel von "Cloud authentication" auf "Authentication" umbenannt (kosmetisch)
- 50% Weekly-Usage-Boost für Claude Code Abonnenten verlängert bis **19. August 2026**
- Neues Standardmodell in Claude Code: Claude Sonnet 5 (ab Ende Juni)

---

## Blog / Ankündigungen

### Claude für Open Source (aktiv)
Anthropic vergibt 6 Monate kostenlosen Claude Max 20x (ca. $1.200 Wert) an Open-Source-Maintainer und aktive Contributors. Relevanz: Für eigene Tools und Skills, die als Open Source veröffentlicht werden, könnte das Zugang zu höheren Limits ohne Kosten bedeuten.

### Cowork auf Web und Mobile erweitert
Claude Cowork läuft jetzt auch auf Web und Mobil. Sessions und Dateien synchronisieren sich geräteübergreifend. Hintergrundaufgaben, Scheduled Tasks, geteilte Chats und mobile Genehmigungen sind verfügbar. Direkt relevant für das Cowork OS.

### Workbench-Abschaltung: 17. August 2026
Die Legacy-Workbench (platform.claude.com/workbench) wird am 17. August abgeschaltet. Gespeicherte Prompts, Variablen und Eval-Daten müssen vorher exportiert werden. Die experimentellen Prompt-APIs (`/v1/experimental/generate_prompt`, `improve_prompt`, `templatize_prompt`) werden gleichzeitig eingestellt.

### Sonnet-5-Einführungspreise enden am 31. August 2026
Claude Sonnet 5 kostet aktuell $2 / $10 pro MTok. Ab 1. September gelten Standardpreise: $3 / $15 pro MTok. Für API-intensive Cowork-OS-Flows ist das der Moment, Token-Verbrauch zu messen und Budgets anzupassen.

### Claude Fable 5: Abo-Verfügbarkeit finalisiert (20. Juli)
- Max und Team Premium: Fable 5 inklusive, bis 50% des wöchentlichen Usage-Limits
- Pro und Team Standard: Fable 5 nur noch über Verbrauchsguthaben (metered)
- Einmaliger $100-Promo-Kredit war claimbar bis 2. August (abgelaufen)

### AI for Science Grants
Anthropic vergab Grants bis $50.000 in Claude Credits für Forscher im Bereich seltener Erbkrankheiten. Bewerbungsfrist war 2. August (abgelaufen). Für zukünftige Runden im Blick behalten.

---

## Community-Highlights (r/ClaudeCode, August 2026)

1. **Multi-Agenten in tmux**: Power-User betreiben mehrere Claude-Code-Instanzen parallel in tmux-Panes, jede für ein eigenes Modul oder einen Feature-Branch. Dominierendes Workflow-Thema.

2. **Agent-Teams (Koordination)**: Das neue Feature lässt mehrere Agents kommunizieren und Arbeit aufteilen, ähnlich einem kleinen Engineering-Team -- anders als Subagents, die isoliert laufen.

3. **Tool-Vergleichsdebatten**: Wöchentlich neue Threads. Konsens: Claude Code für harte, komplexe Aufgaben; günstigere Tools für Routine.

4. **Rate-Limit-Frustration**: Pro-Plan trifft bei Heavy-Usern nach ca. 12 Prompts an Limits. Wiederkehrendes Beschwerde-Thema.

5. **Konsens-Zitat**: "If you want a Swiss Army knife, use ChatGPT. If you need the hardest job done reliably, use Claude."

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Cowork auf Web/Mobile | Hoch | Minuten (einfach nutzen) | Hoch | Hoch |
| `/cd`-Befehl in Claude Code | Hoch | Minuten | Mittel | Hoch |
| Sonnet-5-Preiserhöhung ab 1. Sept. | Mittel | Stunden (Token-Audit) | Hoch | Hoch |
| Claude Opus 5 (API) | Mittel | Stunden (Migration testen) | Mittel | Mittel |
| EndConversation-Tool | Mittel | Minuten (in Skills einbauen) | Mittel | Mittel |
| Claude für Open Source | Niedrig | Stunden (Bewerbung) | Mittel | Niedrig |
| Workbench-Abschaltung (17. Aug.) | Niedrig (falls genutzt) | Minuten (Export) | Niedrig | Niedrig |
| Dreams + Opus 5 | Niedrig | Tage (experimentell) | Niedrig | Niedrig |

---

## Empfohlene Aktionen

1. **Sofort (bis 17. August)**: Prüfen, ob die Legacy-Workbench genutzt wird und ggf. Prompts/Evals exportieren.
2. **Diese Woche**: Cowork-Web-/Mobil-Zugang testen -- Synchronisation von Sessions und Shared Chats auf praktische Tauglichkeit für Kundenpräsentationen prüfen.
3. **Bis Ende August**: Token-Verbrauch für Sonnet-5-basierte Flows messen. Budget-Planung für September vorbereiten (Preisanstieg 50% auf Output-Tokens).
4. **Kurzfristig**: `/cd`-Befehl in relevante Claude-Code-Workflows einbauen, wo Working-Directory-Wechsel innerhalb langer Sessions nötig ist.
5. **Mittelfristig**: Opus 5 im API-Kontext für komplexe Analyse-Tasks testen (1M-Kontext + Thinking standardmäßig aktiv könnte Briefing-Qualität verbessern).

---

## Keine Aktion nötig

- **AI for Science Grants**: Bewerbungsfrist abgelaufen (2. August), nächste Runde beobachten.
- **Fable-5-Abo-Änderungen**: Nur relevant bei Max/Team-Premium-Plan; bei Pro keine Änderung außer Verbrauchsguthaben.
- **Dreams-Research-Preview**: Zu experimentell für produktiven Einsatz im Cowork OS.
- **Agent-Memory-Beta-Header-Änderungen**: Nur relevant bei direkter Managed-Agents-API-Nutzung -- derzeit nicht im Scope.
