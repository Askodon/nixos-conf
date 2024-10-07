#!/bin/sh

# Укажите здесь классы окон, которые вы хотите закрывать
WINDOW_CLASSES=( "pavucontrol" )

for class in "${WINDOW_CLASSES[@]}"; do
    # Получаем информацию о окнах с указанным классом
    windows=$(hyprctl clients | grep "$class")

    while IFS= read -r window; do
        # Получаем ID окна
        window_id=$(echo "$window" | awk '{print $1}')

        # Проверяем, есть ли у окна фокус
        focused_window=$(hyprctl clients | grep "focused" | awk '{print $1}')

        if [ "$window_id" != "$focused_window" ]; then
            # Закрываем окно, если оно не в фокусе
            hyprctl dispatch closewindow "$window_id"
        fi
    done <<< "$windows"
done
