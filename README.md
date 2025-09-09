# Dotfiles

My configuration files for Arch Linux. Managed using GNU Stow.

## Setup

1. Clone the repository:

```bash
git clone https://github.com/anondeveg/dotfiles.git ~/.dotfiles
````

2. Change to the dotfiles directory:

```bash
cd ~/.dotfiles
```

3. Install Stow if needed:

```bash
sudo pacman -S stow
```

4. Apply all dotfiles:

```bash
stow .
```

This will create symlinks in your home directory. To remove them:

```bash
stow -D .
```
