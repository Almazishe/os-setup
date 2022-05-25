# Install updates
echo "Installing updates"
sudo pacman -Syu

# Install gnome-tweaks
echo "Installing gnome-tweaks"
sudo pacman -S gnome-tweaks

# Install git
echo "Installing git"
sudo pacman -S --needed base-devel git


# Configure git
echo "Configuring git..."
git config --global user.email "mr.esenyazov@gmail.com"
git config --global user.name "Almaz Yessenyazov"


# Install snapd
echo "Installing snapd package manager"
sudo pacman -S snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

# Install yay
echo "Installing yay package manager"
sudo git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
cd ..

# Install Software
echo "Installing Google Chrome"
sudo yay -S google-chrome

echo "Installing VSCode"
sudo snap install code --classic

echo "Installing Telegram Desktop"
sudo snap install telegram-desktop

echo "Installing Postman"
sudo snap install postman
