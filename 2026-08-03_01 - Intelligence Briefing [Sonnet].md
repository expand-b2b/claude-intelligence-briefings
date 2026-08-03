# Claude Intelligence Briefing - 2026-08-03

## Neue Releases

### Claude Code 2.1.220 (25. Juli 2026)
Fehlerbehebungen und Zuverlässigkeitsverbesserungen, kein neues Feature.

### Claude Code 2.1.219 (24. Juli 2026)
Das gewichtigste Release der letzten Tage.

**Neues Modell:**
- Claude Opus 5 (`claude-opus-5`) als Standard-Opus-Modell
- 1M Context Window
- Fast Mode: $10/$50 pro Mtok (Input/Output)
- Opus 4.7 aus Fast Mode entfernt (nur noch Opus 5 und 4.8)

**Neue Einstellungen und Hooks:**
- `sandbox.network.strictAllowlist` für strikte Netzwerk-Isolierung von Subagenten
- `DirectoryAdded` Hook wird nach `/add-dir` oder `register_repo_root` ausgelöst

**Agenten-Verbesserungen:**
- Subagents können nun bis Tiefe 3 verschachtelt werden (vorher: Tiefe 1)
- Dynamische Workflows standardisieren auf mittlere Größe (~15 Agenten)
- Nested Subagent Forwarding im Stream-JSON

**Fixes:**
- Windows-Pfade mit `\u`-Sequenzen nicht mehr korrumpiert
- `/ultrareview` funktioniert mit deskriptiven Argumenten
- Token-Anzeige in `/context` nach Compaction korrekt

### Claude Code 2.1.218 (22. Juli 2026)
- `/code-review` läuft nun als Background-Subagent (kein blockierender Vordergrund-Prozess mehr)
- `EndConversation` Tool für Missbrauchsszenarien
- Screen-Reader-Announcements für gelöschten Text
- Windows Unicode-Pfade korrekt behandelt

---

## Blog / Ankündigungen

### MCP 2026-07-28 Spezifikation
- **Stateless Core:** MCP wechselt von bidirektional-stateful zu Request/Response-Modell
- Serverless und Edge-Deployment von MCP-Servern jetzt möglich
- Extensions-Framework für Apps und Tasks (UI, Long-Running-Work)
- 9.400+ Server im offiziellen Registry
- 400 Mio. monatliche SDK-Downloads (4x Zuwachs in 2026)
- OpenAI, Google und alle großen IDEs unterstützen das Protokoll

### Preisänderungen
- Sonnet 5 Promotionspreis ($2/$10) endet am 31. August 2026
- Ab 1. September 2026: Standardpreis $3/$15 pro Mtok
- Opus 4.1 wird am 5. August 2026 eingestellt
- Legacy Workbench und experimentelle Prompt-APIs enden am 17. August 2026

### Nutzungsboost
- 50% wöchentlicher Nutzungsboost für Claude Code Abonnenten verlängert bis 19. August 2026

### Unternehmenskennzahlen
- Claude Code nähert sich $1 Mrd. annualisiertem Umsatz
- 300.000+ Unternehmen nutzen Claude-Tools
- Anthropic Gesamtumsatz annualisiert bei ca. $7 Mrd. (80% Business-Kunden)

---

## Community-Highlights

**Aus r/ClaudeCode (ca. 4.200 wöchentliche Mitwirkende):**

1. **CLAUDE.md als Produktivitätshebel:** Nutzer, die CLAUDE.md, Subagents, Hooks und Slash Commands einsetzen, berichten von drastisch höherer Produktivität. Wer Claude Code wie Autocomplete nutzt, wird enttäuscht.

2. **Rate-Limit-Diskussionen:** Auf dem $20-Pro-Plan melden Heavy-User weiterhin Limit-Treffer nach ca. 12 intensiven Prompts. Das verlängerte Boost-Fenster bis 19. August dämpft die Beschwerden.

3. **Subagent-Tiefe 3:** Community diskutiert aktiv, wie die neue 3-Ebenen-Verschachtelung komplexe Review-Workflows ermöglicht, die vorher zwei separate Sessions erforderten.

4. **Consensus-Zitat der Community:** "If you want a Swiss Army knife, use ChatGPT. If you need the hardest job done reliably, use Claude."

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| `DirectoryAdded` Hook | Hoch | Minuten | Mittel | Hoch |
| Subagents bis Tiefe 3 | Hoch | Stunden | Hoch | Hoch |
| `sandbox.network.strictAllowlist` | Mittel | Minuten | Mittel | Mittel |
| MCP stateless Core | Mittel | Tage | Hoch | Mittel |
| `/code-review` als Background-Agent | Hoch | Minuten | Mittel | Hoch |
| Opus 5 (1M Context) | Hoch | Minuten | Hoch | Hoch |
| Sonnet 5 Preiserhöhung ab September | Niedrig | Minuten | Mittel | Mittel |
| Opus 4.1 Abschaltung 5. August | Hoch | Minuten | Hoch | Dringend |

---

## Empfohlene Aktionen

1. **Opus 4.1 Migration (bis 5. August):** Prüfen, ob irgendwo `claude-opus-4-1` hardcodiert ist. Migration auf `claude-opus-5` oder `claude-opus-4` durchführen. Frist: 48 Stunden.

2. **Legacy Workbench ablösen (bis 17. August):** Falls experimentelle Prompt-APIs genutzt werden, auf den Standard-Workflow umsteigen. Frist: zwei Wochen.

3. **DirectoryAdded Hook aktivieren:** Für Repos, die mit `/add-dir` arbeiten, einen Hook hinterlegen, der automatisch CLAUDE.md-Kontext lädt. Aufwand: 10 Minuten.

4. **Subagent-Tiefe 3 in bestehende Workflows einplanen:** Für komplexe Sales-Development-Flows (Account-Recherche, Transkript-Analyse, Briefing-Erstellung) prüfen, ob Orchestrierung jetzt tiefer verschachtelt werden kann.

5. **Budget für Sonnet 5 ab September anpassen:** Preiserhöhung um 50% ($2 auf $3 Input, $10 auf $15 Output) bei API-lastigen Prozessen einkalkulieren. Wer viel Sonnet 5 nutzt, sollte Kosten jetzt durchrechnen.

6. **MCP stateless Core beobachten:** Serverless MCP-Server werden deutlich einfacher zu deployen. Für zukünftige Tool-Integrationen (CRM, Kalender, Datenquellen) ist das eine strategische Chance für EXPAND B2B.

---

## Keine Aktion nötig

- Benutzungsboost bis 19. August: Automatisch aktiv, kein Handlungsbedarf.
- Opus 5 Fast Mode: Ist bereits verfügbar, Upgrade erfolgt beim nächsten API-Aufruf automatisch.
- MCP 2026-07-28: Noch in Rollout-Phase, keine sofortige Migration erforderlich.
- Windows Unicode-Fixes: Nicht relevant für Linux/Mac-Umgebungen des Cowork OS.
