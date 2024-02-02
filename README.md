```                
 _|   _ _|_  ,  
/ |  / \_|  / \_
\/|_/\_/ |_/ \/ 
```

-  OS                 : [Arch](https://archlinux.org/)
-  Window Manager     : [BSPWM](https://github.com/baskerville/bspwm)
-  Hotkey Daemon      : [SXHKD](https://github.com/baskerville/sxhkd)
-  Bar                : [Polybar](https://github.com/polybar/polybar)
-  Notification Daemon: [Dunst](https://github.com/dunst-project/dunst)
-  Compositor         : [Picom](https://github.com/jonaburg/picom) (jonaburg fork)
-  Terminal Emulator  : [Kitty](https://github.com/kovidgoyal/kitty)
-  Shell              : [zsh](https://www.zsh.org)
-  Display Manager    : [lightdm](https://github.com/canonical/lightdm)
-  Lockscreen         : [betterlockscreen](https://github.com/betterlockscreen/betterlockscreen)
-  Wallpaper Setter   : [feh](https://github.com/derf/feh)
-  Launcher           : [dmenu](https://tools.suckless.org/dmenu/)

## Stowing 

I use stow for maintaing the symlinks, which will automatically link all the config to their corresponding locations.   
Find more info on stow [here](https://www.gnu.org/software/stow/manual/stow.pdf)

```sh
$ git clone https://github.com/kottesh/dots .dots
$ cd .dots/config
$ stow -vt ~ */
$ cd ..
$ stow -vt ~ scripts
```