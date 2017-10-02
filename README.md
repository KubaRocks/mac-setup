# Mac setup with Ansible

[![Build Status](https://travis-ci.org/genjusz/mac-setup.svg?branch=master)](https://travis-ci.org/genjusz/mac-setup)

```bash
$ curl -L https://raw.githubusercontent.com/genjusz/mac-setup/master/bootstrap.sh | bash
```
This repo contains Ansible playbook that install and configure software I use on daily basis.
Paste above line into `Terminal.app` and enjoy !

## TODO

- [x] php config
- [x] apache config
- [x] hologram executable
- [x] ensure services are running
- [x] fix `FK_StandardViewSettings:IconViewSettings` errors in `macos-setup.sh`
- [ ] meaningful readme ;)
- [ ] split playbooks into couple of files so `travis-ci` can build it ...
- [ ] seperate playbooks for cask apps and services
- [ ] update and add links to apps in README

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

[![PHP version switcher](docs/images/php-switcher-in-action.gif)](docs/images/php-switcher-in-action.gif)

## Tips & Tricks

Reinstall all `brew cask apps`

```bash
$ brew cask install --force $(brew cask list)
```
