sudo pacman -S git
sudo pacman -S go
sudo git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -Syu
yay -S ananicy-cpp irqbalance memavaild nohang preload prelockd uresourced
sudo systemctl disable systemd-oomd
sudo systemctl enable ananicy-cpp
sudo systemctl enable irqbalance
sudo systemctl enable memavaild
sudo systemctl enable nohang
sudo systemctl enable preload
sudo systemctl enable prelockd
sudo systemctl enable uresourced
