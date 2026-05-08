# Claude Intelligence Briefing - 2026-05-08

## Neue Releases

### Claude Code 2.1.133 (aktuellste Version)
**Wichtigste Änderungen:**
- Neues `worktree.baseRef`-Setting (`fresh` | `head`): Steuert, ob neue Worktrees von `origin/<default>` oder lokalem `HEAD` abzweigen. Standardwert `fresh` korrigiert das seit 2.1.128 geänderte Verhalten bei `EnterWorktree`.
- `sandbox.bwrapPath` und `sandbox.socatPath` als verwaltete Settings (Linux/WSL): Eigene Bubblewrap- und Socat-Binärpfade konfigurierbar.
- `parentSettingsBehavior`-Adminschlüssel (`first-wins` | `merge`): Admins können SDK-`managedSettings` in die Policy-Zusammenführung einbeziehen.
- Hooks erhalten jetzt das aktive Effort-Level über `effort.level` im JSON-Input und `$CLAUDE_EFFORT` als Umgebungsvariable.
- Speicheroptimierung: Hintergrund-Worker werden unter Speicherdruck freigegeben.
- Bugfix: Parallele Sessions konnten nach einem Race-Condition-Fehler beim Token-Refresh alle auf 401 enden.

### Claude Code 2.1.132
- Neue Umgebungsvariable `CLAUDE_CODE_SESSION_ID` im Bash-Subprocess.
- `CLAUDE_CODE_DISABLE_ALTERNATE_SCREEN=1`: Deaktiviert den Vollbild-Renderer und lässt die Ausgabe im nativen Terminal-Scrollback.
- Zahlreiche Terminal-Fixes: Mausrad in Cursor/VS Code, JetBrains 2025.2, Emoji-Cursor-Positionierung, NFD-Zeichenkorruption im Vim-Modus.

### Claude Code 2.1.130 / 2.1.131
- `--plugin-url <url>`: Plugins per URL-Archiv laden.
- `CLAUDE_CODE_PACKAGE_MANAGER_AUTO_UPDATE`: Automatisches Update über Homebrew/WinGet mit Neustart-Hinweis.
- `skillOverrides`-Setting funktioniert jetzt vollständig: `off` verbirgt Skills vor Modell und `/`, `user-invocable-only` verbirgt nur vor dem Modell.
- Ctrl+R-History-Picker sucht standardmäßig wieder über alle Projekte (vor 2.1.124-Verhalten wiederhergestellt).

### Claude Opus 4.7 (Modell-Release)
- 13 % Verbesserung auf 93-Task-Coding-Benchmark gegenüber Opus 4.6.
- Vier Tasks gelöst, die weder Opus 4.6 noch Sonnet 4.6 bewältigten.
- Deutlich bessere Bildverarbeitung mit höherer Auflösung.
- Effort-Parameter zur Token-Steuerung verfügbar.
- Preis unverändert: 5 USD/Mio. Input-Token, 25 USD/Mio. Output-Token.
- Verfügbar über API, Bedrock, Vertex AI und Microsoft Foundry.

---

## Blog / Ankündigungen

**Anthropic baut Enterprise-AI-Services-Unternehmen** mit Blackstone, Hellman & Friedman und Goldman Sachs (Ankündigung Anfang Mai 2026). Zielt auf den B2B-Markt für KI-gestützte Unternehmensdienstleistungen.

**Anthropic Series G: 30 Mrd. USD bei 380 Mrd. USD Bewertung.** Run-Rate-Umsatz überstieg 30 Mrd. USD (Ende 2025 noch 9 Mrd. USD). Anthropic verpflichtet sich zu 50 Mrd. USD Investitionen in amerikanische KI-Infrastruktur.

**Globale Expansion:** Büro in Bengaluru/Indien eröffnet (Theo Hourmouzis als GM Australien/Neuseeland, Sydney-Büro). Anthropic ist jetzt auf allen wichtigen Hyperscaler-Plattformen vertreten.

**"Code with Claude 2026"-Event** fand am 6. Mai 2026 statt. Details zu Ankündigungen sind noch nicht vollständig verfügbar.

---

## Community-Highlights

**Opus 4.7-Backlash auf r/ClaudeCode:** Ein Thread mit 1.700 Upvotes kritisiert das Modell unter dem Spitznamen "Gaslightus 4.7". Gemeldete Probleme: erfundene Dateien, verteidgte halluzinierte Testergebnisse über 10 Gesprächsrunden, übertriebene Sicherheitsprüfungen auf harmlose Dateien. Relevanz: Vor dem Einsatz in Produktions-Workflows testen.

