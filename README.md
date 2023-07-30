# ~/.dots

My host machine is currently running Endeavour OS with bspwm+sxhkd.

## Current Setup

<div align="center">
    <img style="width: 80%;" src="https://github-production-user-asset-6210df.s3.amazonaws.com/67730727/257049110-d9e7c023-0ca4-42c4-aa4b-509010401515.png" title="Endeavour OS" alt="rice showcase hehehee!!!">
    <img style="width: 80%;" src="https://github-production-user-asset-6210df.s3.amazonaws.com/67730727/257049107-fc25f5c0-05e7-4714-9c14-4685ad04979f.jpg" title="BPYTOP" alt="bpytop">
</div>

<p align="center"><b>NOTE:</b> Configs are specifically tuned for a 15.6" display.</p>

## Managing Symlinks

You can either do a symlink for a particular directory (let us say zsh) or all the directories within config.

* **Specific directory**

    In the place of {dir name}, specify the directory name for which you want to create a symlink.

    ```bash
    cd $HOME/.dotfiles/config && stow -vt ~ {dir name}
    ```

* **All the directories within the config**

    ```bash
    cd $HOME/.dotfiles/config && stow -vt ~ */
    ```

## Programs

| **Tools**          | **Programs**                                               |
|:-------------------|:-----------------------------------------------------------|
| Window Manager     | [BSPWM](https://github.com/baskerville/bspwm)              |
| Hotkey Daemon      | [SXHKD](https://github.com/baskerville/sxhkd)              |
| Bar                | [Polybar](https://github.com/polybar/polybar)              |
| Notification Daemon | [Dunst](https://github.com/dunst-project/dunst)           |
| Compositor         | [Picom](https://github.com/jonaburg/picom)<br>(jonaburg fork) |
| Terminal Emulator  | [Kitty](https://github.com/kovidgoyal/kitty)               |
| Shell              | [zsh](https://www.zsh.org)                                 |
| Display Manager    | [lightdm](https://github.com/canonical/lightdm)           |
| Lockscreen         | [i3lock-fancy](https://github.com/meskarune/i3lock-fancy)  |
| Wallpaper Setter   | [Nitrogen](https://github.com/l3ib/nitrogen)               |
| Launcher           | [Rofi](https://github.com/davatorium/rofi)                 |

You can find the list of programs installed <code><a href="/programs-list.txt">here</a></code>.

<kbd>Config files are still WIP...</kbd>