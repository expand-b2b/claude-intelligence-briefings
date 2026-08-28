# Claude Intelligence Briefing - 2026-08-28

## Neue Releases

### v2.1.250 (28.08.2026) - Aktuell
- Bug fixes und Stabilitätsverbesserungen

### v2.1.248 (27.08.2026)
- **`--restricted` Flag**: Deaktiviert eingebaute Tools (Bash, WebFetch) für einzelne Befehle. Ermöglicht sichere, sandboxed Agent-Ausführung.
- **`experimental.cacheTtl`**: Agent-spezifische Prompt-Cache-TTL konfigurierbar. Kostenkontrolle auf Agenten-Ebene.
- **`/usage-credits` Befehl**: Neue Übersicht für Enterprise-Organisationen über Kredit-Verbrauch.
- **Cross-session messaging**: Sessions auf derselben Maschine können sich gegenseitig Nachrichten senden (ListAgents + SendMessage).
- Bug-Fixes: Prompt Cache Misses, Session-Verschwindung, Bash-Fehler.

### v2.1.247 (26.08.2026)
- **`SendFeedback` Tool**: Direktes Melden von Fehlern aus der Session.
- **`/claude-api cost-optimize`**: Neuer Befehl zur Analyse und Optimierung von API-Kosten.
- **GitLab Merge Request-Unterstützung**: Verbesserte Integration für GitLab-Workflows.
- Fixes für Auto-Mode, Plugins und Remote Control.

### v2.1.246 (25.08.2026)
- **Auto-Mode Tab in `/permissions`**: Classifier-Regeln für automatische Genehmigungen jetzt direkt in der UI verwaltbar.
- **Completion-Zeit in Dauer-Zeile**: Bessere Transparenz über Session-Performance.
- Fixes für Fullscreen-Mode, Transcript-Performance und Background Sessions.

### v2.1.245 (25.08.2026)
- **Kritischer Fix**: Absturz auf Linux mit glibc 2.44 behoben (Arch Linux, Fedora Rawhide).

---

## Blog/Ankündigungen

Anthropic-Blog war heute über den Proxy nicht erreichbar. Keine verifizierten Neuigkeiten aus diesem Kanal.

---

## Community-Highlights

Reddit r/ClaudeCode war heute über den Proxy nicht erreichbar. Keine verifizierten Highlights.

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Cross-session messaging (v2.1.248) | Hoch | Stunden | Hoch | Hoch |
| `--restricted` Flag (v2.1.248) | Hoch | Minuten | Hoch | Hoch |
| Auto-Mode Classifier Tab (v2.1.246) | Hoch | Minuten | Mittel | Hoch |
| `experimental.cacheTtl` (v2.1.248) | Mittel | Stunden | Mittel | Mittel |
| `/claude-api cost-optimize` (v2.1.247) | Mittel | Minuten | Hoch | Mittel |
| `/usage-credits` Enterprise (v2.1.248) | Mittel | Minuten | Mittel | Mittel |
| GitLab MR-Unterstützung (v2.1.247) | Niedrig | Keine | Niedrig | Niedrig |
| glibc 2.44 Fix (v2.1.245) | Niedrig | Minuten (Update) | Niedrig | Niedrig |

---

## Empfohlene Aktionen

1. **Cross-session messaging testen** (heute): Das neue `ListAgents` + `SendMessage` System ermöglicht echte Multi-Agent-Koordination im Cowork OS. Konkret: parallele Agenten für Recherche und Briefing können sich abstimmen, ohne denselben Kontext zu teilen.

2. **`--restricted` Flag in Briefing-Hooks einbauen** (heute): Für den scheduled Task dieses Scouts den `--restricted` Flag evaluieren, um versehentliche Bash-Ausführung bei externen Daten zu verhindern.

3. **Auto-Mode Classifier-Regeln einrichten** (diese Woche): Der neue Tab in `/permissions` macht es einfacher, häufige Tool-Genehmigungen zu automatisieren. Für EXPAND B2B-Setups: Standard-Genehmigungen für Read, Glob, Grep ohne Prompt definieren.

4. **`/claude-api cost-optimize` ausführen** (diese Woche): Auf den bestehenden Claude-Code-Instanzen von Friedrich ausführen, um Einsparpotenziale zu identifizieren. Ergebnis als Argument für Enterprise-Klienten dokumentieren.

---

## Keine Aktion nötig

- **SendFeedback Tool**: Internes Feedback-Tool, kein Einfluss auf Cowork OS-Workflows.
- **glibc 2.44 Fix**: Relevant nur wenn Linux-Deployment auf Arch/Fedora Rawhide.
- **`/usage-credits`**: Erst relevant wenn EXPAND B2B Enterprise-Plan mit Kredit-Budget nutzt.
- **Bug-Fixes v2.1.250/248**: Werden durch reguläres `claude update` automatisch eingespielt.

---

*Quellen: code.claude.com/docs/en/changelog | Generiert: 2026-08-28 | Modell: claude-sonnet-4-6*
