function sanitize
    if [ (id -u) -eq 0 ]
        set -f user $(echo $SUDO_USER)
    else
        set -f user (id -u)
    end

    sudo chown -R $user:$( id -G (id -u) | cut -d' ' -f1 ) $CANNONICAL_SELF_DIR
    sudo find $CANNONICAL_SELF_DIR -not -path '.isolated' \( -type d -and -not -perm 0700 \) -exec chmod 0700 {} \;
    sudo find $CANNONICAL_SELF_DIR -not -path '.isolated' \( -type f -and -not -perm 0600 \) -exec chmod 0600 {} \;
end
