plugins=(git kubectl history emoji encode64 zsh-autosuggestions)
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# . $HOME/.config/scripts/z

export PATH=$PATH:$HOME/picom
export ZSH="$HOME/.oh-my-zsh"
export PATH="${HOME}/.config/lsp/lua-language-server/bin:${PATH}"
export PATH="$PATH:$HOME/flutter/bin"
export PATH="$PATH:/snap/bin"
export PATH="$PATH:$HOME/Applications/android/cmdline-tools/8.0/bin:$PATH"
export ANDROID_HOME="$HOME/android-sdk/"
export PATH="${PATH}:${ANDROID_HOME}tools/:${ANDROID_HOME}platform-tools/"
export PATH=$HOME/Applications/android/emulator:$PATH
export PATH=$HOME/Applications/android/platform-tools:$PATH
export PATH=$HOME/.config/scripts:$PATH
export PATH=$PATH:$HOME/.local/bin
export DOTNET_ROOT=/snap/dotnet-sdk/current
export EDITOR=/usr/local/bin/nvim
export VISUAL=/usr/local/bin/nvim

# ALIASES
alias lss='ls -lAFh'
alias luamake=$HOME/.config/lsp/lua-language-server/3rd/luamake/luamake
alias android-studio=$HOME/Applications/android-studio/bin/studio.sh
alias ts=tmux-sessionizer

# fnm
export PATH=$HOME/.local/share/fnm:$PATH
eval "`fnm env`"  # fnm
eval "$(fnm env --use-on-cd)"

ZSH_THEME="powerlevel10k/powerlevel10k"


source $ZSH/oh-my-zsh.sh


[ -f ~/.forgit/forgit.plugin.zsh ] && source ~/.forgit/forgit.plugin.zsh

# FUNCTIONS

mkcd () {
  mkdir -p "$@" && cd "$_"
}

caps () {
  setxkbmap -option ctrl:nocaps && xcape -e 'Control_L=Escape'
}


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval $(thefuck --alias)

# fnm
export PATH="/home/vagrant/.local/share/fnm:$PATH"
eval "`fnm env`"

# fnm
export PATH="/home/sifter/.local/share/fnm:$PATH"
eval "`fnm env`"

# fnm
export PATH="/home/sifter/.local/share/fnm:$PATH"
eval "`fnm env`"
