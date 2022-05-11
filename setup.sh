#!/bin/sh

# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# link config files
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc

source ~/.zshrc

# install oh my zsh plugins
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_CUSTOM/plugins/you-should-use
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/buzuloiu/zsh-github-folders ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-github-folders
git clone https://github.com/TamCore/autoupdate-oh-my-zsh-plugins $ZSH_CUSTOM/plugins/autoupdate



# install comic sans font
mkdir -p ~/.fonts
curl -SsfLo ~/.fonts/Comic-Shanns.ttf 'https://github.com/shannpersand/comic-shanns/blob/b98eee0894464de98754d6c89ffdfb8c29ce9e45/v2/comic%20shanns%202.ttf'
fc-cache -f -v
