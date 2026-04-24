#!/bin/bash
# PostToolUse-Hook: Sendet Intelligence Briefings als Telegram-Dokument.
# Wird nur ausgelöst wenn der Write-Tool eine Briefing-Datei erstellt.

INPUT=$(cat)
FILE_PATH=$(echo "$INPUT" | python3 -c "
import sys, json
d = json.load(sys.stdin)
print(d.get('tool_input', {}).get('file_path', ''))
" 2>/dev/null)

if [[ "$FILE_PATH" != *"Intelligence Briefing"* ]]; then
    exit 0
fi

if [[ -z "$TELEGRAM_BOT_TOKEN" || -z "$TELEGRAM_CHAT_ID" ]]; then
    echo "Telegram-Zugangsdaten fehlen (TELEGRAM_BOT_TOKEN, TELEGRAM_CHAT_ID)" >&2
    exit 1
fi

DATE=$(date +%Y-%m-%d)

curl -s -X POST "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendDocument" \
    -F "chat_id=${TELEGRAM_CHAT_ID}" \
    -F "document=@${FILE_PATH}" \
    -F "caption=Claude Intelligence Briefing ${DATE}" \
    >> /tmp/telegram-briefing.log 2>&1
