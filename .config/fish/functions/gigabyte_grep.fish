function gigabyte_grep
    grep --color -E "([0-9]{1,}|[0-9]{1,}\.[0-9]{1,})G" $argv
end
