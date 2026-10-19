

#!/usr/bin/env bash

status=$(playerctl status 2>/dev/null || echo Stopped)

if [[ "$status" == "Stopped" ]]; then
    echo '{"text":"","class":"stopped"}'
    exit 0
fi

track=$(playerctl metadata --format '{{ artist }} — {{ title }}' 2>/dev/null)

if [[ -z "$track" ]]; then
    echo '{"text":"","class":"stopped"}'
    exit 0
fi

jq -cn \
    --arg text "$track" \
    --arg status "$status" \
    '{text: $text, class: ($status | ascii_downcase), tooltip: $text}'
