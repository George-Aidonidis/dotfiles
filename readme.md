# dotfiles :computer:
<!-- TOC depthFrom:2 -->

- [Programs whose configs can be found here](#programs-whose-configs-can-be-found-here)
- [How to setup](#how-to-setup)
- [Other readmes](#other-readmes)

<!-- /TOC -->

![screenshot](https://i.imgur.com/q9PPaZZ.jpg)

Personal dotfiles that I use for my thinpad E570 (running two screens).

## Programs whose configs can be found here

+ i3 (i3-gaps)
+ NeoVim
+ zsh
+ tmux
+ ranger
+ dunst (for notifications)
+ redshift
+ polybar
+ redshift (to adjust color temperature of the screens)
+ compton (For transparency and to stop screen tearing)
+ And many, many little scripts I use

## How to setup

Stow is used to help settings things up (instead of manually creating symlinks etc...). In that way you can have a `dotfiles` folder in your `$HOME` folder instead of hacking around on version controlling (like adding root folder and ignoring everything non relevant).

----
Naive script that installs :poop: (please, read its contents before running since it's going to overwrite things)

```sh
$ chmod +x install.sh
$ ./install.sh
```

## Other readmes

* [Scripts](/scripts/readme.md)
* [i3](/i3/.config/i3/readme.md)
