function atelnet
    set -l REMOTE_HOST $argv[1]
    set -l REMOTE_PORT $argv[2]
    set socket "</dev/tcp/$REMOTE_HOST/$REMOTE_PORT"

    timeout 5 bash -c "$socket" 2>/dev/null
    if [ $status -eq 0 ]
       set -g result (set_color green)"TCP: [+]"(set_color normal)
    else
       set -g result (set_color red)"TCP: [-]"(set_color normal)
    end

    echo -e "$result $REMOTE_HOST:$REMOTE_PORT"
end
