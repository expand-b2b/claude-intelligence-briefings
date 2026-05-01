# Claude Intelligence Briefing - 2026-05-01

**Modell:** claude-sonnet-4-6
**Quellen:** GitHub Releases (vollständig) | Anthropic Blog (nicht erreichbar) | Reddit (nicht erreichbar)

---

## Neue Releases

### v2.1.126 (2026-05-01, heute)

Umfangreiches Release mit mehreren für Cowork OS relevanten Änderungen.

**Neue Befehle und Features:**
- `claude project purge [path]` löscht den gesamten Claude-Code-Zustand eines Projekts (Transkripte, Tasks, Dateihistorie, Config-Eintrag). Unterstützt `--dry-run`, `-y/--yes`, `-i/--interactive` und `--all`.
- `/model`-Picker listet jetzt Modelle vom `/v1/models`-Endpunkt des Gateways, wenn `ANTHROPIC_BASE_URL` auf ein kompatibles Gateway zeigt.
- `claude auth login` akzeptiert nun den OAuth-Code direkt im Terminal, wenn der Browser-Callback localhost nicht erreicht (WSL2, SSH, Container).
- Auto-Modus: Spinner wird rot, wenn ein Permission-Check hängt, statt wie eine laufende Operation auszusehen.

**Hooks und Observability:**
- `claude_code.skill_activated` OpenTelemetry-Event feuert jetzt auch für manuell getippte Slash-Commands und trägt neues Attribut `invocation_trigger` (`"user-slash"`, `"claude-proactive"`, `"nested-skill"`).

**Security-Fix:**
- `allowManagedDomainsOnly` / `allowManagedReadPathsOnly` wurden ignoriert, wenn eine höherrangige Managed-Settings-Quelle keinen `sandbox`-Block enthielt. Behoben.

**Windows:**
- PowerShell 7 (Microsoft Store, MSI ohne PATH, .NET global tool) wird jetzt erkannt.
- PowerShell wird als primäre Shell behandelt, wenn das PowerShell-Tool aktiviert ist.

**Bugfixes (Auswahl):**
- Bild > 2000px beim Einfügen bricht die Session nicht mehr ab; wird jetzt herunterskaliert.
- Stream-Idle-Timeout nach Mac-Schlafmodus behoben.
- Hintergrund- und Remote-Sessions brechen bei langen Denkpausen nicht mehr mit Idle-Timeout ab.
- `Ctrl+L` löscht das Prompt-Input nicht mehr; erzwingt nur noch einen Screen-Redraw.
- Deferred Tools (WebSearch, WebFetch usw.) stehen jetzt auch Skills mit `context: fork` im ersten Turn zur Verfügung.
- Agent-SDK-Hang bei fehlerhaftem Tool-Namen in parallelem Tool-Call-Batch behoben.

---

### v2.1.123 (2026-04-29)

- Bugfix: OAuth-Authentifizierung schlug mit 401-Retry-Schleife fehl, wenn `CLAUDE_CODE_DISABLE_EXPERIMENTAL_BETAS=1` gesetzt war.

---

### v2.1.122 (2026-04-28)

- `ANTHROPIC_BEDROCK_SERVICE_TIER` Umgebungsvariable für Bedrock-Service-Tier-Auswahl (`default`, `flex`, `priority`).
- PR-URL in `/resume`-Suchbox findet jetzt die Session, die den PR erstellt hat (GitHub, GitLab, Bitbucket).
- `/mcp` zeigt jetzt versteckte claude.ai-Connectors mit Hinweis auf Duplikate.
- OpenTelemetry: Numerische Attribute werden als Zahlen, nicht als Strings gesendet.
- OpenTelemetry: Neues `claude_code.at_mention`-Event für `@`-Mention-Auflösung.

---

### v2.1.121 (2026-04-28)

- `alwaysLoad`-Option für MCP-Server-Config: Wenn `true`, überspringt der Server das Tool-Search-Deferral und ist immer verfügbar.
- `claude plugin prune` entfernt verwaiste auto-installierte Plugin-Abhängigkeiten.
- Typ-Filter-Suchbox in `/skills` für schnelles Auffinden in langen Listen.
- PostToolUse-Hooks können jetzt das Tool-Output für **alle** Tools ersetzen via `hookSpecificOutput.updatedToolOutput` (vorher nur MCP).
- `CLAUDE_CODE_FORK_SUBAGENT=1` funktioniert jetzt auch in nicht-interaktiven Sessions.

