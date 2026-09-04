# Claude Intelligence Briefing - 2026-09-04

## Neue Releases

### v2.1.260 (03.09.2026) - Aktuell
- **Diff-Panel im Fullscreen-Modus**: Umschaltbar mit `/diff`, zeigt nicht committete Änderungen direkt in der Session.
- **Prompt-Cache-Miss-Diagnose**: `/cost` und die Statuszeile zeigen jetzt wahrscheinliche Ursachen für Cache Misses an.
- **`/reload-plugins` für Headless-Sessions**: Plugins in unbeaufsichtigten Sessions neu laden ohne Neustart.
- Fixes: Permission-Regeln mit Klammern, Bash-Auto-Approval bei zsh-Command-Substitution, Bedrock-Zertifikatsprobleme, Prompt Caching bei Fable 5.1.

### v2.1.259 (02.09.2026)
- **`managedMcpServers`**: Organisationen können jetzt zentral HTTP/SSE MCP-Server für alle Nutzer bereitstellen (gleiches Format wie `.mcp.json`).
- **`--permission-prompts none`**: Für unbeaufsichtigte Headless-Hosts. Alles, was sonst einen Prompt auslösen würde, wird automatisch verweigert statt zu blockieren.
- Fixes: Gleichzeitige Sessions überschrieben sich gegenseitig `~/.claude.json`-Änderungen, `Read()`-Deny-Regeln griffen nicht bei Datei-Optionswerten, Cache-Invalidierung bei OAuth-Refresh.

### v2.1.258 (01.09.2026)
- Hotfix: Absturz beim Start auf macOS 12 (Monterey), Regression aus v2.1.255.
- Fix: Remote/Scheduled Sessions scheiterten nach erneuter Permission-Freigabe.

### v2.1.257 (01.09.2026)
- **Claude Fable 5.1**: Neu, 1M Kontextfenster, jetzt Standard-Fable-Modell. Cache-Read-Preis von 1,00 auf 0,25 USD/Mtok gesenkt (minus 75 Prozent).
- **`timeFormat` und `timeZone` Settings**: 12h/24h oder eigenes strftime-Format konfigurierbar.
- **Containment Escape Regel im Auto-Mode**: Zusätzliche Sicherheitsschranke.
- **`/effort s`**: Effort-Level nur für aktuelle Session ändern, ohne globale Einstellung zu verändern.

---

## Blog/Ankündigungen

### Claude Fable 5.1 und Mythos 5.1 (01.09.2026)
Anthropic hat am 1. September drei Neuerungen gleichzeitig veröffentlicht: Fable 5.1, Mythos 5.1 und Enterprise Frontier Safeguards (EFS). Fable 5.1 bringt die Cache-Read-Preissenkung um 75 Prozent, laut Anthropic ergeben sich dadurch Einsparungen von etwa 25 Prozent bei typischen Workloads und bis zu 45 Prozent bei agentischen Aufgaben. Mythos 5.1 ist auf das US Cyber Verification Program und das Life Sciences Verification Program beschränkt und für Cowork OS nicht relevant.
**Relevanz**: Mittel bis Hoch. Die Cache-Preissenkung wirkt sich direkt auf laufende Kosten von Skills und Scheduled Tasks aus, die viel wiederholten Kontext nutzen.

### Enterprise Frontier Safeguards (EFS) (01.09.2026)
Kombiniert Zero Data Retention mit Missbrauchserkennung, Daten bleiben in kundenkontrollierter Cloud-Infrastruktur statt bei Anthropic.
**Relevanz**: Niedrig für EXPAND B2B im aktuellen Setup, relevant erst bei Enterprise-Kunden mit strengen Datenresidenz-Anforderungen.

