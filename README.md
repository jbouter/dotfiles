## Required software

### GNOME/graphical dependencies

```bash
sudo pacman -S gnome-keyring gnome-settings-daemon networkmanager seahorse eog thunar nextcloud-client
```

### Sway etc
```bash
sudo pacman -S sway swaybg swaylock swayidle feh brightnessctl acpi flatpak
yay -S reshift-wayland-git
```

### Flatpak

```bash
flatpak install org.telegram.desktop
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
ln -sf ~/Workspace/github.com/jbouter/dotfiles/sway ~/.config/sway
ln -sf ~/Workspace/github.com/jbouter/dotfiles/i3blocks ~/.config/i3blocks
ln -sf ~/Workspace/github.com/jbouter/dotfiles/alacritty ~/.config/alacritty
```

## Configure the ssh environment variable

```bash
printf "SSH_AUTH_SOCK=/run/user/1000/keyring/ssh\nXKB_DEFAULT_LAYOUT=us\nXKB_DEFAULT_VARIANT=altgr-intl\n" | sudo tee -a /etc/environment
```
