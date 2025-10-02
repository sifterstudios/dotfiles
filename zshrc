plugins=(git kubectl history emoji encode64 zsh-autosuggestions asdf)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$PATH:$HOME/picom
export ZSH="$HOME/.oh-my-zsh"
export PATH="${HOME}/.config/lsp/lua-language-server/bin:${PATH}"
export PATH="$PATH:/snap/bin"
# export PATH=$HOME/Applications/android/emulator:$PATH
# export PATH=$HOME/Applications/android/platform-tools:$PATH
export PATH=$HOME/.config/scripts:$PATH
export PATH=$HOME/go/bin:$PATH
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.dotnet
export EDITOR=/usr/local/bin/nvim
export VISUAL=/usr/local/bin/nvim
export PATH=$PATH:$HOME/.pub-cache/bin
export PATH=$PATH:$HOME/Library/Android/sdk/
export PATH="$HOME/.local/neovim/bin:$PATH"

# ALIASES
alias lss='ls -lAFh'
alias luamake=$HOME/.config/lsp/lua-language-server/3rd/luamake/luamake
alias android-studio=$HOME/Applications/android-studio/bin/studio.sh
alias ts=tmux-sessionizer
alias nvup="~/.config/scripts/nvim-update.sh"

ZSH_THEME="powerlevel10k/powerlevel10k"

source $ZSH/oh-my-zsh.sh
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

mkcd () {
  mkdir -p "$@" && cd "$_"
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(pay-respects zsh)"

[[ -f /Users/tormod.liseth/.dart-cli-completion/zsh-config.zsh ]] && . /Users/sifter/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]


nixie() {
  emulate -L zsh
  setopt pipefail nounset err_return

  local oldpwd=$PWD
  {
    cd ~/.dotfiles/config/nix-darwin || return

    echo "==> Updating flake..."
    nix flake update

    echo "==> Rebuilding system with darwin-rebuild..."
    sudo darwin-rebuild switch --flake ~/.dotfiles/config/nix-darwin#m4

    echo "==> Pruning old generations (system)..."
    sudo nix-env -p /nix/var/nix/profiles/system --delete-generations 30d || true

    echo "==> Pruning old generations (user)..."
    nix profile wipe-history --older-than 30d || true

    echo "==> Collecting garbage (user)..."
    nix-collect-garbage -d || true

    echo "==> Collecting garbage (root)..."
    sudo nix-collect-garbage -d || true

    echo "==> Optimising store (hardlink dedupe)..."
    sudo nix store optimise || true
  } always {
    cd "$oldpwd"
  }
}



[[ ! -r '/Users/sifter/.opam/opam-init/init.zsh' ]] || source '/Users/sifter/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/sifter/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

# pnpm
export PNPM_HOME="/Users/sifter/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
