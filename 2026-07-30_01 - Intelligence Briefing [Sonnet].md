# Claude Intelligence Briefing - 2026-07-30

## Neue Releases

### Claude Code v2.1.220 (25. Juli 2026) - aktuellste Version
Fehlerbehebungen und Stabilitätsverbesserungen. Kein neues Release seit dem 25. Juli.

### Kein neues Claude Code Release seit 25. Juli
Die letzte Woche war durch das Opus-5-Launch (v2.1.219, 24. Juli) geprägt. Die Entwicklung liegt aktuell ruhig.

---

## Blog und Ankündigungen

### MCP Spec 2026-07-28 - Stateless Core (28. Juli 2026)
Die wichtigste Neuigkeit dieser Woche. Anthropic hat die Unterstützung für die neue MCP-Spezifikation 2026-07-28 angekündigt.

**Was ändert sich:**
- **Stateless Core**: Kein Initialize-Handshake mehr, keine Protocol-Level-Session. Jeder Request ist self-contained und enthält Protokollversion, Client-Information und Capabilities.
- **OAuth 2.0 und OIDC Hardening**: MCP-Server verbinden sich jetzt nativ mit Enterprise-Identity-Systemen wie Microsoft Entra oder Okta, ohne Workarounds.
- **Deployment vereinfacht**: Remote MCP-Server brauchen keine Sticky Sessions mehr, keinen Shared Session Store und kein Deep Packet Inspection am Gateway. Plain Round-Robin Load Balancer reicht.
- **Routable Headers**: Traffic kann über `Mcp-Method`-Header geroutet werden.
- **Tools-List-Caching**: Clients können Tool-Listen für die vom Server erlaubte TTL cachen.

**Wichtig**: Die neue Spec bringt Breaking Changes. Bestehende MCP-Server müssen migriert werden (Initialize-Handshake entfernen, Session-Management entfernen).

**Ökosystem-Signal**: MCP hat 400 Millionen monatliche SDK-Downloads überschritten, eine Vervierfachung im Jahr 2026. Der Standard hat sich in der Branche durchgesetzt.

### Anthropic-Blog: MCP 2026-07-28 kommt zu Claude (28. Juli 2026)
Anthropic hat einen eigenen Blogbeitrag veröffentlicht, der erklärt, wie Claude die neue Spec unterstützt. Offizieller Support im Claude Code bereits integriert.

### Claude-Ausfall (29. Juli 2026, ca. 15:50 Uhr ET)
Kurzzeitige Störung gemeldet. Betroffen waren hunderte Nutzer. Keine weiteren Details bekannt.

---

## Community-Highlights

Aus indirekten Quellen, da Reddit-Direktzugriff gesperrt:

- **MCP 2026-07-28 dominiert die Diskussion**: Die Breaking Changes werden aktiv diskutiert. Migration von stateful auf stateless ist das Hauptthema in Entwickler-Communities.
- **Dynamic Workflow Size**: Der neue `workflowSizeGuideline`-Settings-Key (konfigurierbar in settings.json) erlaubt es, die Workflow-Agenten-Grenze (Standard: 15) pro Projekt zu steuern.
- **Plan-then-Build als Best Practice**: In der Community etabliert sich der Workflow "CLAUDE.md + Plan Mode vor jedem Edit + Subagents für Research + Parallel Agents in Git Worktrees" als Standard-Setup für zuverlässige Ergebnisse.
- **Webinar "What We Shipped"**: Das Claude Code Team hat ein Live-Webinar veröffentlicht mit Feature-Vorstellung und Q&A.

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| MCP Spec 2026-07-28 (stateless) | Hoch | Tage | Hoch | **Sehr hoch** |
| MCP OAuth/OIDC Enterprise-Support | Hoch | Stunden | Hoch | **Sehr hoch** |
| workflowSizeGuideline Settings Key | Mittel | Minuten | Mittel | Mittel |
| Plan-then-Build Community-Best-Practice | Hoch | Minuten | Mittel | Hoch |
| Claude-Ausfall 29. Juli | Niedrig | keine | Niedrig | Niedrig |

---

## Empfohlene Aktionen

1. **MCP-Server-Bestandsaufnahme durchführen**: Welche MCP-Server sind im Cowork OS aktiv? Prüfen, ob sie die neue Spec 2026-07-28 bereits unterstützen oder noch stateful sind. Migrationsaufwand abschätzen.

2. **MCP-Migrationsdokumentation lesen**: Der Blogbeitrag auf blog.modelcontextprotocol.io und der Beitrag auf aaif.io enthalten konkrete Migrationsleitfäden. Vor einer Migration auf neue Spec lesen.

3. **workflowSizeGuideline in settings.json prüfen**: Für komplexe Briefing-Workflows (mehr als 15 Agenten) kann der Grenzwert im Projektprofil angehoben werden. Relevant für zukünftige parallele Research-Runs.

4. **MCP als Verkaufsargument für B2B-Kunden nutzen**: 400M Downloads, Enterprise-IdP-Kompatibilität und stateless Deployment sind konkrete Argumente für IT-Entscheider. In Kunden-Präsentationen einbauen.

---

## Keine Aktion nötig

- **Claude-Ausfall 29. Juli**: Kurzzeitig, kein Handlungsbedarf.
- **Claude Code v2.1.220**: Nur Bugfixes, keine neuen Features.
- **Webinar "What We Shipped"**: Gut zur Nachverfolgung, kein unmittelbarer Implementierungsbedarf.

---

*Quellen: GitHub Releases anthropics/claude-code, code.claude.com/docs/en/changelog, blog.modelcontextprotocol.io/posts/2026-07-28, claude.com/blog/bringing-mcp-2026-07-28-to-claude, releasebot.io/updates/anthropic*
