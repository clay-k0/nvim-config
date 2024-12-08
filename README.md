## Nvim Config

Here's my Neovim configuration built from the [LazyVim](https://www.lazyvim.org/) starter template.

## Installation

### Backup Current Config

To make a backup, rename your `~/.config/nvim` directory by doing:

```shell
mv ~/.config/nvim{,.bak}
```

The LazyVim docs also recommend doing

```shell
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

### Clone My Repo

To clone the repo, run

```shell

git clone https://github.com/clay-k0/nvim-config ~/.config/nvim

```

If anyone other than me uses this, remove the `.git` from the folder by running

```shell
rm -rf ~/.config/nvim/.git
```

## Usage

Then, run `nvim`

```shell
nvim
```
