# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# for color
export CLICOLOR=1
# \h:\W \u\$
export PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%(5~|%-1~/.../%3~|%4~) %{$reset_color%}%% "
#alias
alias ll='ls -ahl'
alias mv='mv -i'
alias grep='grep --color=always'
alias c='/Users/nback/shell/c.sh'

#MAVEN
export MAVEN_HOME=/usr/local/apache-maven-3.8.1

#mysql
export MYSQL_HOME=/usr/local/mysql

export PATH=$PATH:$MYSQL_HOME/bin
export PATH=$PATH:$MYSQL_HOME/support-files
export PATH=$PATH:$MAVEN_HOME/bin

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
