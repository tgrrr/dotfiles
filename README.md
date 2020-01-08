# Phil's Dotfiles WIP

This repository serves as my way to help me setup and maintain my Mac. It takes the effort out of installing everything manually. Everything needed to install my preferred setup of macOS is detailed in this readme. Feel free to explore, learn and copy parts for your own dotfiles. Enjoy! :smile:

### Before you re-install

First, go through the checklist below to make sure you didn't forget anything before you wipe your hard drive.

- Did you commit and push any changes/branches to your **git repositories**?
  - Check all branches
- Did you remember to save all important **documents** from non-iCloud directories?
- Did you save all of your work from apps which aren't synced through iCloud?
- Did you remember to export important data from your **local database**?
- Did you update [mackup](https://github.com/lra/mackup) to the latest version and ran `mackup backup`?
  - **NOTE: I've synced to iCloud**

### Install macOS cleanly

After going to our checklist above and making sure you backed everything up, we're going to cleanly install macOS with the latest release. Follow [this article](https://www.imore.com/how-do-clean-install-macos) to cleanly install the latest macOS version.

### Setting up your Mac

If you did all of the above you may now follow these install instructions to setup a new Mac.

1. Update macOS to the latest version with the App Store
2. Install Xcode from the App Store, open it and accept the license agreement
3. Install macOS Command Line Tools by running `xcode-select --install`
4. Copy your public and private SSH keys to `~/.ssh` and make sure they're set to `600`
5. Clone this repo to `~/.dotfiles`
6. Install [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh#getting-started)
7. Update the name of your computer in `.macos`. Mine's currently called `ethel`.
8. Run `./install.sh` OR `sh ./install.sh` to start the installation
9. After mackup is synced with your cloud storage, restore preferences by running `mackup restore`
10. Restart your computer to finalize the process

Your Mac is now ready to use!

> Note: you can use a different location than `~/.dotfiles` if you want. Just make sure you also update the reference in the [`.zshrc`](./.zshrc) file.

### Custom steps

- Apps allowed in Users & Groups. Eg. Spectacle
- VS Code extensions with `syncing`
- Setup Arc Backup

---

## A Fresh macOS Setup

These instructions are for when you've already set up your dotfiles. If you want to get started with your own dotfiles you can [find instructions below](#your-own-dotfiles).

- [How to create your own dotfiles + credits](./YOUR-OWN-DOTFILE.md)
- Thanks to driesvints, the [original creator of this dotfile](https://github.com/driesvints/dotfiles)

📖 Read the blog post: https://driesvints.com/blog/getting-started-with-dotfiles  
📹 Watch the screencast on Laracasts: https://laracasts.com/series/guest-spotlight/episodes/1
