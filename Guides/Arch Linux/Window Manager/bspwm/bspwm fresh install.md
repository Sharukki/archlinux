## This file is a guide for installing bspwm on a fresh Arch-Linux system using the **archinstaller**!
***
First steps
===
( installing bspwm and basic utility's )
---
On first start of our new Arch-Linux system we want to install bspwm and some other common things.
For that, we first need to make a full system update ( if available ):

```
sudo pacman -Syu
```

Next, we install all packages that we need:

```
sudo pacman -Syu xorg xorg-xinit alacritty bspwm sxhkd nitrogen picom firefox dmenu lxsession base-devel git
```

Successfully installed all dependency's, we know need to create some directory for our configs:

```bash
mkdir -p ~/.config/{bspwm,sxhkd}
```
```bash
cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
```
```bash
cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
```
```bash
cp /etc/X11/xinit/xinitrc ~/.xinitrc
```

Don't forget to edit the sxhkdrc in the `.config/` directory so it opens Alacritty as the terminal, and the `.xinitrc` so it starts bspwm.
In the `.xinitrc`, delete the last 5 lines of code and replace them with:

```
setxkbmap de &
picom -fb &
exec bspwm
```

Finally, start your new desktop by simply typing `startx` in the tty!