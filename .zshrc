# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zsh'# Created by newuser for 5.8rc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk
# Load powerlevel10k theme
zinit ice depth"1" # git clone depth
zinit light romkatv/powerlevel10k

# * Commandline
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light hlissner/zsh-autopair

# * zsh-fzf-history-search
zinit ice lucid wait'0'
zinit light joshskidmore/zsh-fzf-history-search

# * fzf-tab
zinit light Aloxaf/fzf-tab
zstyle ":completion::git-checkout:" sort false
zstyle ':completion::descriptions' format '[%d]'
zstyle ':completion:' list-colors ${(s.:.)LS_COLORS}
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'

alias nv="nvim"
alias ls="ls --color=auto"
alias ll="ls -alt --color=auto"

export PAGER=most
export PATH="$PATH:$HOME/Documents/sourcing/Project-Builder"
export PATH="$PATH:/home/fildo7525/.local/bin"
alias cpp="cd ~/Desktop/Cpp/"
alias jv="cd ~/Desktop/Java/"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/home/fildo7525/.local/share/zinit/polaris/bin:/home/fildo7525/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/fildo7525/Documents/sourcing/Project-Builder:/home/fildo7525/Documents/sourcing/lazygit:/home/fildo7525/.local/bin:/home/fildo7525/Documents/sourcing/Project-Builder:/home/fildo7525/.local/bin:/usr/include/SDL2"
export SDL2_INCLUDE_DIRS="/usr/include/SDL2"

export EDITOR="nvim"
