# Aliases (personal aliases set here override default oh-my-zsh aliases)

alias nautilus='GTK_THEME=oomox-sage nautilus'
alias thunar='GTK_THEME=oomox-sage thunar'
alias Thunar='GTK_THEME=oomox-sage thunar'

alias dl='cd ~/downloads'
alias dots='cd ~/github/dotfiles'
alias uni='cd ~/uni/year2/sem1'

alias irc='irc -n kingk22 -s chat.freenode.net'
source .pw

alias 6cord='TERM=xterm-256color 6cord'
alias clock='tty-clock -scD -C 5'
alias e='fzf | xargs -r $EDITOR'
alias el='exal'
alias exa='exa --group-directories-first'
alias exal='exa -lFh --group-directories-first'
alias gif='giph -s -l -c 1,1,1,0.3 -b 5 -p -5 ~/recordings/recording-$(date +'%Y-%m-%dT%H:%M:%S').gif'
alias n='nvim'
alias nf='neofetch --colors 5 7 7 5 5 7 --underline off --ascii_colors 5 5 5 5 5 5 --w3m --source ~/pictures/lock.png'
alias q='exit'
alias r='ranger'
alias za='zathura'

alias add='git add -A'
alias commit='git commit'
alias pull='git pull'
alias push='git push'
alias pullall="find . -maxdepth 1 -type d -exec sh -c '(cd {} && git pull)' ';'"
sendit() {
    git add -A
    git commit -m "$1"
    git push
}

c() {
    if [ $# -eq 0 ] ; then
        clear
    elif [ -d "$1" ] ; then
        cd "$1"
    elif [ -f "$1" ] ; then
        cat "$1"
    fi
}

# default editor
export EDITOR="nvim"

# path
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# path to your omz install
export ZSH=/home/jibreil/.oh-my-zsh

# theme
ZSH_THEME="jibreil"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

#BASE16_SHELL=$HOME/.config/base16-shell/
#[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
