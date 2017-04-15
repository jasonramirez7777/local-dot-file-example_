# My Dotfiles

These are my personal configuration files, and are meant to extend [thoughtbot's
dotfiles][1].  I keep my personal dotfiles isolated to avoid overwriting them
when I update thoughtbot's dotfiles on my machine. My dotfiles include:

* [.gitconfig.local](https://github.com/jasonramirez/dotfiles-local/blob/master/.gitconfig.local)
* [.laptop.local](https://github.com/jasonramirez/dotfiles-local/blob/master/.laptop.local)
* [.tmux.conf.local](https://github.com/jasonramirez/dotfiles-local/blob/master/.tmux.conf.local)
* [.vimrc.bundles.local](https://github.com/jasonramirez/dotfiles-local/blob/master/.vimrc.bundles.local)
* [.vimrc.local](https://github.com/jasonramirez/dotfiles-local/blob/master/.vimrc.local)
* [.zshrc.local](https://github.com/jasonramirez/dotfiles-local/blob/master/.zshrc.local)

[1]: https://github.com/thoughtbot/dotfiles/

## Example of how `.local` dotfiles work

The standard configuration for **vim** is installed at
`~/.vimrc`. thoughtbot dotfile's will overwrite this config file.
thoughtbot's dotfiles include `source ~/.vimrc.local` at the end of
the config so it sources your local dotfiles.

## Installation

Clone the repository:

```
$ git clone https://github.com/jasonramirez/dotfiles-local.git
```

Symlink all `*.local` dotfiles from `~/.*.local` to
`/path/to/dotfiles-local/*.local`.
From the `ditfiles-local` directory:

```
$ ./setup.sh
```

## Manual Symbolic linking

OSX:

```
$ ln /Users/username/dotfiles-local/.vimrc.local ~/.vimrc.local
```

