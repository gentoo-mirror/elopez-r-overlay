# elopez-r-overlay

This is my personal overlay with my Gentoo ebuilds. Notice that I'm far from being an expert writing them, but I'm learning all I can about it. Any help or tip will be very appreciated.

Add the overlay using layman:
```
# layman -a elopez-r-overlay
```
Add the overlay using eselect-repository:
```
# eselect repository enable elopez-r-overlay
```

### My programs

- **skcolbmwd**: i3blocks-like status bar generator for DWM [Homepage](https://gitlab.com/libre_hackerman/skcolbmwd)
- **roberto-bashero**: CLI utility to display the weather forecast from AEMET (Spain only) [Homepage](https://gitlab.com/libre_hackerman/roberto-bashero)
- **snake-curses**: Snake game written in C with Ncurses. [Homepage](https://gitlab.com/libre_hackerman/snake_curses)
- **enlapsed_time**: Counter of time between events, ideal for the shell prompt. [Homepage](https://gitlab.com/libre_hackerman/enlapsed_time)
- **cwpp**: Wallpaper changer written in C that relies in Feh. [Homepage](https://gitlab.com/libre_hackerman/cwpp)
- **slauncher**: Simple launcher as a minimalist replacement for xdg-open. [Homepage](https://gitlab.com/libre_hackerman/slauncher)
- **spike-telegram**: Telegram client in Ncurses, written in Python. [Homepage](https://gitlab.com/libre_hackerman/spike)

### General packages

- **arduino-cli**: Arduino command line interface [Homepage](https://arduino.github.io/arduino-cli)
- **pulseaudio-equalizer-ladspa**: Pulseaudio LADSPA Equalizer [Homepage](https://github.com/pulseaudio-equalizer-ladspa/equalizer)
- **fakesteak**: Low footprint digital character rain as seen in The Matrix [Homepage](https://github.com/domsson/fakesteak)
- **ski**: A simple text-mode skiing game. [Homepage](http://www.catb.org/~esr/ski/)
- **tuir**: Browse Reddit from your terminal. [Homepage](https://gitlab.com/ajak/tuir/)
- **fprintd**: D-Bus service to access fingerprint readers. [Homepage](https://gitlab.freedesktop.org/libfprint/fprintd)
- **devour**: Window Manager agnostic swallowing feature for terminal emulators. [Homepage](https://github.com/salman-abedin/devour)
- **gomuks**: A terminal based Matrix client written in Go. [Homepage](https://github.com/tulir/gomuks)
- **fbcat**: Fbcat takes a screenshot using the Linux framebuffer device. [Homepage](http://jwilk.net/software/fbcat)
- **minilibx-linux**: A simple X-Window (X11R6) programming API in C. [Homepage](https://github.com/42Paris/minilibx-linux) *Warning*: This package is currently without license (all rights reserved). [Is planned to switch soon to the MIT license](https://github.com/42Paris/minilibx-linux/issues/9)

### Dependencies

- **kitchen** *(tuir)*: Useful snippets of python code. [Homepage](https://github.com/fedora-infra/kitchen)
- **python-telegram** *(spike-telegram)*: Python client for the Telegram's tdlib. [Homepage](https://github.com/alexander-akhmetov/)
- **olm** *(gomuks)*: An implementation of the Double Ratchet cryptographic ratchet in C++. [Homepage](https://gitlab.matrix.org/matrix-org/olm)
