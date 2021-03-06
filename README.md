# Phil's Dotfiles WIP

This repository serves as my way to help me setup and maintain my Mac. It takes the effort out of installing everything manually. Everything needed to install my preferred setup of macOS is detailed in this readme. Feel free to explore, learn and copy parts for your own dotfiles. Enjoy! :smile:

## Before you re-install

First, go through the checklist below to make sure you didn't forget anything before you wipe your hard drive.

- [ ] Did you commit and push any changes/branches to your **git repositories**?
  - [ ] __Check all branches__
  - [ ] Check any php stuff in www folders
- [ ] Recursively remove `node_modules` folders to free up space (if making a copy of files separate to git repo's)

- [ ] Alfred settings (not in MackUp)  
- [ ] Radio Silence (screenshot)
- [ ] Oh my zsh config
- [ ] one-tab export tabs
- [ ] Check 2fa
- [ ] upate zsh file

- [ ] Generate a list of all of your existing applications and packages:

```zsh
sh ./bumpout.sh
```

- [ ] Did you remember to save all important **documents** from non-iCloud directories?
- [ ] Did you save all of your work from **apps which aren't synced through iCloud**?
- [ ] Did you remember to export important data from your **local database**?
- [ ] Did you update [mackup](https://github.com/lra/mackup) to the latest version and ran `mackup backup`?
<!-- - **NOTE: I've synced mackup to iCloud** -->

## Install macOS cleanly

After going to our checklist above and making sure you backed everything up, we're going to cleanly install macOS with the latest release. Follow [this article](https://www.imore.com/how-do-clean-install-macos) to cleanly install the latest macOS version.

## Setting up your Mac

If you did all of the above you may now follow these install instructions to setup a new Mac.

1. Update macOS to the latest version with the App Store
2. Install Xcode from the App Store, open it and accept the license agreement
3. Install macOS Command Line Tools by running `xcode-select --install`
4. Copy your public and private SSH keys to `~/.ssh` and make sure they're set to `600`
  TODO: add ssh commands here
5. Clone this repo `git clone git@github.com:tgrrr/dotfiles.git ~/.dotfiles`
6. Install [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh#getting-started)
7. Update the name of your computer in `.macos`. Mine's currently called `ethel`.
8. Run `./install.sh` OR `sh ./install.sh` to start the installation
9. After mackup is synced with your cloud storage, restore preferences by running `mackup restore`

10. Restart your computer to finalize the process. Your Mac is now ready to use!

> Note: you can use a different location than `~/.dotfiles` if you want. Just make sure you also update the reference in the [`.zshrc`](./.zshrc) file.

> Note: I like to keep my `~/.zshrc` file in the dotfile. Here's how to symlink it:

```zsh
ln -s  ~/dotfiles/.zshrc ~/.zshrc
```

## Steps after running dotfile

- Google drive backup and sync setup
- VS Code extensions with `syncing`
- Setup Arc Backup
- disable kite telemetry @created(20-02-03 19:06)
- manual step: store api keys with LastPass #2   
- No brew formula/mac app:[kite](https://kite.com/download/)  @created(20-02-03 19:03)

- [turn off vscode telemetry](https://www.reddit.com/r/privacy/comments/80d8wu/just_realised_that_visual_studio_code_sends/)

  ```bash
  "telemetry.enableCrashReporter": false,
  "telemetry.enableTelemetry": false,
  "code-runner.enableAppInsights": false,
  "update.channel": "none",
  "extensions.autoUpdate": false,
  "extensions.ignoreRecommendations": true,
  ```

  ```bash
  block dns:
  0.0.0.0 dc.services.visualstudio.com
  0.0.0.0 marketplace.visualstudio.com
  0.0.0.0 dc.trafficmanager.net
  0.0.0.0 vortex.data.microsoft.com
  0.0.0.0 weu-breeziest-in.cloudapp.net
  ```

- docker ID login
- fix notification sound in system preferences
  - slack - also in app
- Check Apps allowed in Users & Groups. Eg. Spectacle

## Regular Maintainence

- [ ] Free up space with DaisyDisk when backing up

- Remove node_modules folders from inactive projects

```zsh
cd ~/code
find . -type d -name node_modules -exec rmdir {} \;
```

- [ ] Run the update script

## Bump out: Export Current Installed Apps

For: Mac Apps, Docker, Node global, Yarn Global, VS Code packages, Atom packages

```zsh
sh ./bumpout.sh
```

---

- [How to create your own dotfiles + credits](./YOUR-OWN-DOTFILE.md)
- Thanks to driesvints, the [original creator of this dotfile](https://github.com/driesvints/dotfiles)

