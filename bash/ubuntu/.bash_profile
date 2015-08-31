val "$(rbenv init -)"

# Default alias
# alias for ll / ls
alias ll="ls -lsa"
alias l.='ls -d .* --color=auto'

# Shows the disc usage of all folders and files in the current location
# ordered by their file size ascending
alias orderdu="du -h | sort -h"

## get rid of command not found ##
alias cd..='cd ..'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# handy short cuts #
alias h='history'

alias c='clear'
