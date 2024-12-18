if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting

if [ $EUID -eq 0 ]
        set --global CANNONICAL_SELF_DIR $( getent passwd $SUDO_USER | cut -d: -f6 )
else
        set --global CANNONICAL_SELF_DIR $HOME
end

if [ ! -d $CANNONICAL_SELF_DIR/.isolated ]
    mkdir $CANNONICAL_SELF_DIR/.isolated
    echo -e (set_color blue)"\t => Создана директория $CANNONICAL_SELF_DIR/.isolated\n"(set_color normal)
end

alias ..="cd .."
