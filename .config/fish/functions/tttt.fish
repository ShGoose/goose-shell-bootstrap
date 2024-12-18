function tttt
    type tmux > /dev/null
    set LAST_EXIT_CODE $status
    if test $LAST_EXIT_CODE -eq 0
        if test -z "$TMUX"
            tmux attach -d -t (whoami) || tmux new-session -D -s (whoami)
        else
            tmux attach || tmux new
        end
    else
        echo "tmux not found" >&2
    end
end