### Claudeforce (Salesforce + Anthropic) (26.08.2026)
Salesforce und Anthropic haben eine Integration namens Claudeforce angekündigt, Claude direkt in Salesforce als CRM-Assistent. Pilotkunden aktuell, offene Beta ab September 2026 geplant.
**Relevanz**: Hoch für B2B Sales Development, falls Klienten von EXPAND B2B Salesforce nutzen. Beobachten, sobald Beta öffnet.

### Eingebauter Browser im Desktop-App
Claude Desktop bekommt einen eingebauten Browser im Seitenpanel für Web-Aufgaben, Rollout für Pro, Max, Team und Enterprise.
**Relevanz**: Mittel. Reduziert Kontextwechsel bei Recherche-Aufgaben, aber kein direkter Cowork-OS-Hebel.

---

## Community-Highlights

Reddit r/ClaudeCode war heute über den Proxy nicht erreichbar (403, Policy-Sperre). Websuche lieferte keine spezifischen aktuellen Reddit-Threads. Keine verifizierten Community-Highlights für diesen Zeitraum.

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Cache-Preissenkung Fable 5.1 (75 Prozent) | Hoch | Keine (automatisch) | Hoch | Hoch |
| `--permission-prompts none` (v2.1.259) | Hoch | Minuten | Hoch | Hoch |
| `managedMcpServers` (v2.1.259) | Mittel | Stunden | Mittel | Mittel |
| Diff-Panel `/diff` (v2.1.260) | Mittel | Keine | Niedrig | Mittel |
| `/effort s` (v2.1.257) | Mittel | Minuten | Niedrig | Mittel |
| Claudeforce Beta (Salesforce) | Mittel | Tage (bei Klient-Rollout) | Hoch | Mittel |
| Eingebauter Browser Desktop | Niedrig | Keine | Niedrig | Niedrig |
| Enterprise Frontier Safeguards | Niedrig | Tage | Niedrig | Niedrig |

---

## Empfohlene Aktionen

1. **`--permission-prompts none` für Scheduled Tasks prüfen** (diese Woche): Für unbeaufsichtigte tägliche Briefings wie dieses hier kann das Flag verhindern, dass ein hängender Permission-Prompt einen Lauf blockiert. Sinnvoll für alle Cowork-OS-Automationen ohne Aufsicht.

2. **Cache-Miss-Diagnose in `/cost` nutzen** (diese Woche): Bei wiederkehrenden Skills wie den NestKing-Sequenzen oder Account-Recherchen prüfen, wo Prompt-Cache-Treffer verloren gehen. Direkter Hebel auf laufende Kosten, besonders jetzt mit der Cache-Preissenkung.

3. **Claudeforce beobachten** (laufend): Sobald die offene Beta startet, prüfen ob EXPAND-B2B-Klienten mit Salesforce-CRM als Referenz oder Use Case dienen können.

4. **`managedMcpServers` evaluieren** (nächste 2 Wochen): Falls mehrere Cowork-OS-Instanzen bei EXPAND B2B laufen, zentrale MCP-Server-Bereitstellung statt Einzelkonfiguration prüfen.

---

## Keine Aktion nötig

- **Diff-Panel `/diff`**: Reines UI-Feature ohne Workflow-Hebel für Cowork OS.
- **Mythos 5.1**: Zugriff auf Cyber/Life-Sciences-Programme beschränkt, kein Anwendungsfall.
- **Enterprise Frontier Safeguards**: Erst relevant bei konkretem Enterprise-Kunden mit Datenresidenz-Anforderung.
- **Bug-Fixes v2.1.257-260**: Werden durch reguläres `claude update` automatisch eingespielt.
- **Eingebauter Browser Desktop**: Kein Einfluss auf Scheduled-Task- oder Skill-Workflows.

---

*Quellen: GitHub Releases (anthropics/claude-code), code.claude.com/docs/en/changelog, Websuche zu Anthropic-Ankündigungen | Reddit r/ClaudeCode nicht erreichbar | Generiert: 2026-09-04 | Modell: claude-sonnet-5*
