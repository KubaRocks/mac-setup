# Mac setup with Ansible

[![Build Status](https://travis-ci.org/genjusz/mac-setup.svg?branch=master)](https://travis-ci.org/genjusz/mac-setup)

This repo contains Ansible playbooks that install and configure software I use on daily basis.

One-liner to rule them all ! ! !

```bash
$ curl -L https://raw.githubusercontent.com/genjusz/mac-setup/master/bootstrap.sh | bash
```

## TODO

- [x] php config
- [x] apache config
- [x] hologram executable
- [ ] meaningful readme ;)
- [ ] nvm config (`brew info nvm`)
- [x] ensure services are running
- [ ] improve merging `vars` from `dev.yml` and `personal.yml`
- [ ] dotfiles
- [ ] `FK_StandardViewSettings:IconViewSettings` errors

```
Set: Entry, ":FK_StandardViewSettings:IconViewSettings:showItemInfo", Does Not Exist
Set: Entry, ":FK_StandardViewSettings:IconViewSettings:arrangeBy", Does Not Exist
Set: Entry, ":FK_StandardViewSettings:IconViewSettings:gridSpacing", Does Not Exist
Set: Entry, ":FK_StandardViewSettings:IconViewSettings:iconSize", Does Not Exist
```

## Apps available via App Store

* Flexiglass
* FruitJuice
* MemoryClean
* Keynote
* Numbers
* Pages
* TweetBot
* Blackmagic Disk Speed Test
* Pocket
* Coffitivity

## Other apps

* PS4 Remote Play

## PHP version switcher

This setup installs 4 versions of php: 5.5, 5.6, 7.0 and 7.1
To switch between versions run:

```bash
# php 5.5
$ sphp 55
# php 5.6
$ sphp 56
# php 7.0
$ sphp 70
# php 7.1
$ sphp 71
```

Running example:

[![PHP version switcher](http://drop.abneg.at/Screen-Recording-2016-12-28-13-01-50.gif)](http://drop.abneg.at/Screen-Recording-2016-12-28-13-01-50.gif)

## Tips & Tricks

Reinstall all `brew cask apps`

```bash
$ brew cask install --force $(brew cask list)
```
