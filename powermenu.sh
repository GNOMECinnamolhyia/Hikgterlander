#!/bin/bash

CHOICE=$(echo -e "Apagar\nReiniciar\nSuspender\nCerrar sesión" | rofi -dmenu -p "Power Menu")

case "$CHOICE" in
    "Apagar") systemctl poweroff ;;
    "Reiniciar") systemctl reboot ;;
    "Suspender") systemctl suspend ;;
    "Cerrar sesión") i3-msg exit ;;
esac
