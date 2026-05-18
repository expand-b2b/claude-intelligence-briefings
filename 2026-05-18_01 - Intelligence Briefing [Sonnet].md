# Claude Intelligence Briefing - 2026-05-18

## Neue Releases

### Claude Code v2.1.143 (15. Mai 2026)
- **Plugin-Abhängigkeitserzwingung**: `claude plugin disable` verweigert Ausführung, wenn ein anderes aktives Plugin abhängig ist. Verhindert kaputte Plugin-Ketten.
- **Kontextkosten-Projektion**: `/plugin` Marketplace zeigt jetzt geschätzte Token-Kosten pro Turn und pro Invocation an.
- **`worktree.bgIsolation: "none"`**: Background-Agents dürfen jetzt direkt im Working Copy arbeiten, ohne `EnterWorktree`-Schritt.
- **PowerShell standardmäßig mit `-ExecutionPolicy Bypass`**: Betrifft Windows-Nutzer auf Bedrock, Vertex und Foundry.
- Bugfix: Stop-Hooks, die sich in Endlosschleifen blockieren, brechen jetzt nach 8 aufeinanderfolgenden Blöcken ab.

### Claude Code v2.1.142 (14. Mai 2026)
- **Fast Mode nutzt jetzt Opus 4.7** (vorher Opus 4.6) als Standard.
- **`claude agents` erhält neue Flags**: `--add-dir`, `--settings`, `--mcp-config`, `--plugin-dir`, `--permission-mode`, `--model`, `--effort`, `--dangerously-skip-permissions`.
- **Plugin-Skills**: Plugins mit einer `SKILL.md` im Root-Verzeichnis werden automatisch als Skill im System angeboten.

### Claude Code v2.1.141 (13. Mai 2026)
- **`terminalSequence` in Hook-JSON**: Ermöglicht Desktop-Notifikationen und Window-Titel-Updates direkt aus Hooks heraus.
- **`CLAUDE_CODE_PLUGIN_PREFER_HTTPS`**: GitHub-Plugins über HTTPS statt SSH klonen (relevant für Umgebungen ohne SSH-Keys).
- **`ANTHROPIC_WORKSPACE_ID`**: Workload Identity Federation Support für Enterprise-Deployments.
- Rewind-Menü: "Summarize up to here" komprimiert frühere Kontexte manuell.

### Claude Code v2.1.139 (11. Mai 2026) - Wichtigstes Release der Woche
- **Agent View (Research Preview)**: `claude agents` zeigt alle laufenden, blockierten und erledigten Claude Code Sessions in einer Übersicht.
- **`/goal` Slash-Command**: Setzt eine Abschlussbedingung. Claude arbeitet eigenständig über mehrere Turns, bis das Ziel erfüllt ist.
- **`/scroll-speed`**: Scrollgeschwindigkeit der Maus anpassbar mit Live-Vorschau.
- Hook `args`-Feld: Exec-Form spawnt Kommandos direkt ohne Shell-Wrapper.
- **`continueOnBlock`** für PostToolUse-Hooks: Workflow läuft trotz blockiertem Tool weiter.

---

## Blog / Ankündigungen

### Claude for Small Business (13. Mai 2026)
Anthropic hat ein dediziertes Angebot für kleine Unternehmen eingeführt. Details noch begrenzt verfügbar, aber das Signal ist klar: Anthropic bewegt sich gezielt in den KMU-Markt.

### Gates Foundation Partnership (14. Mai 2026)
200 Millionen Dollar Partnerschaft mit der Gates Foundation für globale Gesundheit, Bildung und wirtschaftliche Mobilität. Keine direkte Produktrelevanz, aber stärkt Anthropics Position als vertrauenswürdiger KI-Partner für institutionelle Stakeholder.

### PwC deployt Claude (14. Mai 2026)
PwC setzt Claude ein, um Technologie-Projekte umzusetzen und Unternehmensfunktionen für Klienten neu zu gestalten. Relevantes Signal für EXPAND B2B: Große Beratungshäuser bauen Claude-Workflows in Kernprozesse ein.

### The Anthropic Institute - Forschungsagenda (7. Mai 2026)
Vier Schwerpunkte: Wirtschaftliche Diffusion von KI, Bedrohungsszenarien und Resilienz, KI-Systeme in freier Wildbahn, KI-getriebene Forschung und Entwicklung. Zeigt, wo Anthropic langfristig forscht.

---

## Community-Highlights

Quelle: DEV Community, morphllm.com (Reddit-Aggregation), GitHub

