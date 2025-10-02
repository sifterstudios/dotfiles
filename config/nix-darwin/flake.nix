{
  description = "Sifter's nix-darwin system flake";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";
    mac-app-util.url = "github:hraban/mac-app-util";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, nix-homebrew, mac-app-util }:
    let
      configuration = { pkgs, ... }: {
        system.primaryUser = "sifter";
        # List packages installed in system profile. To search by name, run: # $ nix-env -qaP | grep wget 
        nixpkgs.config.allowUnfree = true;
        environment.systemPackages = [
          pkgs.gh
          pkgs.flutter
          pkgs.kotlin
          pkgs.android-tools
          pkgs.git-lfs
          pkgs.yarn
          pkgs.ruby
          pkgs.llvm
          pkgs.pay-respects
          pkgs.tmux
          pkgs.fzf
          pkgs.ripgrep
          pkgs.cmake
          pkgs.unzip
          pkgs.libtool
          pkgs.gettext
          pkgs.curl
          pkgs.btop
          pkgs.go
          pkgs.lsof
          pkgs.ccache
          pkgs.ninja
          pkgs.moreutils
          pkgs.lazygit
          pkgs.asdf
          pkgs.nerd-fonts.jetbrains-mono
          pkgs.nerd-fonts.victor-mono
          pkgs.oh-my-zsh
          pkgs.zsh-powerlevel10k
          pkgs.zsh-autosuggestions
          pkgs.jq
          pkgs.docker
        ];
        homebrew = {
          enable = true;
          brews = [
            "cocoapods"
            "asdf"
            "heroku"
            "mas"
            "opam"
            "rustup"
            "rust"
            "libffi"
            "java"
            "blueutil"
            "azure-cli"
            "ansible"
            "ninja"
            "libtool"
            "automake"
            "cmake"
            "pkg-config"
            "gettext"
            "curl"
          ];
          taps = [
          ];
          casks = [
            "google-chrome"
            "brave-browser"
            "dotnet"
            "obsidian"
            "discord"
            "postman"
            "cursor"
            "warp"
            "cyberduck"
            "hiddenbar"
            "visual-studio-code"
            "firefox"
            "spotify"
            "slack"
            "alfred"
            "ghostty"
            "vlc"
            "vivaldi"
            "godot"
            "android-studio"
            "jetbrains-toolbox"
            "flutter"
            "android-commandlinetools"
            "karabiner-elements"
            "mailbird"
            "nikitabobko/tap/aerospace"
            "azure-data-studio"
            "mac-mouse-fix"
            "ukelele"
            "qmk-toolbox"
          ];
          masApps = {
            "xCode" = 497799835;
            "Yoink" = 457622435;
            "ScreenFloat" = 414528154;
            "Transloader" = 572281534;
            "Amphetamine" = 937984704;
            "Spark Classic" = 1176895641;
            "ColorSlurp" = 1287239339;
            "Excalidrawz" = 6636493997;
          };
          onActivation.cleanup = "zap";
          onActivation.autoUpdate = true;
          onActivation.upgrade = true;
        };

        system.defaults = {
          dock.autohide = true;
          dock.autohide-delay = 0.01;
          dock.autohide-time-modifier = 0.00;
          dock.expose-animation-duration = 0.0;
          dock.mru-spaces = false;
          dock.orientation = "left";
          dock.show-recents = false;
          finder.FXPreferredViewStyle = "clmv";
          finder.ShowStatusBar = true;
          SoftwareUpdate.AutomaticallyInstallMacOSUpdates = true;
          spaces.spans-displays = true;
          loginwindow.GuestEnabled = false;
          NSGlobalDomain.AppleICUForce24HourTime = true;
          NSGlobalDomain.AppleInterfaceStyle = "Dark";
          NSGlobalDomain.KeyRepeat = 2;
          controlcenter.BatteryShowPercentage = true;
        };

        fonts.packages = [
          pkgs.nerd-fonts.jetbrains-mono
          pkgs.nerd-fonts.victor-mono
        ];

        # Necessary for using flakes on this system.
        nix.settings.experimental-features = "nix-command flakes";
        # Set Git commit hash for darwin-version.
        system.configurationRevision = self.rev or self.dirtyRev or null;
        system.stateVersion = 6;
        nixpkgs.hostPlatform = "aarch64-darwin";
      };
    in
    {
      darwinConfigurations."m4" = nix-darwin.lib.darwinSystem {
        modules = [
          configuration
          nix-homebrew.darwinModules.nix-homebrew
          {
            nix-homebrew = {
              enable = true;
              enableRosetta = true;
              user = "sifter";
            };
          }
          mac-app-util.darwinModules.default
        ];
      };
    };
}
