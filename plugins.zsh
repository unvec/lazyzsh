mkdir -p $LAZY_ZSH/plugins

if [[ ! -d $LAZY_ZSH/plugins/autosuggestions ]]; then
  git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions $LAZY_ZSH/plugins/autosuggestions
fi
if [[ ! -d $LAZY_ZSH/plugins/syntax-highlighting ]]; then
  git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting $LAZY_ZSH/plugins/syntax-highlighting
fi
if [[ ! -d $LAZY_ZSH/plugins/powerlevel10k ]]; then
  git clone --depth 1 https://github.com/romkatv/powerlevel10k $LAZY_ZSH/plugins/powerlevel10k
fi

exit
