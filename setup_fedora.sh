set -euo pipefail

# install desired libraries
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y vim-X11 gcc clang git ffmpeg tmux
pip3 install --user virtualenv