---

### v2.1.119 (2026-04-23)

- `/config`-Einstellungen (Theme, Editor-Modus usw.) werden jetzt in `~/.claude/settings.json` gespeichert.
- `prUrlTemplate` für benutzerdefinierte Review-URLs im Footer-Badge.
- `CLAUDE_CODE_HIDE_CWD` zum Ausblenden des Arbeitsverzeichnisses im Startup-Logo.
- `--from-pr` akzeptiert jetzt GitLab, Bitbucket und GitHub Enterprise URLs.
- PowerShell-Tool-Befehle können in Permission-Mode auto-genehmigt werden.
- PostToolUse/PostToolUseFailure-Hooks enthalten jetzt `duration_ms`.

---

## Blog/Ankündigungen

Quelle nicht erreichbar (Host-Allowlist-Beschränkung). Keine Daten verfügbar.

---

## Community-Highlights

Quelle nicht erreichbar (Host-Allowlist-Beschränkung). Keine Daten verfügbar.

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| `alwaysLoad` für MCP-Server | Hoch | Minuten | Hoch | Hoch |
| PostToolUse ersetzt Output für alle Tools | Hoch | Stunden | Hoch | Hoch |
| `claude project purge` | Mittel | Minuten | Mittel | Mittel |
| `claude_code.skill_activated` mit `invocation_trigger` | Mittel | Stunden | Mittel | Mittel |
| OAuth-Code per Terminal-Paste | Hoch | Minuten | Mittel | Mittel |
| Security-Fix `allowManagedDomainsOnly` | Hoch | Minuten | Hoch | Hoch |
| `/skills`-Suchbox | Mittel | Minuten | Niedrig | Niedrig |
| `ANTHROPIC_BEDROCK_SERVICE_TIER` | Niedrig | Minuten | Niedrig | Niedrig |

---

## Empfohlene Aktionen

1. **`alwaysLoad` für kritische MCP-Server setzen** (Minuten): In allen Cowork-OS-Projekten die MCP-Server, die immer verfügbar sein müssen (z.B. Datenbank, CRM-Integration), mit `alwaysLoad: true` konfigurieren. Verhindert, dass Tool-Search-Deferral kritische Integrationen verbirgt.

2. **Security-Fix prüfen und ggf. updaten** (Minuten): Falls Managed-Settings mit `allowManagedDomainsOnly` oder `allowManagedReadPathsOnly` im Einsatz sind, auf v2.1.126 aktualisieren. Der vorherige Bug hätte diese Einschränkungen silently ignoriert.

3. **PostToolUse-Hook für Output-Transformation evaluieren** (Stunden): Der neue `updatedToolOutput`-Mechanismus ermöglicht, Tool-Ergebnisse vor der Anzeige zu transformieren. Für B2B-Klienten: CRM-Antworten normalisieren, interne IDs maskieren, oder Ausgaben ins Deutsche übersetzen.

4. **`claude project purge` in Onboarding-Flows einbauen** (Minuten): Bei der Übergabe von Projekten an Klienten oder beim Zurücksetzen von Demo-Umgebungen kann `claude project purge --yes` den State sauber entfernen.

5. **OpenTelemetry-Daten für Skill-Analytics nutzen** (Stunden): Das neue `invocation_trigger`-Attribut auf `claude_code.skill_activated` ermöglicht zu messen, welche Skills von Claude proaktiv (`claude-proactive`) vs. manuell (`user-slash`) ausgeführt werden. Relevant für die Optimierung von Workflow-Automatisierungen.

---

## Keine Aktion nötig

- **v2.1.123 OAuth-Fix**: Nur relevant wenn `CLAUDE_CODE_DISABLE_EXPERIMENTAL_BETAS=1` explizit gesetzt ist. Im Standard-Setup kein Handlungsbedarf.
- **Windows PowerShell-Verbesserungen**: Kein Cowork-OS-Relevanz; Infrastruktur läuft auf Linux/macOS.
- **`ANTHROPIC_BEDROCK_SERVICE_TIER`**: Nur relevant bei Bedrock-Einsatz. Aktuell nicht im Stack.
- **Japanisch/Koreanisch/Chinesisch Zeichendarstellung**: Kein Handlungsbedarf für deutschsprachigen Use Case.
- **Cursor/VS-Code-Scrolling-Fix**: Nützlich für Entwickler-Workflows, kein Handlungsbedarf für Automatisierungs-Pipelines.
