set -euo pipefail

# install desired libraries
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y vim-X11 gcc gdb clang clang-tools-extra git ffmpeg tmux the_silver_searcher
pip3 install --user virtualenv
