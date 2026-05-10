#!/usr/bin/env bash

# ВАЖНО: скопируй эти иконки именно отсюда
options="󰌾\n󰤄\n󰍃\n󰜉\n󰐥"

# В этой строке мы добавили нужные флаги
# Мы убрали лишнее и оставили четкий вызов темы
selected=$(echo -e "$options" | rofi -dmenu -format i -p "Power" -theme ~/.config/rofi/powermenu.rasi)
case $selected in
    0) hyprlock ;;
    1) systemctl suspend ;;
    2) hyprctl dispatch exit ;;
    3) reboot ;;
    4) poweroff ;;
esac
