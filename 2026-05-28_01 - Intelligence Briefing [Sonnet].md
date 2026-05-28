# Claude Intelligence Briefing - 2026-05-28

## Neue Releases

### Claude Code v2.1.153 (28. Mai 2026) - Heute

- `skipLfs`-Option für GitHub/Git-Plugin-Marketplace-Quellen
- Status-Line-Befehle erhalten jetzt `COLUMNS` und `LINES` als Umgebungsvariablen
- macOS: Background-Agents erscheinen als "Claude Code" in Datenschutz & Sicherheit
- Bugfixes: MCP-Server-Stabilität, API-Gateway-Authentifizierung, Windows-PowerShell-Installer

### Claude Code v2.1.152 (27. Mai 2026)

- `/code-review --fix` wendet Review-Erkenntnisse direkt auf den Working Tree an
- Skills können `disallowed-tools` im Frontmatter setzen (Sicherheitskontrolle pro Skill)
- `/reload-skills` Befehl: Skills neu laden ohne Session-Neustart
- `MessageDisplay` Hook-Event: Nachrichten vor Anzeige transformieren
- Auto-Mode erfordert keine explizite Opt-in-Zustimmung mehr

### Claude Code v2.1.149 (22. Mai 2026)

- `/usage` zeigt Kategorieaufschlüsselung: Skills, Subagents, Plugins, MCP-Server
- `/diff` Detail-View ist jetzt mit Tastatur scrollbar
- Markdown rendert GFM Task-List-Checkboxes korrekt

### Claude Code v2.1.148 (22. Mai 2026)

- Bugfix: Bash-Tool gab Exit-Code 127 für alle Befehle zurück (Regression aus 2.1.147)

---

## Blog / Ankündigungen

| Datum | Titel | Zusammenfassung |
|---|---|---|
| 26. Mai | Korea-Büro | KiYoung Choi als Representative Director Korea ernannt, Seoul-Büro öffnet |
| 22. Mai | Project Glasswing | Erstes Update zu internem Safety-Projekt von Anthropic |
| 19. Mai | KPMG x Claude | KPMG integriert Claude unternehmensweit für 276.000 Mitarbeitende |
| 18. Mai | Akquisition Stainless | Anthropic übernimmt Stainless (API-SDK-Generator) |
| 14. Mai | Gates Foundation | 200-Millionen-Dollar-Partnerschaft für Global Health, Bildung, Life Sciences |
| 14. Mai | PwC x Claude | PwC setzt Claude für Technology, Deals und Enterprise-Transformation ein |
| 6. Mai | Nutzungslimits + SpaceX | Höhere Usage-Limits angekündigt, Compute-Deal mit SpaceX |

**Relevanz der Stainless-Akquisition:** Stainless generiert automatisch typsichere API-SDKs aus OpenAPI-Spezifikationen. Anthropic könnte damit die SDK-Qualität für Python, TypeScript und weitere Sprachen deutlich verbessern, was direkt die MCP-Server-Entwicklung vereinfacht.

---

## Community-Highlights

**r/ClaudeCode** (4.200+ wöchentliche Beitragende, Stand Mai 2026):

- Claude Code erreichte 46 % "most loved" in Entwickler-Umfragen; Cursor bei 19 %, GitHub Copilot bei 9 %
- Häufiges Thema: Erfahrene Nutzer setzen Claude Code für komplexe Aufgaben ein, günstigere Tools für Routine
- Slash-Commands bleiben das am meisten unterschätzte Feature; Threads dazu erhalten konstant hohes Engagement

**GitHub Issues (letzte 48 Stunden, Auswahl):**

- `#62996` Bug: CLAUDE.md-Inhalte werden vom Modell nicht gelesen (trotz Laden in Kontext) - als Duplicate markiert
- `#63003` Feature-Request: Context-Window-Indikator mit Warnung vor Auto-Compaction
- `#63001` Feature-Request: Persistentes Projekt-Gedächtnis über Sessions hinweg
- `#63005` Bug: Server-Rate-Limiting trotz normaler API-Nutzung (Version 2.1.152)
- `#63000` Bug: Cowork lädt Linux-Binary statt macOS-Binary auf macOS Sonoma (Exit Code 132)

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| `disallowed-tools` in Skills (v2.1.152) | Hoch | Minuten | Hoch | **Sehr hoch** |
| `/code-review --fix` (v2.1.152) | Hoch | Minuten | Mittel | **Hoch** |
| `/reload-skills` Befehl (v2.1.152) | Hoch | Minuten | Mittel | **Hoch** |
| `MessageDisplay` Hook-Event (v2.1.152) | Mittel | Stunden | Mittel | Mittel |
| `/usage` Kategorieaufschlüsselung (v2.1.149) | Mittel | Minuten | Niedrig | Mittel |
| `COLUMNS`/`LINES` in Status-Line (v2.1.153) | Niedrig | Minuten | Niedrig | Niedrig |
| KPMG/PwC Enterprise-Rollouts | Niedrig | - | Hoch | Mittel (Referenz) |
| Stainless-Akquisition | Niedrig | - | Mittel | Niedrig (beobachten) |

---

## Empfohlene Aktionen

1. **`disallowed-tools` in Skill-Frontmatter einsetzen:** Cowork-OS-Skills, die keine Datei-Schreibrechte brauchen, explizit einschränken. Reduziert unbeabsichtigte Seiteneffekte und erhöht Sicherheit in Klienten-Umgebungen. Umsetzung: Frontmatter jedes Skills prüfen und `disallowed-tools: [Write, Edit, Bash]` wo sinnvoll ergänzen.

2. **`/reload-skills` in den Workflow integrieren:** Beim Entwickeln neuer Skills entfällt der Session-Neustart. Spart Zeit beim Iterieren an CLAUDE.md und Skill-Dateien.

3. **`/code-review --fix` testen:** Direkte Anwendung von Review-Erkenntnissen auf den Working Tree. Für Sales-Development-Workflows relevant, wo Code-Qualität schnell geprüft und gepatcht werden soll.

4. **Bug #62996 beobachten:** CLAUDE.md-Inhalte werden in manchen Setups nicht gelesen. Falls dieses Verhalten im Cowork OS auftritt, als Gegenmaßnahme: Schlüssel-Instruktionen zusätzlich als Skill-Frontmatter hinterlegen.

---

## Keine Aktion nötig

- **`skipLfs`-Option (v2.1.153):** Relevant nur bei Git-Repos mit Large File Storage, trifft auf Cowork OS nicht zu.
- **macOS Privacy-Anzeige (v2.1.153):** Kosmetische Änderung, kein Handlungsbedarf.
- **Gates Foundation / SpaceX-Deals:** Zeigen Anthropics Wachstum, keine direkte Implementierungsrelevanz.
- **Project Glasswing:** Zu früh für Bewertung, weiter beobachten.

---

*Quellen: code.claude.com/docs/en/changelog, github.com/anthropics/claude-code/issues, anthropic.com/news, reddit.com/r/ClaudeCode*
