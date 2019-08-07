# dotfiles
Dotfiles and profiles I'm using:
* .zshrc - Config for https://github.com/robbyrussell/oh-my-zsh
* iterm2_config.json - Config for https://www.iterm2.com

## Installation

#### Homebrew
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

#### RVM with stable Ruby
```bash
\curl -sSL https://get.rvm.io | bash -s stable --rails
```

#### Oh-mmy-zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

#### Sublime
```bash
brew cask install sublime-text
```

#### iterm2
```bash
brew cask install iterm2
```

#### thefuck
```bash
brew install thefuck
```

#### Fonts
```bash
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
```

#### Clone dotfiles 
```bash
cd
git clone https://github.com/ShurupuS/dotfiles .dotfiles
[ -f ~/.zshrc ] && mv ~/.zshrc ~/.zshrc_old
ln -s ~/.dotfiles/.zshrc ~/.zshrc
source ~/.zshrc
```
