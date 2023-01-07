This file is a guide for things to do after installing and setting up bspwm as a WM.

## Setting a Wallpaper

first, press `super + spacebar` ( if not edited before ) and open Firefox. Search for a nice Wallpaper and download it.
I would highly recommend to create a folder especially for wallpapers:

```bash
mkdir -p ~/Pictures/Wallpapers
```

Then, start nitrogen the same way you did with Firefox and add your wallpapers directory in the nitrogen settings (located under the `Preferences` tab), so it can load them all.
Select your preferred one and hit `Apply`!

Now we need to edit our `.xinitrc` file again and add some lines to load the selected wallpaper upon starting bspwm. We will also add one or two more things. 
It should look something like this:

```
...
setxkbmap de &
picom -fb &
nitrogen --restore &
lxsession &
xsetroot -cursor_name left_ptr
exec bspwm
```

Quit bspwm by pressing `super + alt + q` and start it again by typing `startx` in the tty!
If your cursor looks normal and the right wallpaper is loaded, then congratulations, everything works as it should!