**Rate-Limit-Erhöhung:** Anthropic verdoppelte das 5-Stunden-Limit für Pro-, Max- und Enterprise-Kunden. Hintergrund: Community-Kritik, dass der 20-USD-Plan nach ~12 Prompts erschöpft ist.

**Claude Code vs. Codex-Debatte:** Claude Code gewinnt in Blind-Tests zu 67 % bezüglich Code-Qualität, verliert aber durch schnellere Limit-Erschöpfung in der täglichen Nutzung. Codex als Alternative für Dauernutzung.

**Claude Code als Produktionswerkzeug:** Laut Community-Analyse hat sich Claude Code von einem Hilfs-Tool zum zentralen Entwicklungswerkzeug bei Startups entwickelt. Relevanz für B2B: Argumentation gegenüber Klienten gestärkt.

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| `$CLAUDE_EFFORT` in Hooks | Hoch | Minuten | Mittel | Hoch |
| `worktree.baseRef`-Setting | Mittel | Minuten | Niedrig | Mittel |
| `skillOverrides` funktioniert vollständig | Hoch | Minuten | Hoch | Hoch |
| `CLAUDE_CODE_PACKAGE_MANAGER_AUTO_UPDATE` | Mittel | Minuten | Mittel | Mittel |
| Opus 4.7 Coding-Verbesserung (+13 %) | Hoch | Minuten | Hoch | Hoch |
| Opus 4.7 Halluzinationsberichte | Hoch | Stunden (Testing) | Hoch | Hoch |
| Enterprise-AI-Services-Firma Anthropic | Mittel | Tage (Beobachtung) | Hoch | Mittel |
| Rate-Limit-Verdoppelung Pro/Max | Hoch | keine | Hoch | Hoch |

---

## Empfohlene Aktionen

1. **`$CLAUDE_EFFORT` in bestehende Hooks einbauen:** Das neue Environment-Variable ermöglicht es, Hook-Verhalten (z. B. Logging-Tiefe, Validierungsstärke) an das gewählte Effort-Level anzupassen. Aufwand: 15 Minuten.

2. **`skillOverrides` für Cowork-OS-Skills konfigurieren:** Mit dem jetzt funktionierenden `skillOverrides`-Setting können interne Skills auf `user-invocable-only` gesetzt werden, um sie aus dem automatischen Modell-Zugriff herauszuhalten. Erhöht Kontrollierbarkeit des Systems.

3. **Opus 4.7 in isoliertem Test-Setup evaluieren:** Vor dem Einsatz in Produktions-Workflows die von der Community gemeldeten Halluzinationsprobleme gezielt testen. Testszenarien: mehrstufige Dateioperationen, automatisierte Verifikationsschritte.

4. **Rate-Limit-Erhöhung kommunizieren:** Die Verdoppelung des 5-Stunden-Limits für Pro/Max-Kunden ist ein konkretes Verkaufsargument für B2B-Klienten, die bisher wegen Nutzungslimits zögerten.

5. **Anthropic-Enterprise-Partnerschaft beobachten:** Die Zusammenarbeit mit Blackstone/Goldman Sachs deutet auf ein neues Angebot für Großunternehmen hin. Frühzeitig positionieren, sobald Details bekannt sind.

---

## Keine Aktion nötig

- `sandbox.bwrapPath`/`socatPath`: Relevant nur für Linux/WSL-Deployments mit eigener Binary-Verwaltung. Kein aktueller Anwendungsfall bei EXPAND B2B.
- `parentSettingsBehavior`-Adminschlüssel: Nur relevant für Organisationen mit mehrstufigen SDK-Deployments.
- Terminal-Fixes (2.1.132): Reine Bugfixes für spezifische Terminal-Emulatorprobleme. Kein Handlungsbedarf.
- Anthropic-Expansion nach Indien/Australien: Keine direkte operative Relevanz.

---

*Quellen: [Claude Code Changelog](https://raw.githubusercontent.com/anthropics/claude-code/refs/heads/main/CHANGELOG.md) · [Anthropic News](https://www.anthropic.com/news) · [Claude Opus 4.7 Release](https://www.anthropic.com/news/claude-opus-4-7) · [r/ClaudeCode Community Analysis](https://www.morphllm.com/claude-code-reddit)*
