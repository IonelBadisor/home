#ls colors
alias ls='ls --color=auto'
alias dir='dir --color'
#load profile
source ~/.bash_profile

# gitprompt configuration

# Set config variables first
GIT_PROMPT_ONLY_IN_REPO=1

# as last entry source the gitprompt script
source ~/.bash-git-prompt/gitprompt.sh
