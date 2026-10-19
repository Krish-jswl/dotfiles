
#!/usr/bin/env bash

status=$(playerctl status 2>/dev/null || echo Stopped)

case "$status" in
    Playing)
        icon="󰎆 "
        class="playing"
        ;;
    Paused)
        icon="󰏤 "
        class="paused"
        ;;
    *)
        icon="󰎊 "
        class="stopped"
        ;;
esac

jq -cn \
    --arg text "$icon" \
    --arg class "$class" \
    '{text: $text, class: $class}'
