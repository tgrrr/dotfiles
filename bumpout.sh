# Homebrew
brew list --formula > 'packages-list/brew.txt'

# Docker FIXME:
# docker ps -a > 'packages-list/docker.txt'

# Node global 
npm list -g --depth=0 > 'packages-list/npm-global.txt'

# Yarn Global 
yarn global list > 'packages-list/yarn-global.txt'

# VS Code packages 

alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"

code --list-extensions | sed -e 's/^/code --install-extension /' > 'packages-list/vscode-extensions.txt'

# Atom packages 
apm ls > 'packages-list/atom.txt'

# VSCode settings - MackUp    
# Atom Settings - MackUp

# Mac Applications

ls -l /Applications/ > 'packages-list/applications.txt'