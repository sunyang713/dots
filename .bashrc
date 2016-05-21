# source /etc/skel/.bashrc
source ~/.jae-config/.bashrc-jae

# clic settings
umask 022
ulimit -u 256


# added by travis gem
[ -f /Users/Jonathan/.travis/travis.sh ] && source /Users/Jonathan/.travis/travis.sh

# Kill Cancer
alias ds='sudo find / -name ".DS_Store" -depth -exec rm {} \;'

# brew
alias brewall='brew update && brew upgrade && brew cleanup -s && brew prune && brew doctor'

