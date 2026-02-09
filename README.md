
# Hikgterlander
---

## Requisitos

Paquetes que deben estar instalados:

* i3-wm
* polybar
* rofi
* pipewire
* pipewire-pulse
* pamixer
* xterm o gnome-terminal
* i3lock
* feh (para fondo de pantalla)

Instalación en Arch Linux (ejemplo):

```bash
sudo pacman -S i3-wm polybar rofi pipewire pipewire-pulse pamixer xterm i3lock feh
```
* i3wm
* Polybar
* PipeWire (audio)
* pamixer
* rofi
* xterm o gnome-terminal

---

## Inicio de sesión

Hikgterlander se inicia desde el gestor de sesiones (GDM u otro), seleccionando i3 como sesión.

El script de inicio de Hikgterlander lanza Polybar y servicios básicos.

---

## Atajos básicos (i3)

> La tecla Mod es la tecla Windows (Super).

### Aplicaciones

* Mod + Enter → Abrir terminal
* Mod + d → Lanzador de aplicaciones (rofi)

### Ventanas

* Mod + Shift + f → Ventana flotante
* Mod + a → Pantalla completa
* Mod + Shift + c → Recargar configuración de i3

---

## Polybar

Polybar muestra información del sistema:

* CPU
* RAM
* Batería
* Volumen


Polybar se inicia automáticamente con el script de Hikgterlander.

---

## Volumen (PipeWire + pamixer)

El control de volumen se realiza actualmente desde la terminal usando aliases en `.bashrc`.

Ejemplo de aliases:

```bash
alias plus='pamixer --increase 5'
alias minus='pamixer --decrease 5'
alias mute='pamixer --toggle-mute'
alias vol='pamixer --get-volume'
```

Uso:

* `plus` → Subir volumen
* `minus` → Bajar volumen
* `mute` → Silenciar
* `vol` → Mostrar porcentaje

Polybar solo muestra el estado del volumen.

---

## Power Menu

Hikgterlander usa Rofi para el Power Menu.

Desde Polybar o atajo configurado, se puede:

* Apagar
* Reiniciar
* Cerrar sesión

El script del Power Menu debe estar en el directorio de scripts del proyecto.

---

## Lock Screen

Se utiliza i3lock para bloquear la pantalla.

Puede configurarse para ejecutarse automáticamente o mediante un atajo.

---

## Ubicación de archivos

Esta es la ubicación recomendada de cada archivo:

### Configuración de i3

~/.config/i3/config

### Polybar

~/Hikgterlander/polybar/config.ini

### Scripts

~/Hikgterlander/scripts/start-hikgterlander.sh
~/Hikgterlander/scripts/power-menu.sh

### Fondos de pantalla

~/Hikgterlander/wallpapers/

El forndo de pantalla se tiene que llamar default.png

---

## Estructura del proyecto

Ejemplo:

Hikgterlander/
├── polybar/
│   └── config.ini
├── scripts/
│   ├── start-hikgterlander.sh
│   └── power-menu.sh
├── wallpapers/

## Estado del proyecto

Hikgterlander es un proyecto en desarrollo.

No esta hecho para ser usado de forma normal, solo una persona rara como yo lo usa como su DE principal.

---

## Licencia

Esta en el archivo LICENCE del repo. (la licencia GNU)

---

Fin del manual.

