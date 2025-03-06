plugins=(git kubectl history emoji encode64 zsh-autosuggestions asdf)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$PATH:$HOME/picom
export ZSH="$HOME/.oh-my-zsh"
export PATH="${HOME}/.config/lsp/lua-language-server/bin:${PATH}"
export PATH="$PATH:/snap/bin"
export PATH=$HOME/.asdf/shims/:$PATH
# export PATH=$HOME/Applications/android/emulator:$PATH
# export PATH=$HOME/Applications/android/platform-tools:$PATH
export PATH=$HOME/.config/scripts:$PATH
export PATH=$HOME/go/bin:$PATH
export PATH=$PATH:$HOME/.local/bin
export DOTNET_ROOT=/snap/dotnet-sdk/current
export EDITOR=/usr/local/bin/nvim
export VISUAL=/usr/local/bin/nvim
export PATH=$PATH:$HOME/.pub-cache/bin

# ALIASES
alias lss='ls -lAFh'
alias luamake=$HOME/.config/lsp/lua-language-server/3rd/luamake/luamake
alias android-studio=$HOME/Applications/android-studio/bin/studio.sh
alias ts=tmux-sessionizer

ZSH_THEME="powerlevel10k/powerlevel10k"


source $ZSH/oh-my-zsh.sh

[ -f ~/.forgit/forgit.plugin.zsh ] && source ~/.forgit/forgit.plugin.zsh


mkcd () {
  mkdir -p "$@" && cd "$_"
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval $(thefuck --alias)


[[ -f /Users/tormod.liseth/.dart-cli-completion/zsh-config.zsh ]] && . /Users/sifter/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

