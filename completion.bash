# Bash completion for piglet
# https://git.nxhs.cloud/ge/piglet

complete -W "create edit delete retrieve \
    $(cat ~/.config/piglet/domains.list | tr '\n' ' ')" piglet
