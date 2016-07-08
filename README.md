# Mac setup with Ansible

This repo contains Ansible playbooks that install and configure software I use on daily basis.

One-liner to rule them all ! ! !

```bash
$ curl -L https://raw.githubusercontent.com/genjusz/mac-setup/master/bootstrap.sh | bash
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

## Tips & Tricks

Reinstall all `brew cask apps`

```bash
$ brew cask install --force $(brew cask list)
```

## TODO

- [x] php config
- [x] apache config
- [x] nvm config (`brew info nvm`)
- [x] hologram executable
- [ ] meaningful readme ;)
