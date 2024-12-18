if [ $EUID -eq 0 ]
        set --global CANNONICAL_SELF_DIR $( getent passwd $SUDO_USER | cut -d: -f6 )
else
        set --global CANNONICAL_SELF_DIR $HOME
end
