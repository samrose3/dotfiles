### `~/.config`

My setup for zsh, git, and applications.

Copy this into `~/.config`. If it's not a brand new machine you probably already have some of the files/folders. You can replace them or merge them together.

```sh
git clone git@github.com:samrose3/dotfiles.git ~/.config
```

#### Install script

Before running the install script, copy the `gitconfig.user.sample` as `gitconfig.user`, and fill in with your own information.

```sh
# Create your own gitconfig.user
cp ./git/gitconfig.user.sample ./git/gitconfig.user

# Update with your info
vim ./git/gitconfig.user
```

**At your own risk**: Review `install.sh`, edit to your requirements, and execute it. It will install applications via Homebrew, symlink git & zsh dotfiles to your home directory, and install Oh My Zsh.

```sh
./install.sh
```
