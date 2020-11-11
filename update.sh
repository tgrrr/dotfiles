#!/bin/bash

brew update
brew upgrade
brew cleanup -s
brew cask cleanup
#now diagnotic
brew doctor
brew missing
apm upgrade -c false
/opt/bin/updateCCTF.sh && terminal-notifier -message “git pull done :-)” -title “CCTF up to date”

echo “you can hit mas upgrade to upgrade theses apps from the app store:”
mas outdated
echo “install with: mas upgrade”
npm update -g
echo “did you think to launch gem update “
echo “and pip ? pip freeze — local | grep -v ‘^\-e’ | cut -d = -f 1 | xargs pip install -U “
# TODO: OR: pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U # from https://stackoverflow.com/a/3452888
# credit where credit's due: https://medium.com/@waxzce/keeping-macos-clean-this-is-my-osx-brew-update-cli-command-6c8f12dc1731

yarn autoclean
mackup backup
# npm cache clean
# npm cache verify
# Run mackup
