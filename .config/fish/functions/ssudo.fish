function ssudo
    if [ "(id -u)" != 0 ]
        sudo -u root -g root -s XDG_CONFIG_HOME=$HOME/.config /usr/bin/fish
    end
end
