# dotfiles
Dotfiles and profiles I'm using:
* .zshrc - Config for https://github.com/robbyrussell/oh-my-zsh
* iterm2_config.json - Config for https://www.iterm2.com

## Installation
#### RVM with stable Ruby
```bash
\curl -sSL https://get.rvm.io | bash -s stable --rails
```

#### Homebrew
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

#### Sublime
```bash
brew cask install sublime-text
```

#### iterm2
```bash
brew cask install iterm2
```

#### Clone dotfiles 
```bash
cd
git clone https://github.com/ShurupuS/dotfiles .dotfiles
ln -s ~/.dotfiles/.zshrc ~/.zshrc
```
