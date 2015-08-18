# My Dotfiles Locals

These are configuration files to extend [thoughtbot's
dotfiles](https://github.com/thoughtbot/dotfiles/blob/master/tmux.conf). Since
thoughtbot's dotfiles are often updated and most of the configuration files
include a `*.local` file, I only customize the included `*.local` files to prevent
having to maintain a forked version of the thoughtbot dotfiles.

## Installation

Clone this repository (I put mine in my `/User/username/` directory) and
symbolic link from the root directory.

#### Symbolic linking

OSX:

```
$ ln /Users/username/dotfiles_local/.vimrc.local ~/.vimrc.local
```

## Files

* [.tmux.conf.local](https://github.com/jasonramirez/dotfiles_local/blob/master/.tmux.conf.local)
* [.vimrc.bundles.local](https://github.com/jasonramirez/dotfiles_local/blob/master/.vimrc.bundles.local)
* [.vimrc.local](https://github.com/jasonramirez/dotfiles_local/blob/master/.vimrc.local)
* [.zshrc.local](https://github.com/jasonramirez/dotfiles_local/blob/master/.zshrc.local)
