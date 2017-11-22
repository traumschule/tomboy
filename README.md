[Ansible](https://ansible.com) [Playbook](https://docs.ansible.com/ansible/latest/playbooks.html) to build [David Bannon](mailto:dbannon@internode.on.net)'s [tomboy-ng](https://github.com/tomboy-notes/tomboy-ng) rewrite of [Tomboy NG](https://wiki.gnome.org/Apps/Tomboy) in Pascal.

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

# Run parts

In case you want to only run some parts:

`ansible-playbook tomboy.yml --list-tags`

## Install dependencies

`ansible-playbook tomboy.yml --tags deps`

## Download libraries 

`ansible-playbook tomboy.yml --tags libs`

## Try to build

`ansible-playbook tomboy.yml --tags build`
