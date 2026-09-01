# Claude Intelligence Briefing - 2026-09-01

## Neue Releases

- **v2.1.252** (31. August): Bugfix fuer "task output swap refused" auf manchen Macs, Fix fuer "always allow", das in Projekten ohne `.claude/settings.local.json` nicht gespeichert wurde, Stabilitaetsfix fuer Remote Control Sessions bei schwacher Verbindung, Fix fuer Benachrichtigungen mit sehr grossen Fehlerausgaben.
- **v2.1.251** (28. August): Neue Hooks `PreModelSwitch` und `PostModelSwitch` zur Steuerung von Modellwechseln, Live-Streaming von Subagent-Tool-Aufrufen fuer Remote Control, Spend-Limit-Anzeige in `/usage` fuer Gateway-Konten, Cache-Metriken (Hit-Ratio) in `/cost`. Sicherheitsfixes: Datei-Tools folgten Symlinks nach der Berechtigungspruefung, Plugin-Befehle konnten per Pfad-Traversal ausserhalb des Plugin-Verzeichnisses zeigen, Deny-Regeln griffen nicht bei symlinked Suchpfaden fuer Grep/Glob.
- **v2.1.250** (28. August): Allgemeine Bugfixes und Stabilitaetsverbesserungen.
- **v2.1.248** (27. August): Neues Flag `--restricted` entfernt Code-Ausfuehrung und externen Dateizugriff aus einer Session, `experimental.cacheTtl` im Agent-Frontmatter erlaubt individuelle Prompt-Cache-TTL pro Agent, verbesserte Diagnosen in `/doctor` und `/status`.

## Blog/Ankuendigungen

- **Sicherheitsvorfall Infostealer:** Malware (Vidar, LummaC2, StealC, RedLine, Acreed unter Windows, Atomic Stealer unter macOS) hat auf infizierten Nutzer-PCs aktive Claude-Login-Sessions abgegriffen und Nutzungslimits missbraeuchlich verbraucht. Anthropic meldet betroffene Nutzer ab, entfernt gespeicherte Zahlungsmethoden und erstattet unautorisierte Kosten. Infektionsquelle waren raubkopierte Downloads und manipulierte Apps, kein Angriffsvektor ueber Claude selbst. Relevanz: Awareness-Thema fuer alle, die Claude auf privaten Geraeten nutzen.
- **Preisaenderung Sonnet 5:** Der Einfuehrungspreis von 2 USD / 10 USD pro Million Tokens endete am 31. August. Ab 1. September gilt der Standardpreis von 3 USD / 15 USD.
- **Model Hardware Standard:** Einheitliche Treiber-Schnittstelle, damit Agenten Laborgeraete wie Mikroskope, Liquid Handler und Robotikarme ueber eine gemeinsame API statt herstellerspezifischer Schnittstellen ansteuern koennen. Kein direkter Bezug zu B2B Sales Development.
- **Claudeforce (Salesforce-Partnerschaft):** Claude wird Standard-Reasoning-Modell in Agentforce, Slack und Salesforce-Entwicklertools. 37 vorgefertigte Sales-Skills, Pilotzugang vorab, offene Beta im September angekuendigt.
- **IPO-Vorbereitung:** Berichte ueber einen bevorstehenden Boersengang von Anthropic in einer Groessenordnung nahe dem SpaceX-Debuet. Reine Marktbeobachtung, keine unmittelbare Produktrelevanz.

## Community-Highlights

Reddit r/ClaudeCode war ueber die konfigurierte Abfrage nicht erreichbar, die Quelle wurde uebersprungen. Aus anderen Quellen lassen sich diese Themen der letzten Tage ablesen:
- Wiederkehrende Cloud-Tasks: Zeitplan und Prompt festlegen, Claude Code fuehrt den Task automatisch ueber Cloud-Infrastruktur aus.
- Neue Claude Code Channels zur Steuerung von Sessions ueber Telegram oder Discord direkt vom Handy aus.
- Einstellbares Effort-Level fuer Skills und Slash-Commands zur Steuerung der Denkzeit.

## Relevanz fuer Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschaeftswert | Prioritaet |
|---|---|---|---|---|
| `--restricted` Flag (2.1.248) | Hoch, fuer Sessions ohne Code-Ausfuehrung | Minuten | Hoch | Hoch |
| Wiederkehrende Cloud-Tasks | Hoch, fuer taegliche/woechentliche Skills | Minuten | Hoch | Hoch |
| Infostealer-Warnung | Hoch, Team-Awareness | Minuten | Hoch | Hoch |
| `PreModelSwitch`/`PostModelSwitch` Hooks | Mittel | Stunden | Mittel | Mittel |
| `experimental.cacheTtl` im Agent-Frontmatter | Mittel | Minuten | Niedrig | Mittel |
| Claude Code Channels (Telegram/Discord) | Niedrig fuer aktuellen Workflow | Stunden | Niedrig | Niedrig |
| Claudeforce/Salesforce-Partnerschaft | Niedrig, kein Salesforce-Einsatz | Tage | Mittel | Niedrig |

## Empfohlene Aktionen

1. `--restricted` Flag fuer Sessions pruefen, die nur Recherche oder Analyse ohne Code-Ausfuehrung brauchen, zum Beispiel Account-Recherche oder Lead-Scoring, um die Angriffsflaeche zu reduzieren.
2. Team kurz ueber den Infostealer-Vorfall informieren: keine raubkopierte Software nutzen, Claude-Zugangsdaten regelmaessig pruefen, besonders auf privaten Geraeten.
3. Wiederkehrende Cloud-Tasks als Alternative zu manuell gestarteten Sessions fuer bestehende taegliche und woechentliche Skills evaluieren, etwa fuer dieses Briefing selbst oder fuer Lead-Scoring.
4. Neuen Sonnet 5 Standardpreis (3 USD / 15 USD pro Million Tokens) in die interne Kostenkalkulation fuer Klientenprojekte aufnehmen.

## Keine Aktion noetig

Model Hardware Standard und Claudeforce-Partnerschaft betreffen aktuell keinen Anwendungsfall bei EXPAND B2B. Die IPO-Vorbereitung ist reine Marktbeobachtung ohne direkten Implementierungsbezug.
