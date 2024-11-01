#!/bin/bash

# volume=$(wpctl get-volume @DEFAULT_SINK@ | sed "s/Volume: //" | awk '{printf "%d%%\n", $1 * 100}')
volume=$(pamixer --get-volume-human)
if [[ $volume != "muted" ]]; then
    icon="󰕾 "
else
    icon="󰝟 "
fi

echo "$icon$volume"
