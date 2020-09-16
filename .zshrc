
# Paths:
# export PATH=$HOME/bin:/usr/local/bin:$PATH
PATH="/usr/local/bin:$(getconf PATH)"
export PATH=${PATH}:/usr/local/sbin:/usr/local/bin/:/usr/local/opt/tcl-tk/bin:$PATH:/usr/local/lib/node_modules/npm/bin:
# export PATH="/usr/local/sbin:$PATH"
# Add paths for Android, Tex, Anaconda

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# DOTFILES
# Path to your dotfiles.
export DOTFILES=$HOME/.dotfiles

# PYTHON:
# pyenv:
eval "$(pyenv init -)"
PYTHONPATH=/Users/phil/.pyenv/shims/python:$PYTHONPATH

# NVM (NeVerMind)
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# RUBY
if which rbenv > /dev/null; 
    then eval "$(rbenv init -)"; 
fi

# export JAVA_HOME="$(/usr/libexec/java_home)"
# export ANDROID_HOME=/Users/phil/Library/Android/sdk
# To use latex or android studio:
# $ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:
# $PATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin:
# export MANPATH="/usr/local/man:$MANPATH"

# Enable completions
autoload -Uz compinit && compinit
# _comp_options+=(globdots)
setopt globdots

# Minimal - Theme Settings
export MNML_INSERT_CHAR="$"
export MNML_PROMPT=(mnml_git mnml_keymap)
export MNML_RPROMPT=('mnml_cwd 20')

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="minimal"
ZSH_THEME="robbyrussell"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$DOTFILES

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(ansible dash git history osx vscode yarn z)
# disabled: aws git-extras github wp-cli

source $ZSH/oh-my-zsh.sh

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# User configuration

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases

# ALIASES

alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
alias docs='code ~/code/apps/dotfiles/vscode\ workspaces/docs.code-workspace'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias gitlog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gitlogdetailed="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222"
# alias cpdir='pwd|pbcopy'
# alias rstudio='open -a Rstudio'

aw() {
    cd /Applications/ActivityWatch.app/Contents/MacOS/
    ./aw-qt
}

# FIXME: move to own script
# eg yarp je starts Japan Explorer
# yarp() {
#     if [ "$1" != "" ] # or better, if [ -n "$1" ]
#         then

#             if [ "$1" = "je" ]
#                 then
#                 cd ~/code/clients/japanexplorer/japanexplorer--typescript;
#             fi

#         code .;
#         stree;
#         hcl start @"$1" "$2";
#         # chrome
#         # /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222
#         yarn start;
#     else
#         code .;
#         stree;
#         hcl start @prog;
#         yarn start;
#     fi
# }

# h() {
#     if [ "$1" != "" ] # or better, if [ -n "$1" ]
#     then
#         hcl start @prog "$1";
#     else
#         hcl start @prog;
#     fi
# }

# rc() {
#     if [ "$1" != "" ] # or better, if [ -n "$1" ]
#     then
#         hygen component new --name "$1";
#     else
#         echo "component name required"
#     fi
# }

# trashit() {
#     if [ "$1" != "" ] # or better, if [ -n "$1" ]
#     then
#             find . -name "$1" -type d -prune -exec trash {} + ;
#     else
#         echo "trashing node_modules"
#         find . -name node_modules -type d -prune -exec trash {} + ;
#     fi
# }

# kudos: https://stackoverflow.com/questions/1057564/pretty-git-branch-graphs

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

eval "$(direnv hook zsh)"
