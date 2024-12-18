function sanitize
    if [ $EUID -eq 0 ]
        set -f user $(echo $SUDO_USER)
    else
        set -f user $EUID
    end

    sudo chown -R $user:$( id -G $EUID | cut -d' ' -f1 ) $CANNONICAL_SELF_DIR
    sudo find $CANNONICAL_SELF_DIR -not -path '.isolated' \( -type d -and -not -perm 0700 \) -exec chmod 0700 {} \;
    sudo find $CANNONICAL_SELF_DIR -not -path '.isolated' \( -type f -and -not -perm 0600 \) -exec chmod 0600 {} \;
end
