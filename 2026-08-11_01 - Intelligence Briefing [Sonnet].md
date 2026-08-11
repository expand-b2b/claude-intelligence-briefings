# Claude Intelligence Briefing - 2026-08-11

## Neue Releases

### Claude Code v2.1.227 (10. August 2026)
- **Feature-Flag-Fix**: Abonnement-Stufe wurde bei abgelaufenem Login-Token nicht korrekt geprüft; Max-Plan-Nutzer wurden fälschlich zur Aktivierung von Fable-Guthaben aufgefordert
- **GitHub Actions Fix**: Alle Bash-Befehle unter `claude-code-action` mit `allowed_non_write_users` schlugen auf GitHub-gehosteten Runnern fehl
- **Conversation Rewind Fix**: `/tui` holte fälschlich Konversationen zurück, die bis vor ihre erste Nachricht zurückgesetzt worden waren
- **Slash-Command-Menü**: Nur die ausgewählte Zeile wird blau markiert; Trefferzeichen fett statt umgefärbt; Emoji und akzentuierte Zeichen korrekt

### Claude Code v2.1.226 (8. August 2026)
- Allgemeine Fehlerbehebungen und Stabilitätsverbesserungen

### Claude Code v2.1.225 (8. August 2026)
- **Gateway-Ausgabenlimit**: Usage-Warnung nennt jetzt den geltenden Cap, den Reset-Zeitpunkt und die Betreibermeldung
- **Workspace Trust Prompt**: Claude Agents fragen nun in nicht vertrauenswürdigen Verzeichnissen nach Bestätigung (analog zu `claude`)
- **OAuth-Fix (macOS)**: MCP OAuth-Server schlugen nach Keychain-Read-Timeout intermittierend fehl
- **401-Fehler-Fix**: Kurzlebige Token ersetzten irrtümlich langlebige Tokens und brachen Headless-Sessions

### Claude Code v2.1.224 (7. August 2026)
- **Self-Hosted Environments**: Unterstützung für eigene Ausführungsumgebungen
- **Archive Plugin Source**: Plugins aus ZIP-Archiven über HTTPS installieren, mit optionalem SHA-256-Pinning
- **Neue Settings**: `crossSessionInbound` und `dialogExpiry`

---

## Blog/Ankündigungen (Anthropic, August 2026)

### Claude Design
Neues Produkt für die schnelle Erstellung von Präsentationen, Landingpages, Prototypen und Einseiten-Dokumenten. Export nach PDF, PPTX, Canva und HTML; direkte Übergabe an Claude Code.

### Claude Cowork: Mobile und Web
Cowork ist nun auf Mobilgeräten und im Web verfügbar. Sessions, Dateien und Hintergrundaufgaben laufen geräteübergreifend weiter; mobile Freigaben für agentengesteuerte Aktionen sind möglich.

### Claude Enterprise: Admin-Analytics
Detailliertere Nutzungs- und Kostenberichte auf Modell-Ebene sowie Ausgaben-Alerts für Administratoren.

### Claude for Government (Beta)
Erste Beta-Version einer government-zertifizierten Claude-Instanz.

### Chip-Design-Team
Anthropic baut ein eigenes Hardware-Team für KI-Chips, um Inferenz-Geschwindigkeit und Effizienz zu steigern.

### Leadership
Mariano-Florentino (Tino) Cuéllar trat am 4. August 2026 als Chief Global Affairs Officer bei Anthropic ein.

---

## Community-Highlights (r/ClaudeCode)

- **Multi-Agent-Workflows**: Power-User betreiben mehrere Claude-Code-Instanzen parallel in tmux-Panes; jeder Agent bearbeitet ein eigenes Modul oder Feature-Branch
- **Nutzungslimits-Debatte**: Thread "Claude Code Limits Were Silently Reduced" mit 360+ Kommentaren; Berichte über Rate-Limits nach 12 Prompts im Pro-Plan
- **Community-Konsens 2026**: "Für generelle Aufgaben ChatGPT, für anspruchsvolle Entwicklungsaufgaben Claude"
- **Promotion**: 2x Nutzungskapazität außerhalb der Kernzeiten 08:00-14:00 ET (Aktion läuft noch)

---

## Relevanz für Cowork OS

| Neuigkeit | Anwendbarkeit | Aufwand | Geschäftswert | Priorität |
|---|---|---|---|---|
| Archive Plugin Source (ZIP-Install) | Hoch | Minuten | Hoch | Hoch |
| Workspace Trust Prompt für Agents | Mittel | Minuten | Mittel | Mittel |
| Gateway-Ausgabenlimit in Usage-Warnung | Mittel | Minuten | Hoch | Hoch |
| crossSessionInbound / dialogExpiry Settings | Mittel | Stunden | Mittel | Mittel |
| Claude Design (PDF/PPTX-Export) | Hoch | Stunden | Hoch | Hoch |
| Cowork Mobile/Web | Hoch | Minuten | Hoch | Hoch |
| Self-Hosted Environments | Niedrig | Tage | Mittel | Niedrig |
| Claude for Government Beta | Niedrig | Tage | Niedrig | Niedrig |

---

## Empfohlene Aktionen

1. **Claude Design testen**: Erste eigene Präsentation oder Kundendeck über Claude Design erstellen und Exportfunktion nach PPTX bewerten. Direkte Übergabe an Claude Code evaluieren.
2. **Cowork Mobile einrichten**: App auf dem Mobilgerät einrichten und prüfen, ob laufende Hintergrundtasks sauber synchronisieren.
3. **Archive Plugin Source nutzen**: Eigene Plugins jetzt als ZIP mit SHA-256-Prüfung paketieren und testen. Ermöglicht sicherere Plugin-Distribution im Team.
4. **Gateway-Cap in Cowork OS dokumentieren**: Usage-Warning zeigt jetzt Namen und Reset-Zeit des aktiven Caps. In interner Doku festhalten, welche Caps für welche Use Cases konfiguriert sind.
5. **Multi-Agent-Setup mit tmux prüfen**: Community-Pattern für parallele Claude-Code-Instanzen auf Cowork OS übertragen, z.B. für gleichzeitige Recherche, Texterstellung und CRM-Updates.

---

## Keine Aktion nötig

- **Claude for Government Beta**: Außerhalb des aktuellen Scope für EXPAND B2B
- **Chip-Design-Team**: Strategisch interessant, ohne kurzfristige operative Relevanz
- **Leadership-Update (Tino Cuéllar)**: Kein direkter Einfluss auf Produkt oder Preise
- **Conversation Rewind Fix**: Betrifft Edge Case im TUI-Modus; kein aktives Nutzungsmuster bei EXPAND B2B
