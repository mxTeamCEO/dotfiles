#!/usr/bin/bash
echo "Installing colorz lib for pywal..."
echo "colorz pip3 logs:" >> dot-install.log
echo "---------------------" >> dot-install.log
pip3 install colorz --user --break-system-packages >> dot-install.log
echo "Installing dotfiles..."
cp avatar.jpg ~/avatar.jpg
mkdir -p ~/.config ~/.local/share/fonts/ ~/Wallpapers
cp -r config/* ~/.config
cp -r fonts/* ~/.fonts
cp -r Wallpapers/* ~/.local/share/fonts/
cp -r config/zsh/.oh-my-zsh ~/.config
cp config/zsh/.zshrc ~/
cp config/zsh/omp.json ~/.config
echo "Done. Dotfiles has been installed!"
echo " Creating symlnks...."
wal -i ~/Wallpapers/Leaves.jpg --saturate 0.2 --backend colorz
ln -sf ~/.cache/wal/colors-waybar.css ~/.config/waybar/colors-waybar.css
ln -sf ~/.cache/wal/hyprlock.conf ~/.config/hypr/hyprlock.conf
ln -sf ~/.cache/wal/mako-config ~/.config/mako/config
echo "Done!"
