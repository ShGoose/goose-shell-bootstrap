function ansac
    grep --invert-match --extended-regexp "^([[:space:]]+|)(#|\$|;)" $argv
end
