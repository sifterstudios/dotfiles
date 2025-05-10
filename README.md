# Dotfiles

This repository contains my personal dotfiles and configuration files for various tools and applications. It's managed using [dotbot](https://github.com/anishathalye/dotbot) for easy installation and updates, with additional automation provided by Ansible.

## Overview

These dotfiles include configurations for:
- Shell environments (Zsh, Bash)
- Text editors (Vim, Neovim, IntelliJ IDEA)
- Window managers (Aerospace, i3, Yabai)
- Terminal emulators and multiplexers (Kitty, Tmux)
- Development tools (ASDF version manager)
- System configurations (Nix-Darwin)
- Various desktop environment components (Polybar, Rofi, Picom)

## Installation

### Quick Setup (Dotbot)

1. Clone this repository:
   ```bash
   git clone --recursive https://github.com/sifterstudios/dotfiles.git ~/.dotfiles
   cd ~/.dotfiles
   ```

2. Run the installation script:
   ```bash
   ./install
   ```

This will create symbolic links for all configuration files in their appropriate locations.

### Full Setup (Ansible)

For a complete setup including package installation and system configuration, use the Ansible playbooks:

1. Clone the repository as shown above
2. Install Ansible if not already installed
3. Run the appropriate playbook:

   For macOS:
   ```bash
   ansible-playbook tasks_mac/main.yml
   ```

   For Linux:
   ```bash
   ansible-playbook tasks/main.yml
   ```

The Ansible playbooks will:
- Install required packages and applications
- Configure system settings
- Set up development environments
- Install and configure various tools
- Apply security settings

## Requirements

- [dotbot](https://github.com/anishathalye/dotbot) (included as a submodule)
- Ansible (for full setup)
- Git
- Zsh or Bash
- Various tools and applications depending on which configurations you use

## Customization

You can customize the installation by:
1. Modifying the `install.conf.yaml` file to control which configuration files are linked
2. Editing the Ansible playbooks in the `tasks/` and `tasks_mac/` directories to customize package installation and system configuration
3. Adjusting individual configuration files to match your preferences

## License

This project is licensed under the MIT License - see the LICENSE file for details.
