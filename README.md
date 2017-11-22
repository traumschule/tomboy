[Ansible](https://ansible.com) [Playbook](https://docs.ansible.com/ansible/latest/playbooks.html) to build [David Bannon](mailto:dbannon@internode.on.net)'s [tomboy-ng](https://github.com/tomboy-notes/tomboy-ng) rewrite of [Tomboy NG]() in Pascal.

[![Build Status](https://travis-ci.org/traumschule/tomboy.svg?branch=master)](https://travis-ci.org/traumschule/tomboy)

# Dependencies

* python-pip
* ansible (install with `pip install ansible`)

# Build Tomboy NG/Pascal

Install dependencies and build:
```
./bin/configure.sh
```
This is equivalent to
```
ansible-playbook tomboy.yml
```

Rebuild:
```
./bin/make.sh
```
or
```
ansible-playbook tomboy.yml --tags build
```

List what it will do:
```
ansible-playbook tomboy.yml --list-tasks
```

The playbook should run multiple systems (so far it was tested on Debian derivates only). Please open an [issue on github](https://github.com/traumschule/tomboy/issues) if it fails on your OS, or write to the [mailinglist](http://lists.beatniksoftware.com/listinfo.cgi/tomboy-list-beatniksoftware.com)

## with RichMemo

`ansible-playbook tomboy.yml -e with_memo=true`

# Run parts

In case you want to only run some parts:

`ansible-playbook tomboy.yml --list-tags`

## Install dependencies

`ansible-playbook tomboy.yml --tags deps`

## Download libraries 

`ansible-playbook tomboy.yml --tags libs`

## Download / extract source

`ansible-playbook tomboy.yml --tags source`

## Try to build

`ansible-playbook tomboy.yml --tags build`

# Tomboy links
https://github.com/traumschule/tomboy/issues/1
http://wiki.freepascal.org/Lazarus_Tutorial

https://github.com/tomboy-notes/tomboy/issues
https://github.com/tomboy-notes/tomboy/issues/66 (#69)
https://github.com/tomboy-notes/tomboy/wiki (#39)

https://wiki.gnome.org/Apps/Tomboy/ReleaseChecklist
http://flatpak.org/hello-world.html
https://en.wikipedia.org/wiki/Snappy_(package_manager)

https://en.wikipedia.org/wiki/Comparison_of_text_editors
https://en.wikipedia.org/wiki/Comparison_of_notetaking_software
cross os
https://en.wikipedia.org/wiki/Evernote
https://en.wikipedia.org/wiki/Memonic
https://en.wikipedia.org/wiki/MyNotex
https://en.wikipedia.org/wiki/Qiqqa
https://en.wikipedia.org/wiki/Simplenote
https://en.wikipedia.org/wiki/TiddlyWiki
https://en.wikipedia.org/wiki/Gnote

