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
   dpkg -i fish_3.7.1-1~jammy_amd64.deb
   ```
   `chsh -s /usr/bin/fish $(whoami)`
 - copy everything from .config to /home/user/.config/
   ```shell
   cp -rf .config ~/
   ```
*done*
