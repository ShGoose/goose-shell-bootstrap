function fish_prompt
    if test "$fish_key_bindings" = "fish_vi_key_bindings"
        or test "$fish_key_bindings" = "fish_hybrid_key_bindings"
        switch $fish_bind_mode
            case default
		set indicator (set_color --bold red)'[N]'(set_color normal)
            case insert
		set indicator (set_color --bold green)'[I]'(set_color normal)
            case replace_one
		set indicator (set_color --bold green)'[R]'(set_color normal)
            case replace
		set indicator (set_color --bold cyan)'[R]'(set_color normal)
            case visual
		set indicator (set_color --bold magenta)'[V]'(set_color normal)
        end
    end

    set -l last_status $status
    set -l stat
    set -l cat_1
    set -l cat_2
    set -l user_prompt 
    set -g __fish_git_prompt_showupstream verbose
    set -g __fish_git_prompt_showcolorhints 1 

    if test $last_status -ne 0
        set stat \t(set_color red)"last exit code: [$last_status]"(set_color normal)
    end

    if test (id -u) -eq 0
        set cat_1 (set_color red)' /\\_/\\  '(set_color normal)
        set cat_2 (set_color red)'( \'Y\' ) '(set_color normal)
        set user_prompt (set_color red)"$USER"(set_color normal)
    else
        set cat_1 (set_color cyan)' /\\_/\\  '(set_color normal)
        set cat_2 (set_color cyan)'( \'Y\' ) '(set_color normal)
        set user_prompt (set_color cyan)"$USER"(set_color normal)
    end

    string join '' -- \n $cat_1 (set_color brgreen)"["( date --universal )"]"(set_color normal) $stat (fish_git_prompt) \n $cat_2 $indicator ' ' {$user_prompt} "@" (set_color cyan)"$hostname"(set_color normal) ":" $PWD  \n '$ '
end
