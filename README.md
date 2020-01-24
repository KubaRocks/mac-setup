# Mac setup with Ansible

[![Build Status](https://travis-ci.org/genjusz/mac-setup.svg?branch=master)](https://travis-ci.org/genjusz/mac-setup)

```bash
$ curl -L https://raw.githubusercontent.com/genjusz/mac-setup/master/bootstrap.sh | bash
```

This repo contains Ansible playbook that install and configure software I use on daily basis.
Paste above line into `Terminal.app` and enjoy !

## TODO

- [x] php config
- [x] ensure services are running
- [x] fix `FK_StandardViewSettings:IconViewSettings` errors in `macos-setup.sh`
- [x] meaningful readme ;)
- [x] split playbooks into couple of files so `travis-ci` can build it ...
- [ ] seperate playbooks for cask apps and services
- [ ] update and add links to apps in README

## Apps available via App Store

- Keynote
- Numbers
- Pages
- Blackmagic Disk Speed Test

## PHP version switcher

This setup installs 4 versions of php: 5.6, 7.2, 7.3 and 7.4
To switch between versions run:

```bash
$ sphp 5.6
$ sphp 7.2
$ sphp 7.3
$ sphp 7.4
```

Running example:

[![PHP version switcher](docs/images/php-switcher-in-action.gif)](docs/images/php-switcher-in-action.gif)

## Tips & Tricks

Reinstall all `brew cask apps`

```bash
$ brew cask install --force $(brew cask list)
```
