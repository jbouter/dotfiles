# Required software
* nextcloud-client (daemon gets started in i3/config)
* polybar (top and bottom bars. AUR: polybar)
* rofi (or dmenu, but then you need to change the config around)
* chromium (used as mod+b browser launcher)
* feh (for setting wallpaper)
* scrot (for screenshotting)
* xautolock (for automatic screenlocking)
* alsa-utils (for volume control)
* redshift (to ease your eyes after it gets dark)
* rxvt-unicode (terminal emulator, basic config is in urxvt directory)
* compton
* Teiler (For screenshotting. AUR: teiler-git)
* i3lock-fancy (AUR: i3lock-fancy-git)
* YeaLink Monitor (github: https://github.com/fdev/snippets/blob/master/yealink-monitor.py)

# Required Fonts
* Iosevka (AUR: ttf-iosevka, ttf-iosevka-slab, ttf-iosevka-term, ttf-iosevka-term-slab)
* Inconsolata (IB: otf-inconsolata-pwl-ibx, otf-inconsolatazi4-ibx)
* Font Awesome (used for icons in bar, AUR: ttf-font-awesome)
* Noto Sans (ttf-noto-fonts-ib)

# Installation of i3 + urxvt theme
There are three basic directories. My installation is as follows


i3 is symlinked to ~/.config/i3
polybar is symlinked to ~/.config/polybar
Xresources is symlinked to ~/.Xresources
vimrc is symlinked to ~/.vimrc
vim is symlinked to ~/.vim
zshrc is symlinked to ~/.zshrc

As such:
```
cd
ln -sf ~/documents/git/github/kyentei/dotfiles/i3 ~/.config/i3
ln -sf ~/documents/git/github/kyentei/dotfiles/polybar ~/.config/polybar
ln -sf ~/documents/git/github/kyentei/dotfiles/Xresources ~/.Xresources
ln -sf ~/documents/git/github/kyentei/dotfiles/vimrc ~/.vimrc
ln -sf ~/documents/git/github/kyentei/dotfiles/vim ~/.vim
ln -sf ~/documents/git/github/kyentei/dotfiles/zshrc ~/.zshrc
```

If the setwallpaper.sh script can't properly set your wallpaper, this may be because the script is unaware of your $DISPLAY.
In order to make this work, try the following whilst logged in to a graphical desktop:
```
echo $DISPLAY > ~/.config/i3/conf.d/display.txt
```
