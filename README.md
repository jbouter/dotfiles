## Required software

### GNOME/graphical dependencies

```bash
sudo pacman -S gnome-keyring gnome-settings-daemon networkmanager seahorse eog thunar nextcloud-client pavucontrol telegram-desktop
```

### Sway etc
```bash
sudo pacman -S sway swaybg swaylock swayidle feh brightnessctl acpi flatpak waybar playerctl libappindicator-gtk2 libappindicator-gtk3 wofi mako wl-clipboard
yay -S reshift-wayland-git wofipassmenu
```

### Flatpak

```bash
flatpak install flathub com.spotify.Client
flatpak install flathub com.discordapp.Discord
```

### sddm
```bash
sudo pacman -S sddm
yay -S archlinux-themes-sddm
sudo systemctl enable sddm
```

### Fonts

```bash
sudo pacman -S ttf-hack ttf-font-awesome
```

## Enabling the config

As such:

```bash
ln -sf ~/Workspace/github.com/jbouter/dotfiles/alacritty ~/.config/alacritty
ln -sf ~/Workspace/github.com/jbouter/dotfiles/mako ~/.config/mako
ln -sf ~/Workspace/github.com/jbouter/dotfiles/sway ~/.config/sway
ln -sf ~/Workspace/github.com/jbouter/dotfiles/waybar ~/.config/waybar
ln -sf ~/Workspace/github.com/jbouter/dotfiles/wofi ~/.config/wofi
```

## Configure the environment variables

The following command will make SSH work with gnome-keyring, and set the keyboard layout to US International with Alt-GR dead keys

```bash
printf "SSH_AUTH_SOCK=/run/user/1000/keyring/ssh\nXKB_DEFAULT_LAYOUT=us\nXKB_DEFAULT_VARIANT=altgr-intl\nMOZ_ENABLE_WAYLAND=1\nXDG_CURRENT_DESKTOP=Unity\n" | sudo tee -a /etc/environment
```
