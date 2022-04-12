# Z-ZSH ZI
zi_home="${HOME}/.zi"
source "${zi_home}/bin/zi.zsh"
autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi

# Snippets
zi snippet OMZ::plugins/git/git.plugin.zsh
zi snippet OMZL::key-bindings.zsh
zi snippet OMZL::history.zsh
zi snippet OMZP::archlinux/archlinux.plugin.zsh
zi snippet OMZP::systemd/systemd.plugin.zsh

# Load completions
zicompinit

# Load Plugins
zi light zsh-users/zsh-syntax-highlighting
zi light zsh-users/zsh-autosuggestions
zi light zsh-users/zsh-completions

# Load Promt theme
zi ice pick"async.zsh" src"pure.zsh"
zi light sindresorhus/pure

# Editor
export EDITOR='nvim'

# Custom
source ~/.zi/custom/alias.zsh

# Set Better Cursor Style (Beam)
_fix_cursor() {
   echo -ne '\e[5 q'
}
precmd_functions+=(_fix_cursor)
