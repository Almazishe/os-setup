# Install updates
echo "Installing updates"
sudo pacman -Syu

# ssh-keygen
echo "Generating ssh keys"
ssh-keygen


# Install git
echo "Installing packages"
sudo pacman -S --needed base-devel git gnome-tweaks snapd

# Enable snapd
echo "Enable snapd package manager"
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

# Configure git
echo "Configuring git..."
git config --global user.email "mr.esenyazov@gmail.com"
git config --global user.name "Almaz Yessenyazov"


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
