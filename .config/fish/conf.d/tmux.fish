if [ ! -f $CANNONICAL_SELF_DIR/.tmux.conf ]
    echo -e (set_color blue)"=> Применяю конфигурацию .tmux.conf..."(set_color normal)
    if [ -f $CANNONICAL_SELF_DIR/.config/fish/conf.d/templates/.tmux.conf ] 
        install --mode 0600 $CANNONICAL_SELF_DIR/.config/fish/conf.d/templates/.tmux.conf $CANNONICAL_SELF_DIR/.tmux.conf
        tmux source $CANNONICAL_SELF_DIR/.tmux.conf
        echo -e (set_color green)"=> Конфигурация .tmux.conf применена!"(set_color normal)
    else
        echo -e (set_color red)"=> Шаблон кофигурации $CANNONICAL_SELF_DIR/.config/fish/conf.d/templates/.tmux.conf не найден"(set_color normal)
    end
end
