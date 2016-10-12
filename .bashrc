# source /etc/bashrc

# bash completion for mac through homebrew
case "$OSTYPE" in
    *darwin*)
        if [ -f $(brew --prefix)/etc/bash_completion ]; then
            . $(brew --prefix)/etc/bash_completion
        fi
        ;;
esac

# Jae's bash configuration
source ~/.jae-config/.bashrc-jae

# force mv, rm and cp to ask user before clobbering file
alias mv="mv -i $*"
# alias rm="rm -i $*"
alias cp="cp -i $*"

# rm -rf
alias rmrf='rm -rf'

# Kill Cancer
alias ds='sudo find / -name ".DS_Store" -depth -exec rm {} \;'

# brew
alias brewall='brew update && brew upgrade && brew cleanup -s && brew prune && brew doctor'

# npm
alias npmall='rm -rf node_modules; npm cache clean; npm i; npm ddp'

# minecraft
alias minecraft='java -Xmx1024M -Xms1024M -jar minecraft_server.1.10.2.jar nogui'

# git
alias gfpush='git add --all && git commit --amend --no-edit && git push --force'
