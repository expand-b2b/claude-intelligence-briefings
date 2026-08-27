# Claude Intelligence Briefing - 2026-08-27

## Neue Releases

### Claude Code 2.1.247 (26. August 2026)
- **SendFeedback Tool**: Claude kann Fehlerberichte automatisch verfassen und einreichen
- **Cost-Optimize Command**: `/claude-api cost-optimize` für API-Spend-Profiling
- Admin API Coverage erweitert
- Bug Fixes: Bash-Shortcuts, Sub-Agents, Speicherlecks, Sandbox-Cleanup für dotfile-managed Symlinks

### Claude Code 2.1.246 (25. August 2026)
- Auto Mode Tab in `/permissions` hinzugefügt
- Turn-Completion-Zeit wird angezeigt (z.B. `✻ Sautéed for 23s · done 6:05 PM`)
- Fullscreen-Transcript-Slowdown bei langen Zeilen behoben
- Background Sessions Stabilität verbessert
- MCP-Tool-Fehler besser diagnostiziert

### Claude Code 2.1.245 (25. August 2026)
- Kritischer Fix: glibc 2.44 Crash auf Linux behoben (betrifft Arch, Fedora Rawhide)

### Claude Code 2.1.243 (25. August 2026)
- **Loops Breakdown** in `/usage`: Pro-Loop-Statistiken für Token-Verbrauch
- **modelPicker Setting**: Kuratierte Modell-Liste mit Labels
- `promptCacheTtl` Settings für 1-Stunden-Cache konfigurierbar
- `modelPricing` Managed Setting für benutzerdefinierte Preissätze
- Keyless Sign-in unter `/login`

### Claude Code 2.1.239 bis 2.1.241 (21. bis 23. August 2026)
- Bedrock Premium für Data-Residency (1,1x Aufpreis)
- Fullscreen-Renderer auf Bedrock/Vertex/Foundry verfügbar
- Alpine/musl Builds: Image Paste und Clipboard-Unterstützung
- Remote Control Verbesserungen
- Windows Cross-Session Messaging

## Blog/Ankündigungen

Zugriff auf anthropic.com und docs.anthropic.com war heute durch den Netzwerkproxy blockiert. Keine aktuellen Blog-Daten verfügbar.

## Community-Highlights

Zugriff auf reddit.com war heute durch den Netzwerkproxy blockiert. Keine Community-Daten verfügbar.

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| `promptCacheTtl` (1-Stunden-Cache) | Hoch | Minuten | Hoch | Hoch |
| `modelPricing` Managed Setting | Hoch | Minuten | Hoch | Hoch |
| Loops Breakdown in `/usage` | Hoch | Minuten | Mittel | Hoch |
| Cost-Optimize Command | Hoch | Minuten | Hoch | Hoch |
| Auto Mode Tab in `/permissions` | Mittel | Minuten | Mittel | Mittel |
| modelPicker Setting | Mittel | Minuten | Mittel | Mittel |
| SendFeedback Tool | Niedrig | Minuten | Niedrig | Niedrig |
| glibc 2.44 Linux-Fix | Mittel | Keine (Auto-Update) | Mittel | Mittel |

## Empfohlene Aktionen

1. **`promptCacheTtl` auf 1 Stunde setzen**: In den Claude Code Settings konfigurieren, um API-Kosten bei wiederkehrenden Aufgaben (z.B. tägliche Briefings) zu reduzieren. Einfache Einzeiler-Änderung in settings.json.

2. **`modelPricing` evaluieren**: Falls eigene Bedrock- oder Vertex-Endpunkte genutzt werden, lässt sich mit dem `modelPricing` Managed Setting die Kostenübersicht pro Sitzung präzisieren. Relevant für Klienten-Reporting.

3. **Cost-Optimize Command testen**: `/claude-api cost-optimize` direkt in laufenden Sessions ausprobieren, um teure API-Calls in Cowork OS Workflows zu identifizieren.

4. **Loops Breakdown nutzen**: `/usage` jetzt mit Pro-Loop-Aufschlüsselung. Nützlich zur Optimierung von automatisierten Workflows wie diesem Briefing-Cron.

5. **Linux-Update prüfen**: Falls Cowork OS auf Arch oder Fedora Rawhide läuft, sicherstellen, dass Claude Code auf Version 2.1.245 oder höher aktualisiert ist (glibc 2.44 Fix).

## Keine Aktion nötig

- **SendFeedback Tool**: Internes Tool für Fehlerberichte, kein direkter Mehrwert für EXPAND B2B Workflows.
- **Keyless Sign-in**: Betrifft nur neue Installationen, vorhandene Setups sind nicht betroffen.
- **Auto Mode Tab in `/permissions`**: Informationell, keine Konfigurationsänderung erforderlich, sofern Auto Mode bereits genutzt wird.

---

*Quellen: code.claude.com/docs/en/changelog (Zugriff 2026-08-27). Anthropic Blog und Reddit waren heute nicht erreichbar.*