- **r/ClaudeCode** zählt über 4.200 wöchentliche aktive Beitragende (Stand Anfang 2026), mehr als dreimal so viele wie r/Codex.
- Dominantes Thema: Setups mit 30+ Skills, MCP-Servern und selbstlernenden Hooks. Referenz-Artikel: "Our Claude Code Setup: 30 Skills, MCPs, and Self-Learning Hooks" auf DEV Community.
- Community-Konsens: Claude Code belohnt strukturierte Nutzung (CLAUDE.md, Subagents, Hooks, Slash Commands) stark. Wer es wie Autocomplete nutzt, wird enttäuscht.
- Neue populäre Skills: `pytorch-patterns`, `documentation-lookup`, `bun-runtime`, `nextjs-turbopack`, `mcp-server-patterns`.
- `everything-claude-code` (GitHub, affaan-m): Framework mit Skills, Instinkten, Speicher und Sicherheitshooks als Open-Source-Referenz.

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| `/goal` Command (autonome Multi-Turn-Aufgaben) | Hoch | Minuten | Hoch | Sehr hoch |
| Agent View (`claude agents`) | Hoch | Minuten | Hoch | Sehr hoch |
| Plugin-Skills via `SKILL.md` | Hoch | Stunden | Hoch | Hoch |
| Fast Mode auf Opus 4.7 | Mittel | Minuten | Mittel | Mittel |
| `worktree.bgIsolation: "none"` | Mittel | Stunden | Mittel | Mittel |
| `continueOnBlock` für Hooks | Mittel | Stunden | Mittel | Mittel |
| `claude agents` neue Flags | Mittel | Stunden | Mittel | Mittel |
| Claude for Small Business | Mittel | Tage (Evaluation) | Hoch | Mittel |
| Desktop-Notifikationen via `terminalSequence` | Niedrig | Minuten | Niedrig | Niedrig |
| Gates Foundation / PwC / Institute | Niedrig | keine | Niedrig | keine |

---

## Empfohlene Aktionen

1. **/goal testen**: Sofort ausprobieren. Den `/goal`-Command mit einer realen Cowork-OS-Aufgabe starten (z.B. "Erstelle ein vollständiges Briefing und committe es"). Kein Setup nötig, nur Tippen.

2. **Agent View aktivieren**: `claude agents` im Terminal aufrufen und die Übersicht der laufenden Sessions prüfen. Besonders wertvoll, wenn mehrere Background-Agents parallel laufen.

3. **Plugin-Skills evaluieren**: Prüfen, ob bestehende Claude-Erweiterungen im Cowork OS als Plugins mit `SKILL.md` strukturiert werden können. Das würde Skills direkt aus Plugins heraus verfügbar machen.

4. **Fast Mode umstellen**: Sicherstellen, dass Fast Mode auf v2.1.142 oder neuer läuft, damit Opus 4.7 genutzt wird. Verbessert Reasoning-Qualität ohne Zusatzkosten.

5. **Claude for Small Business beobachten**: Angebotspagina nach Details prüfen, sobald mehr Informationen verfügbar sind. Potenziell relevant für EXPAND B2B Klienten im KMU-Segment.

---

## Keine Aktion nötig

- Gates Foundation Partnership: Strategisch interessant, keine operative Relevanz.
- PwC-Deployment: Marktbestätigung, kein Handlungsbedarf.
- Anthropic Institute Agenda: Langfristig beobachten, kein kurzfristiger Impact.
- `CLAUDE_CODE_PLUGIN_PREFER_HTTPS`: Nur relevant bei Umgebungen ohne SSH-Keys konfiguriert.
- `ANTHROPIC_WORKSPACE_ID`: Nur für Enterprise-Deployments mit Workload Identity Federation.
- VSCode Windows-Fix (v2.1.137): Nicht betroffen, wenn primäre Nutzung auf Linux/Mac.

---

## Quellen

- [Claude Code Changelog](https://code.claude.com/docs/en/changelog)
- [GitHub Releases anthropics/claude-code](https://github.com/anthropics/claude-code/releases)
- [Anthropic News](https://www.anthropic.com/news)
- [Our Claude Code Setup: 30 Skills, MCPs, and Self-Learning Hooks](https://dev.to/axitslab/our-claude-code-setup-30-skills-mcps-and-self-learning-hooks-5gje)
- [Claude Code Reddit: What Developers Actually Say (2026)](https://www.morphllm.com/claude-code-reddit)
- [Best Claude Code Skills & Plugins (2026 Guide)](https://dev.to/raxxostudios/best-claude-code-skills-plugins-2026-guide-4ak4)
