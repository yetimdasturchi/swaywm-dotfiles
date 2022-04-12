# Modern 'ls' command
if [ "$(command -v exa)" ]; then
    unalias -m 'll'
    unalias -m 'l'
    unalias -m 'la'
    unalias -m 'ls'
    alias ls='exa -G  --color auto --icons -s type'
    alias ll='exa -l --color always --icons -a -s type'
fi

# Modern 'cat' command
if [ "$(command -v bat)" ]; then
  unalias -m 'cat'
  alias cat='bat --theme="gruvbox-dark"'
fi

# Other
alias pacref="sudo reflector -c Russia -a 12 --sort rate --save /etc/pacman.d/mirrorlist"
