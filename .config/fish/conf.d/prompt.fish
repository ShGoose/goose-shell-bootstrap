function fish_prompt
    set -l last_status $status
    set -l stat
    set -l cat_1
    set -l cat_2
    set -l user_prompt 

    if test $last_status -ne 0
        set stat \t(set_color red)"last exit code: [$last_status]"(set_color normal)
    end

    if test $EUID -eq 0
        set cat_1 (set_color red)' /\\_/\\  '(set_color normal)
        set cat_2 (set_color red)'( \'Y\' ) '(set_color normal)
        set user_prompt (set_color red)"$USER"(set_color normal)
    else
        set cat_1 (set_color cyan)' /\\_/\\  '(set_color normal)
        set cat_2 (set_color cyan)'( \'Y\' ) '(set_color normal)
        set user_prompt (set_color cyan)"$USER"(set_color normal)
    end

    string join '' -- \n $cat_1 (set_color brgreen)"[$( date --universal )]"(set_color normal) $stat \n $cat_2 {$user_prompt} "@" (set_color cyan)"$hostname"(set_color normal) ":" $PWD \n '$ '
end
