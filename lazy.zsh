#!/bin/zsh

ZSH_PLUGIN_syntax_highlighting=ON
ZSH_PLUGIN_autosuggestions=ON
ZSH_PLUGIN_powerlevel10k=ON


export LAZY_ZSH=$HOME/.lazyzsh

if [[ ! -d $LAZY_ZSH/plugins ]]; then
  . $LAZY_ZSH/plugins.zsh
fi

if [[ $ZSH_PLUGIN_syntax_highlighting == ON ]]; then
  source $LAZY_ZSH/plugins/syntax-highlighting/zsh-syntax-highlighting.zsh
fi
if [[ $ZSH_PLUGIN_autosuggestions == ON ]]; then
  source $LAZY_ZSH/plugins/autosuggestions/zsh-autosuggestions.zsh
fi
if [[ $ZSH_PLUGIN_powerlevel10k == ON ]]; then
    source $LAZY_ZSH/plugins/powerlevel10k/powerlevel10k.zsh-theme
    source $LAZY_ZSH/p10k_theme.zsh
fi

# ~/.zsh_history
setopt histignorealldups sharehistory
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=$HOME/.zsh_history

if [ -f ~/.profile ]; then
    source ~/.profile
fi

if [ -f $LAZY_ZSH/alias.zsh ]; then
    source $LAZY_ZSH/alias.zsh
fi

function setproxy() {
    local port=${1:-7890} # 更改端口为您的代理软件监听端口, 默认7890
    local host=${2:-127.0.0.1} # 更改IP为您的代理软件监听IP, 默认127.0.0.1
    export http_proxy=http://$host:$port && export https_proxy=$http_proxy
    export no_proxy=localhost,127.0.0.1,::1,.localdomain
    echo "- You've set the proxy success! Info: $http_proxy"
}
function unsetproxy() {
    unset http_proxy && unset https_proxy && unset no_proxy
    echo "- You've unset the proxy success!"
}