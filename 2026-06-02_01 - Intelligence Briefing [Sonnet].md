# Claude Intelligence Briefing - 2026-06-02

## Neue Releases

### Claude Code CLI v2.1.158 (31. Mai 2026)

Letztes bekanntes Release vor dem heutigen Briefing.

Wichtigste Änderungen:

- **Auto Mode auf Cloud-Plattformen**: Auto Mode jetzt auf Bedrock, Vertex und Foundry für Opus 4.7 und 4.8 verfügbar. Aktivierung über `CLAUDE_CODE_ENABLE_AUTO_MODE=1`.
- **Hintergrund-Shell-Sessions**: Neuer Befehl `! <command>` startet Shell-Befehle als anhängbare Hintergrundsessions. Alternativ: `claude --bg --exec '<command>'`.
- **Fast Mode günstiger**: Opus 4.8 Fast Mode kostet jetzt das Doppelte des Standardpreises bei 2,5-facher Geschwindigkeit (vorher teurer).
- **Diff-Rendering**: Verbesserte Performance bei großen Datei-Edits.
- **Prompt-Verlauf**: Keine doppelten aufeinanderfolgenden Einträge mehr.
- **Plugin-Verbesserungen**: `defaultEnabled: false` in plugin.json möglich. Der `/plugin` Discover-Tab zeigt passende Plugins pro Verzeichnis mit "suggested for this directory" an.

### Modell-Deprecations (wirksam ab 15. Juni 2026)

Anthropic hat die Abkündigung von Claude Sonnet 4 und Claude Opus 4 (Originalversionen) für den 15. Juni 2026 angekündigt. Migration auf Sonnet 4.5, Sonnet 4.6 oder Opus 4.7 erforderlich.

---

## Blog / Ankündigungen

### Verdoppelung der Rate Limits durch SpaceX-Deal

Anthropic hat einen Rechenkapazitäts-Vertrag mit SpaceX (Colossus 1 Rechenzentrum) abgeschlossen. Direkte Auswirkung auf Nutzer:

- 5-Stunden-Rate-Limits für Claude Code **verdoppelt** auf Pro, Max, Team und Enterprise-Plänen.
- Keine Reduzierung der Limits mehr zu Stoßzeiten auf Pro und Max.

Relevanz: Sehr hoch. Bisheriges Hauptproblem der Community (Rate Limit Erschöpfung nach 12 intensiven Prompts) wird damit erheblich entschärft.

### Claude for Small Business

Anthropic hat ein Paket für Kleinunternehmen gestartet mit vorgefertigten Konnektoren und Workflows für: Intuit QuickBooks, PayPal, HubSpot, Canva, DocuSign, Google Workspace und Microsoft 365.

Relevanz für EXPAND B2B: Mittel. Zeigt Marktbewegung Richtung SMB-Integration. Positionierungs-Chancen für Cowork OS als tiefere, anpassbare Alternative.

### Claude Opus 4.7 (seit 16. April 2026, verfügbar auf allen Plattformen)

Wichtigste Eigenschaften:

- Deutlich verbesserte Software-Engineering-Fähigkeiten, besonders bei schwierigen Aufgaben.
- Bessere Vision: Höhere Bildauflösung.
- Neues Effort-Level "xhigh" zwischen high und max für feinere Kontrolle über Reasoning-Tiefe.
- Adaptive Thinking (dynamische Anpassung des Reasoning-Aufwands).
- Preis: $5 / 1M Input-Token, $25 / 1M Output-Token (unverändert).

---

## Community-Highlights

Quelle: r/ClaudeCode (4.200+ wöchentliche Beitragende, Stand Frühjahr 2026)

**Meistdiskutierte Themen:**

1. **CLAUDE.md als Produktivitätshebel**: Nutzer, die Zeit in CLAUDE.md, Skills und Hooks investieren, berichten von signifikanten Gewinnen. Wer Claude Code wie Autocomplete behandelt, ist enttäuscht.
2. **Multi-Agent tmux-Workflows**: Erfahrene Nutzer betreiben mehrere Claude Code Instanzen in tmux-Panes, je eine pro Modul oder Feature-Branch.
3. **Rate Limits als Hauptbeschwerde**: Pro-Plan erschöpft sich bei intensiver Nutzung nach ~12 Prompts. Verdoppelung durch SpaceX-Deal wird positiv aufgenommen.
4. **Claude Code vs. Cursor**: Claude Code gewinnt bei Code-Qualität und Multi-File-Refactoring, Cursor bei IDE-nativer Usability.

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Rate Limits verdoppelt | Hoch | Minuten (nichts zu tun) | Hoch | Sofort profitieren |
| Auto Mode auf Bedrock/Vertex | Mittel | Stunden (Env-Variable setzen, testen) | Mittel | Mittel |
| Hintergrund-Shell-Sessions (`!`) | Hoch | Minuten (in Workflows einbauen) | Mittel | Hoch |
| Plugin defaultEnabled: false | Mittel | Stunden (Plugins bereinigen) | Mittel | Mittel |
| Claude for Small Business | Niedrig | Tage (beobachten) | Mittel | Niedrig |
| Opus 4.7 xhigh Effort-Level | Mittel | Stunden (API-Calls anpassen) | Mittel | Mittel |
| Deprecation Sonnet 4 / Opus 4 | Hoch | Stunden (Migration prüfen) | Hoch | Dringend bis 15.06. |

---

## Empfohlene Aktionen

1. **Sofort**: Prüfen, ob irgendwo noch `claude-sonnet-4` oder `claude-opus-4` (ohne Versionssuffix wie 4.5/4.6/4.7) in API-Calls oder Konfigurationen verwendet wird. Migration auf aktuelle Versionen vor dem 15. Juni 2026.
2. **Diese Woche**: Den neuen `! <command>` Mechanismus in häufig genutzten Cowork OS Workflows testen, z.B. für parallele Build-Prozesse oder Hintergrund-Recherchen während der Hauptsession läuft.
3. **Diese Woche**: Auto Mode auf API-Calls testen, die derzeit manuell zwischen Modellen wechseln. Potenzial für Kosten-Optimierung.
4. **Beobachten**: Claude for Small Business genauer beobachten: Welche Workflows sind vorgefertigt? Ggf. als Referenz für eigene Cowork OS Implementierungen nutzen.

---

## Keine Aktion nötig

- **Fast Mode Preissenkung**: Wird automatisch angewendet, kein Konfigurationsaufwand.
- **Diff-Rendering-Verbesserung**: Läuft transparent im Hintergrund.
- **SpaceX-Deal / Rate Limits**: Profitiert man automatisch auf bestehenden Plänen.
- **Opus 4.7 Adaptive Thinking**: Für die meisten Cowork OS Anwendungsfälle (Sales Development, Briefings) ist der Unterschied zu Sonnet 4.6 nicht rechtfertigend bei 5x höherem Preis.

---

## Quellen

- [Anthropic News](https://www.anthropic.com/news)
- [Claude Code Changelog](https://code.claude.com/docs/en/changelog)
- [Claude Code Releases (GitHub)](https://github.com/anthropics/claude-code/releases)
- [API Release Notes](https://docs.anthropic.com/en/release-notes/overview)
- [Claude Opus 4.7 Ankündigung](https://www.anthropic.com/news/claude-opus-4-7)
- [r/ClaudeCode Community-Analyse](https://www.morphllm.com/claude-code-reddit)
