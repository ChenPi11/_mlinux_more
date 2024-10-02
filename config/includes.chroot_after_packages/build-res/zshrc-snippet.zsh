zinit ice depth"1"
zinit light romkatv/powerlevel10k
zpcompinit
zpcdreplay
zinit light Aloxaf/fzf-tab
enable-fzf-tab
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light rupa/z
zinit light ael-code/zsh-colored-man-pages
zinit light le0me55i/zsh-extract
zinit light hcgraf/zsh-sudo
zinit light DarrinTisdale/zsh-aliases-exa
zinit light akarzim/zsh-docker-aliases

alias lcat=/bin/cat
alias cat='batcat -pp'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'
alias _='sudo '
alias afind='ack -il'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias gc1='git clone --recursive --depth=1'
alias globurl='noglob urlglobber '
alias grep='grep --color=auto'
alias md='mkdir -p'
alias rd=rmdir
alias lls=/bin/ls
alias ls="eza --color=auto"
alias l='eza -lbah --icons'
alias la='eza -labgh --icons'
alias ll='eza -lbg --icons'
alias lsa='eza -lbagR --icons'
alias lst='exa -lTabgh --icons'

# Load git alias
source ~/.local/share/mlinux/zsh-plugins/git.plugin.zsh

# Load command-not-found
command_not_found_handler()
{
    /usr/bin/command-not-found -- "$1"
    return $?
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
