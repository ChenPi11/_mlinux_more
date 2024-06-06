#!/usr/bin/zsh

source "$HOME/.zshrc"
zinit self-update
zinit ice depth"1"
zinit light romkatv/powerlevel10k
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light rupa/z
zinit light ael-code/zsh-colored-man-pages
zinit light le0me55i/zsh-extract
zinit light hcgraf/zsh-sudo
zinit light Aloxaf/fzf-tab
zinit light DarrinTisdale/zsh-aliases-exa
zinit light akarzim/zsh-docker-aliases

alias cat='batcat -pp'
