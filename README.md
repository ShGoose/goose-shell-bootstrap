### to use
 - clone repo
 - install fish 
    *debian 11*
    ```shell
    echo 'deb http://download.opensuse.org/repositories/shells:/fish:/release:/3/Debian_11/ /' | sudo tee /etc/apt/sources.list.d/shells:fish:release:3.list
    curl -fsSL https://download.opensuse.org/repositories/shells:fish:release:3/Debian_11/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_fish_release_3.gpg > /dev/null
    sudo apt update
    sudo apt install fish
    ```
    *debian 12*
    ```shell
    echo 'deb http://download.opensuse.org/repositories/shells:/fish:/release:/3/Debian_12/ /' | sudo tee /etc/apt/sources.list.d/shells:fish:release:3.list
    curl -fsSL https://download.opensuse.org/repositories/shells:fish:release:3/Debian_12/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_fish_release_3.gpg > /dev/null
    sudo apt update
    sudo apt install fish
    ```
   *ubuntu 22*
   ```shell
   wget https://launchpad.net/~fish-shell/+archive/ubuntu/release-3/+files/fish_3.7.1-1~jammy_amd64.deb
   sudo dpkg -i fish_3.7.1-1~jammy_amd64.deb
   sudo apt install libpcre2-32-0
   ```
   *ubuntu 24.10 raspberrypi 4b*
   ```shell
   # rust setup
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   . "$HOME/.cargo/env"
   sudo su
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

   # fish setup
   git clone https://github.com/fish-shell/fish-shell.git
   cd fish-shell
   cmake .
   make
   sudo su
   make install
   ```
   `sudo chsh -s /usr/bin/fish $(whoami)`
 - copy everything from .config to /home/user/.config/
   ```shell
   cp -rf .config ~/
   ```
*done*
